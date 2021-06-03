
import 'package:json_annotation/json_annotation.dart';

part 'github_owner.g.dart';

@JsonSerializable()
class GitHubOwner {
  final String login;

  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  const GitHubOwner({required this.login, required this.avatarUrl});

  factory GitHubOwner.fromJson(Map<String, dynamic> json) =>
      _$GitHubOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$GitHubOwnerToJson(this);

  // static GitHubOwner fromJson(dynamic json) {
  //   return GitHubOwner(
  //     login: json['login'] as String,
  //     avatarUrl: json['avatar_url'] as String,
  //   );
  // }
}

