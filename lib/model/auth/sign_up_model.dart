// To parse this JSON data, do
//
// final signUpModel = signUpModelFromJson(jsonString);

import 'dart:convert';

SignUpModel signUpModelFromJson(String str) => SignUpModel.fromJson(json.decode(str));

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
    SignUpModel({
        this.username,
        this.email,
        this.password,
        this.avatarUrls,
    });

    String? username;
    String? email;
    String? password;
    String? avatarUrls;

    factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        username: json["username"],
        email: json["email"],
        password: json["password"],
        avatarUrls: json["avatar_urls"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
        "avatar_urls": avatarUrls,
    };
}
