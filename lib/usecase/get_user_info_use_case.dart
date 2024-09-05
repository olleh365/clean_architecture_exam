// 사용자 정보를 가져오는 비즈니스 로직

import '../model/user.dart';
import '../repository/user_repository.dart';

class GetUserInfoUseCase {
  final UserRepository repository;

  GetUserInfoUseCase(this.repository);

  User execute() {
    return repository.getUser();
  }
}
