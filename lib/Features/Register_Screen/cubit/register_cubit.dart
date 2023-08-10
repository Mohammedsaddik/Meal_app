import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meal_app/Features/Register_Screen/model/user_data_model.dart';
import 'package:meta/meta.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  void userRegister({
    required String name,
    required String email,
    required String phone,
    required String address,
    required String password,
    required String confermpassword,
  }) {
    emit(RegisterLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      UserCreate(
        name: name,
        email: email,
        phone: phone,
        address: address,
        uId: value.user!.uid
      );
      print(value.user!.email);
      emit(RegisterSuccessState(value.user!.uid));
    }).catchError((error) {
      emit(RegisterErrorState(errorMessage: 'some thing error'));
    });
  }

  void UserCreate({
    required String name,
    required String email,
    required String phone,
    required String address,
    required String uId,
  }) {
    UserModel model = UserModel(
      name: name,
      email: email,
      phone: phone,
      address: address,
      uId: uId,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
          emit(CreateUserSuccessState());
    })
        .catchError((e) {
          emit(CreateUserErrorState(errorMessage: e.toString()));
    });
  }
}
