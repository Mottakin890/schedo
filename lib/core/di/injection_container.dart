import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;


Future<void> initDependencies() async {
  _registerOnboarding();
}


void _registerOnboarding() {
  sl.registerFactory<OnboardingBloc>(() => OnboardingBloc());
}
