// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      createdAt: json['createdAt'] as int?,
      firstName: json['firstName'] as String?,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      lastName: json['lastName'] as String?,
      messagingTokens: json['messagingTokens'] as List<String>?,
      managerMessagingTokens: json['managerMessagingTokens'] as List<String>?,
      mark: json['mark'] as int?,
      lastSeen: json['lastSeen'] as int?,
      profilePhoto: json['profilePhoto'] as String?,
      profilePhotoLastUpdated: json['profilePhotoLastUpdated'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      updatedAt: json['updatedAt'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('firstName', instance.firstName);
  val['id'] = instance.id;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('messagingTokens', instance.messagingTokens);
  writeNotNull('managerMessagingTokens', instance.managerMessagingTokens);
  writeNotNull('mark', instance.mark);
  writeNotNull('lastSeen', instance.lastSeen);
  writeNotNull('profilePhoto', instance.profilePhoto);
  writeNotNull('profilePhotoLastUpdated', instance.profilePhotoLastUpdated);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('updatedAt', instance.updatedAt);
  return val;
}

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.agent: 'agent',
  Role.moderator: 'moderator',
  Role.user: 'user',
};
