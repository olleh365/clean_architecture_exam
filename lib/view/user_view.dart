// 실제로 화면에 표시하는 UI

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/user_view_model.dart';
import '../usecase/get_user_info_use_case.dart';
import '../repository/user_repository.dart';

class UserView extends StatelessWidget {

  final UserViewModel userViewModel = Get.put(
    UserViewModel(GetUserInfoUseCase(UserRepositoryImpl())),
  );

  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Info')),
      body: Center(
        child: Obx(() => Text('User Name: ${userViewModel.userName.value}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: userViewModel.loadUser,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
