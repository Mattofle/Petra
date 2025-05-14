
class MockAuthDatasource {
  // Mock user data
  final Map<String, Map<String, dynamic>> _mockUsers = {
    'test@example.com': {
      'password': '123456',
      'userId': 'user1',
      'firstName': 'John',
      'lastName': 'Doe',
    },
  };

  Future<Map<String, dynamic>> login({
    required String email,
    required String code,
  }) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Check if user exists
    if (!_mockUsers.containsKey(email)) {
      throw Exception('User not found');
    }

    final user = _mockUsers[email]!;

    // In a real app, we would verify the code here
    // For mock purposes, we'll just check if it's 6 digits
    if (code.length != 6 || !RegExp(r'^[0-9]+$').hasMatch(code)) {
      throw Exception('Invalid code');
    }

    return {
      'userId': user['userId'],
      'email': email,
      'firstName': user['firstName'],
      'lastName': user['lastName'],
    };
  }

  Future<Map<String, dynamic>> register({
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Check if user already exists
    if (_mockUsers.containsKey(email)) {
      throw Exception('User already exists');
    }

    // Create new user
    final userId = 'user${_mockUsers.length + 1}';
    _mockUsers[email] = {
      'password': '123456', // In a real app, this would be hashed
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
    };

    return {
      'userId': userId,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
