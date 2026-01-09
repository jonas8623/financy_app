mixin AuthValidationMixin {
  static final RegExp _passwordRegex = .new(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
  );

  static final RegExp _emailRegex = .new(
    r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  String? validateFieldIsEmpty(String? value) {
    if (value != null && value.isEmpty) {
      return "O campo não pode ser vazio.";
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value != null && !_passwordRegex.hasMatch(value)) {
      return "O campo de senha está incorreto.";
    }

    return null;
  }

  String? validateEmail(String? value) {
    if (value != null && !_emailRegex.hasMatch(value)) {
      return "O campo email está inválido.";
    }

    return null;
  }

  String? validateConfirmPassword({
    required String controllerPassword,
    String? value,
  }) {
    if (value != null && controllerPassword != value) {
      return "As senhas são diferentes, por favor ajustar.";
    }

    return null;
  }

  String? validate(List<String? Function()> validations) {
    for (final function in validations) {
      final validation = function();
      if (validation != null) return validation;
    }

    return null;
  }
}
