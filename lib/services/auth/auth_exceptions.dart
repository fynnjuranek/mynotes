// login-exceptions´
class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthExcpetion implements Exception {}

// register-exception
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

// generic-exceptions
class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
