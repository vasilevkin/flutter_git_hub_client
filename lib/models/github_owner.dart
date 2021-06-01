class GitHubOwner {
  final String login;
  final String avatarUrl;

  const GitHubOwner({required this.login, required this.avatarUrl});

  static GitHubOwner fromJson(dynamic json) {
    return GitHubOwner(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );
  }
}
