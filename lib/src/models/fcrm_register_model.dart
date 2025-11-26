/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 17:38:10

*/

import 'package:equatable/equatable.dart';

class FcrmRegisterModel extends Equatable {
  final String name;
  final String email;
  final String phone;
  const FcrmRegisterModel({
    required this.name,
    required this.email,
    required this.phone,
  });
  @override
  List<Object> get props => [name, email, phone];

  FcrmRegisterModel copyWith({String? name, String? email, String? phone}) {
    return FcrmRegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'name': name, 'email': email, 'phone': phone};
  }

  factory FcrmRegisterModel.fromJson(Map<String, dynamic> map) {
    return FcrmRegisterModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  @override
  bool get stringify => true;
}
