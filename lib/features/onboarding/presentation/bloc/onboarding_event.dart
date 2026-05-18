part of 'onboarding_bloc.dart';

sealed class OnboardingEvent extends Equatable {
  const OnboardingEvent();
}

final class OnboardingPageChanged extends OnboardingEvent {
  final int page;

  const OnboardingPageChanged(this.page);

  @override
  List<Object> get props => [page];
}

final class OnboardingNextPageRequested extends OnboardingEvent {
  const OnboardingNextPageRequested();

  @override
  List<Object> get props => [];
}


