part of '../tdapi.dart';

class BlockUser extends TLFunction {
  int userId;
  dynamic extra;

  /// Adds a user to the blacklist.
  ///[userId] User identifier
  BlockUser({this.userId});

  /// Parse from a json
  BlockUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'user_id': this.userId, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'blockUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}