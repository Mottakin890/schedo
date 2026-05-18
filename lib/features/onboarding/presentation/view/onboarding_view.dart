import 'package:api_prep_dio/core/dimentions/spacings.dart';
import 'package:api_prep_dio/core/resourses/app_assets.dart';
import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/onboard_app_bar.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/onboard_content.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/onboard_nav_controls.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    context.read<OnboardingBloc>().add(OnboardingPageChanged(page));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listenWhen: (previous, current) =>
          previous.currentPage != current.currentPage,
      listener: (context, state) {
        if (_pageController.hasClients &&
            _pageController.page?.round() != state.currentPage) {
          _pageController.animateToPage(
            state.currentPage,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOut,
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(child: OnboardAppBar()),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  children: const [
                    OnboardContent(
                      image: AppAssets.onboard_1st,
                      contentText:
                          'Transform your productivity with AI-driven task management.',
                    ),
                    OnboardContent(
                      image: AppAssets.onboard_2nd,
                      contentText:
                          'Achieve more together with efficient team task coordination.',
                    ),
                    OnboardContent(
                      image: AppAssets.onboard_3rd,
                      contentText:
                          'All-in-one: tasks, scheduling, notes, and wellness in one place.',
                    ),
                  ],
                ),
              ),
              Spacing.vertical(24),
              
              Spacing.vertical(20),
              const OnboardNavControls(),
              Spacing.vertical(30),
            ],
          ),
        ),
      ),
    );
  }
}
