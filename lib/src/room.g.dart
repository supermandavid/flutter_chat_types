// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      createdAt: json['createdAt'] as int?,
      inquiries: json['inquiries'] as List<Map>?,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      lastMessages: (json['lastMessages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['lastMessage'] as String?,
      lastMessageId: json['lastMessageId'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      seenLog: json['seenLog'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$RoomTypeEnumMap, json['type']),
      updatedAt: json['updatedAt'] as int?,
      organisers: json['organisers'] as List<String>?,
      userMarks: json['userMarks'] as List<String>?,
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomToJson(Room instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('inquiries', instance.inquiries);
  val['id'] = instance.id;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull(
      'lastMessages', instance.lastMessages?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('seenLog', instance.seenLog);
  writeNotNull('name', instance.name);
  writeNotNull('lastMessage', instance.lastMessage);
  writeNotNull('lastMessageId', instance.lastMessageId);
  writeNotNull('type', _$RoomTypeEnumMap[instance.type]);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('organisers', instance.organisers);
  writeNotNull('userMarks', instance.organisers);
  val['users'] = instance.users.map((e) => e.toJson()).toList();
  return val;
}

const _$RoomTypeEnumMap = {
  RoomType.channel: 'channel',
  RoomType.direct: 'direct',
  RoomType.group: 'group',
};
