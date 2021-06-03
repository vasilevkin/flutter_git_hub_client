// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubOwner _$GitHubOwnerFromJson(Map<String, dynamic> json) {
  return GitHubOwner(
    login: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$GitHubOwnerToJson(GitHubOwner instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };
