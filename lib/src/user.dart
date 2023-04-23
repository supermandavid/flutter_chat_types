import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

/// All possible roles user can have.
enum Role { admin, agent, moderator, user }

/// A class that represents user.
@JsonSerializable()
@immutable
abstract class User extends Equatable {
  /// Creates a user.
  const User._({
    this.createdAt,
    this.firstName,
    required this.id,
    this.imageUrl,
    this.lastName,
    this.messagingToken,
    this.mark,
    this.lastSeen,
    this.selfie,
    this.selfieLastUpdated,
    this.metadata,
    this.role,
    this.updatedAt,
  });

  const factory User({
    int? createdAt,
    String? firstName,
    required String id,
    String? imageUrl,
    String? lastName,
    String? messagingToken,
    int? mark,
    int? lastSeen,
    String? selfie,
    int? selfieLastUpdated,
    Map<String, dynamic>? metadata,
    Role? role,
    int? updatedAt,
  }) = _User;

  /// Creates user from a map (decoded JSON).
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Created user timestamp, in ms.
  final int? createdAt;

  /// First name of the user.
  final String? firstName;

  /// Unique ID of the user.
  final String id;

  /// Remote image URL representing user's avatar.
  final String? imageUrl;

  /// Last name of the user.
  final String? lastName;

  /// FCMToken of the user.
  final String? messagingToken;

  /// mark of the user.
  final int? mark;

  /// Timestamp when user was last visible, in ms.
  final int? lastSeen;

    /// Last name of the user.
  final String? selfie;

  /// Timestamp when user was last visible, in ms.
  final int? selfieLastUpdated;

  /// Additional custom metadata or attributes related to the user.
  final Map<String, dynamic>? metadata;

  /// User [Role].
  final Role? role;

  /// Updated user timestamp, in ms.
  final int? updatedAt;

  /// Equatable props.
  @override
  List<Object?> get props => [
        createdAt,
        firstName,
        id,
        imageUrl,
        lastName,
        messagingToken,
        mark,
        lastSeen,
        selfie,
        selfieLastUpdated,
        metadata,
        role,
        updatedAt,
      ];

  User copyWith({
    int? createdAt,
    String? firstName,
    String? id,
    String? imageUrl,
    String? lastName,
    String? messagingToken,
    String? mark,
    int? lastSeen,
    Map<String, dynamic>? metadata,
    Role? role,
    int? updatedAt,
  });

  /// Converts user to the map representation, encodable to JSON.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

/// A utility class to enable better copyWith.
class _User extends User {
  const _User({
    super.createdAt,
    super.firstName,
    required super.id,
    super.imageUrl,
    super.lastName,
    super.messagingToken,
    super.mark,
    super.lastSeen,
    super.selfie,
    super.selfieLastUpdated,
    super.metadata,
    super.role,
    super.updatedAt,
  }) : super._();

  @override
  User copyWith({
    dynamic createdAt = _Unset,
    dynamic firstName = _Unset,
    String? id,
    dynamic imageUrl = _Unset,
    dynamic lastName = _Unset,
    dynamic messagingToken = _Unset,
    dynamic mark = _Unset,
    dynamic lastSeen = _Unset,
    dynamic selfie = _Unset,
    dynamic selfieLastUpdated = _Unset,
    dynamic metadata = _Unset,
    dynamic role = _Unset,
    dynamic updatedAt = _Unset,
  }) =>
      _User(
        createdAt: createdAt == _Unset ? this.createdAt : createdAt as int?,
        firstName: firstName == _Unset ? this.firstName : firstName as String?,
        id: id ?? this.id,
        imageUrl: imageUrl == _Unset ? this.imageUrl : imageUrl as String?,
        lastName: lastName == _Unset ? this.lastName : lastName as String?,
        messagingToken: messagingToken == _Unset ? this.messagingToken : messagingToken as String?,
        mark: mark == _Unset ? this.mark : mark as int?,
        lastSeen: lastSeen == _Unset ? this.lastSeen : lastSeen as int?,
        selfie: selfie == _Unset ? this.selfie : selfie as String?,
        selfieLastUpdated: selfieLastUpdated == _Unset ? this.selfieLastUpdated : selfieLastUpdated as int?,
        metadata: metadata == _Unset
            ? this.metadata
            : metadata as Map<String, dynamic>?,
        role: role == _Unset ? this.role : role as Role?,
        updatedAt: updatedAt == _Unset ? this.updatedAt : updatedAt as int?,
      );
}

class _Unset {}
