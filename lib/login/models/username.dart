import 'package:formz/formz.dart';

enum UsernameValidationError { empty }
// For simplicity, we are just validating the username to ensure that it is not empty but in practice you can enforce special character usage, length, etc…

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    if (value!.isEmpty) return UsernameValidationError.empty;

    return null;
  }
}
