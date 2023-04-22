import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'message.dart';
import 'user.dart';

part 'room.g.dart';

/// All possible room types.
enum RoomType { channel, direct, group }

/// A class that represents a room where 2 or more participants can chat.
@JsonSerializable()
@immutable
abstract class Room extends Equatable {
  /// Creates a [Room].
  const Room._({
    this.createdAt,
    this.inquiries,
    required this.id,
    this.imageUrl,
    this.lastMessages,
    this.metadata,
    this.seenLog,
    this.mark,
    this.name,
    this.lastMessage,
    this.lastMessageId,
    required this.type,
    this.updatedAt,
    required this.users,
    required this.organisers,
  });

  const factory Room({
    int? createdAt,
    List<Map>? inquiries,
    required String id,
    String? imageUrl,
    List<Message>? lastMessages,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? seenLog,
    String? mark,
    String? name,
    String? lastMessage,
    String? lastMessageId,
    required RoomType? type,
    int? updatedAt,
    required List<User> users,
    required List<String> organisers,
  }) = _Room;

  /// Creates room from a map (decoded JSON).
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  /// Created room timestamp, in ms.
  final int? createdAt;

  /// inquiry data.
  final List<Map>? inquiries;

  /// Room's unique ID.
  final String id;

  /// Room's image. In case of the [RoomType.direct] - avatar of the second person,
  /// otherwise a custom image [RoomType.group].
  final String? imageUrl;

  /// List of last messages this room has received.
  final List<Message>? lastMessages;

  /// Additional custom metadata or attributes related to the room.
  final Map<String, dynamic>? metadata;

  /// map of users and count of messages they are yet to open.
  final Map<String, dynamic>? seenLog;

  /// mark used to identify chat
  final String? mark;

  /// otherwise a custom name [RoomType.group].
  final String? name;

  final String? lastMessage;
  final String? lastMessageId;

  /// [RoomType].
  final RoomType? type;

  /// Updated room timestamp, in ms.
  final int? updatedAt;

  /// List of users which are in the room.
  final List<User> users;
  
  /// List of organisers which are in the room.
  final List<User> organisers;

  /// Equatable props.
  @override
  List<Object?> get props => [
        createdAt,
        inquiries,
        id,
        imageUrl,
        lastMessages,
        lastMessage,
        lastMessageId,
        metadata,
        seenLog,
        mark,
        name,
        type,
        updatedAt,
        users,
        organisers,
      ];

  /// Creates a copy of the room with an updated data.
  /// [imageUrl], [name] and [updatedAt] with null values will nullify existing values
  /// [metadata] with null value will nullify existing metadata, otherwise
  /// both metadatas will be merged into one Map, where keys from a passed
  /// metadata will overwite keys from the previous one.
  /// [type] and [users] with null values will be overwritten by previous values.
  Room copyWith({
    int? createdAt,
    List<Map>? inquiries,
    String? id,
    String? imageUrl,
    List<Message>? lastMessages,
    Map<String, dynamic>? metadata,
    Map<String, dynamic>? seenLog,
    String? mark,
    String? name,
    String? lastMessage,
    String? lastMessageId,
    RoomType? type,
    int? updatedAt,
    List<User>? users,
    List<String>? userMarks,
    List<String>? organisers,
  });

  /// Converts room to the map representation, encodable to JSON.
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}

/// A utility class to enable better copyWith.
class _Room extends Room {
  const _Room({
    super.createdAt,
    super.inquiries,
    required super.id,
    super.imageUrl,
    super.lastMessages,
    super.metadata,
    super.seenLog,
    super.mark,
    super.name,
    super.lastMessage,
    super.lastMessageId,
    required super.type,
    super.updatedAt,
    required super.users,
    required super.userMarks,
    required super.organisers,
  }) : super._();

  @override
  Room copyWith({
    dynamic createdAt = _Unset,
    dynamic inquiries = _Unset,
    String? id,
    dynamic imageUrl = _Unset,
    dynamic lastMessages = _Unset,
    dynamic lastMessage = _Unset,
    dynamic lastMessageId = _Unset,
    dynamic metadata = _Unset,
    dynamic seenLog = _Unset,
    dynamic mark = _Unset,
    dynamic name = _Unset,
    dynamic type = _Unset,
    dynamic updatedAt = _Unset,
    List<User>? users,
    List<String>? userMarks,
    List<String>? organisers,
  }) =>
      _Room(
        createdAt: createdAt == _Unset ? this.createdAt : createdAt as int?,
        inquiries: inquiries == _Unset ? this.inquiries : inquiries as List<Map>?,
        id: id ?? this.id,
        imageUrl: imageUrl == _Unset ? this.imageUrl : imageUrl as String?,
        lastMessages: lastMessages == _Unset
            ? this.lastMessages
            : lastMessages as List<Message>?,
        metadata: metadata == _Unset ? this.metadata : metadata as Map<String, dynamic>?,
        seenLog: seenLog == _Unset
            ? this.seenLog
            : seenLog as Map<String, dynamic>?,
        mark: nark == _Unset ? this.mark : mark as String?,
        name: name == _Unset ? this.name : name as String?,
        lastMessage: lastMessage == _Unset ? this.lastMessage : lastMessage as String?,
        lastMessageId: lastMessageId == _Unset ? this.lastMessageId : lastMessageId as String?,
        type: type == _Unset ? this.type : type as RoomType?,
        updatedAt: updatedAt == _Unset ? this.updatedAt : updatedAt as int?,
        users: users ?? this.users,
        users: users ?? this.userMarks,
        users: users ?? this.organisers,
      );
}

class _Unset {}
