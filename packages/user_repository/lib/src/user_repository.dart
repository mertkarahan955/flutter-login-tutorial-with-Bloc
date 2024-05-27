import 'package:uuid/uuid.dart';
import 'models/user.dart';

export 'models/user.dart';
export 'user_repository.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
        const Duration(milliseconds: 300), () => _user = User(id: Uuid().v4()));
  }
}
