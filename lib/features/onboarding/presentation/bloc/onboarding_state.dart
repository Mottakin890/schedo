part of 'onboarding_bloc.dart';

final class OnboardingState extends Equatable {
  final int currentPage;

  const OnboardingState({this.currentPage = 0});

  static const int totalPages = 3;
  bool get isLastPage => currentPage == totalPages - 1;

  OnboardingState copyWith({int? currentPage}) {
    return OnboardingState(currentPage: currentPage ?? this.currentPage);
  }

  @override
  List<Object> get props => [currentPage];
}
