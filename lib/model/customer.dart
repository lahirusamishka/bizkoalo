import 'package:flutter/foundation.dart';

class Customer {
  final int id;
  final String name;
  final String user_id;
  final String email;
  final String address;
  final String telephone;
  final String created_at;
  final String updated_at;

  Customer(
      {@required this.id,
      @required this.name,
      @required this.user_id,
      @required this.email,
      @required this.address,
      @required this.telephone,
      @required this.created_at,
      @required this.updated_at});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
        id: json['id'] as int,
        name: json['name'] as String,
        user_id: json['user_id'] as String,
        email: json['email'] as String,
        address: json['address'] as String,
        telephone: json['telephone'] as String,
        created_at: json['created_at'] as String,
        updated_at: json['updated_at'] as String);
  }
}
