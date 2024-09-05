// 사용자 데이터를 제공하는 리포지토리

import '../model/user.dart';

abstract class UserRepository {
  User getUser();
}

class UserRepositoryImpl implements UserRepository {
  @override
  User getUser() {
    return User("John Doe");
  }
}