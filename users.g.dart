// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(uid: json['uid'] as String, pwd: json['pwd'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) =>
    <String, dynamic>{'uid': instance.uid, 'pwd': instance.pwd};
