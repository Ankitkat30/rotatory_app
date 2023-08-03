
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rotatory_app/features/login/data/model/user_model.dart';
import 'package:rotatory_app/features/login/data/repository/login_reposiroty.dart';
import 'package:rotatory_app/features/login/logic/services/preference.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super( UserInitialState() ) {
    _initialize();
  }
  final UserRepository _userRepository = UserRepository();

  void _initialize() async {
    final userDetails = await Preferences.fetchUserDetails();
    String? phone = userDetails["phone"];
    String? password = userDetails["password"];

    if(phone == null || password == null) {
      emit( UserLoggedOutState() );
    }
    else {
      signIn(phone: phone, password: password);
    }
  }

  void _emitLoggedInState({
    required UserModel userModel,
    required String phone,
    required String password
  }) async {
    await Preferences.saveUserDetails(phone, password);
    emit( UserLoggedInState(userModel) );
  }

  void signIn({
    required String phone,
    required String password
  }) async {
    emit( UserLoadingState() );
    try {
      UserModel userModel = await _userRepository.signIn( password: password, phone: phone);
      _emitLoggedInState(userModel: userModel, phone: phone, password: password);
    }
    catch(ex) {
      emit( UserErrorState(ex.toString()) );
    }
  }

  void signOut() async {
    await Preferences.clear();
    emit( UserLoggedOutState() );
  }
}