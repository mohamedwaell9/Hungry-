import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/features/auth/cubit/auth_state.dart';
import 'package:hungry/features/auth/models/auth_params.dart';
import 'package:hungry/features/auth/repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());


  register() async {
    emit(AuthLoadingState());
    var res = await AuthRepo.register(AuthParams());
    if (res != null){
      emit(AuthsuccessState());
    }else{
      emit(AuthErrorState());
    }
  }
}