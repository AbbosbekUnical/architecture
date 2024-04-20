class AuthRequest {
  final String phoneNumber;
  final String password;

  AuthRequest({
    required this.phoneNumber,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'phone_number': phoneNumber,
        'password': password,
      };
}
