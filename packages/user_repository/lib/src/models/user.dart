import 'package:equatable/equatable.dart';
export 'package:user_repository/src/models/user.dart';

class User extends Equatable {
  const User({
    required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];

  static const empty = User(id: '-');
}
