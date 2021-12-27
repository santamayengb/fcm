import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class UserModel {
  String email;
  String pwd;
  UserModel({
    required this.email,
    required this.pwd,
  });

  /// A necessary factory constructor for creating a new UserModel instance
  /// from a map. Pass the map to the generated `_$UserModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, UserModel.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserModelToJson`.
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
