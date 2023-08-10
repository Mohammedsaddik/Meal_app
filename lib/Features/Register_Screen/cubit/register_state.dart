part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  String uId;
  RegisterSuccessState(this.uId);
}

class RegisterErrorState extends RegisterState {
  String errorMessage;
  RegisterErrorState({required this.errorMessage});
}


class CreateUserSuccessState extends RegisterState {}

class CreateUserErrorState extends RegisterState {
  String errorMessage;
  CreateUserErrorState({required this.errorMessage});
}