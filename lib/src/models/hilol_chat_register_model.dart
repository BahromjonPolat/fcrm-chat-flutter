/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 17:38:10

*/

import 'package:equatable/equatable.dart';

class HilolChatRegisterModel extends Equatable {
  final String name;
  final String email;
  final String phone;
  const HilolChatRegisterModel({
    required this.name,
    required this.email,
    required this.phone,
  });
  @override
  List<Object> get props => [name, email, phone];

  HilolChatRegisterModel copyWith({
    String? name,
    String? email,
    String? phone,
  }) {
    return HilolChatRegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'name': name, 'email': email, 'phone': phone};
  }

  factory HilolChatRegisterModel.fromJson(Map<String, dynamic> map) {
    return HilolChatRegisterModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  @override
  bool get stringify => true;
}
