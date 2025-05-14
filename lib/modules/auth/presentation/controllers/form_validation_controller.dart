class FormValidationController {
  final String emailOrPhone;
  final String firstName;
  final String lastName;
  final String code;

  FormValidationController({
    required this.emailOrPhone,
    required this.firstName,
    required this.lastName,
    required this.code,
  });

  bool validateEmailOrPhone() {
    // Empty check first
    if (emailOrPhone.isEmpty) {
      return false;
    }

    // Email validation
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Phone validation
    final RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');

    // Check if input matches either email or phone format
    return emailRegex.hasMatch(emailOrPhone) ||
        phoneRegex.hasMatch(emailOrPhone);
  }

  static String? validatecode(code) {

    if (code.isEmpty) {
      return "Code cannot be empty";
    }

   if (code.length != 6) {
      return "Code must be 6 characters long";
    }

    // Check if code contains only numbers
    final RegExp hasNumbers = RegExp(r'^[0-9]+$');
    if (!hasNumbers.hasMatch(code)) {
      return "Code must contain only numbers";
    }

    return null;
  }

   String? validateName(String name) {
    // Check if name is:
    // 1. Not empty
    // 2. Has at least 3 characters
    // 3. Has less than 25 characters
    // 4. Doesn't contain numbers
    if (name.isEmpty) {
      return "Name cannot be empty";
    }

    if (name.length < 3 || name.length > 25) {
      return "Name must be between 3 and 25 characters";
    }

    // Check for numbers in the name
    final RegExp hasNumbers = RegExp(r'[0-9]');
    if (hasNumbers.hasMatch(name)) {
      return "Name cannot contain numbers";
    }

    return null;
  }

  String? validateFirstName() {
    return validateName(firstName);
  }

  String? validateLastName() {
    return validateName(lastName);
  }
}
