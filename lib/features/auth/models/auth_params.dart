class AuthParams {
  String? name;
  String? email;
  String? password;

  AuthParams({this.name, this.email, this.password});
  factory AuthParams.fromJson(Map<String, dynamic> json){
    return AuthParams(
      name: json["name"],
      email: json["email"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}