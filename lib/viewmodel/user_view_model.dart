// ViewModel, UI와 UseCase를 연결

import 'package:get/get.dart';
import '../usecase/get_user_info_use_case.dart';

class UserViewModel extends GetxController {
  final GetUserInfoUseCase getUserInfoUseCase;

  var userName = "".obs;

  UserViewModel(this.getUserInfoUseCase);

  void loadUser() {
    final user = getUserInfoUseCase.execute();
    userName.value = user.name;
  }
}
