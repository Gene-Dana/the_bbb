// ignore_for_file: public_member_api_docs

import 'dart:convert';

class Review {
  final String logoLink;
  final String review;
  final String username;
  final String userCompany;
  final String userLink;
  Review({
    required this.logoLink,
    required this.review,
    required this.username,
    required this.userCompany,
    required this.userLink,
  });

  Review copyWith({
    String? logoLink,
    String? review,
    String? username,
    String? userCompany,
    String? userLink,
  }) {
    return Review(
      logoLink: logoLink ?? this.logoLink,
      review: review ?? this.review,
      username: username ?? this.username,
      userCompany: userCompany ?? this.userCompany,
      userLink: userLink ?? this.userLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'logoLink': logoLink,
      'review': review,
      'username': username,
      'userCompany': userCompany,
      'userLink': userLink,
    };
  }

  Review fromMap(Map<String, String> map) {
    return Review(
      logoLink: map['logoLink'] ?? '',
      review: map['review'] ?? '',
      username: map['username'] ?? '',
      userCompany: map['userCompany'] ?? '',
      userLink: map['userLink'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Review(logoLink: $logoLink, review: $review, username: $username, userCompany: $userCompany, userLink: $userLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Review &&
        other.logoLink == logoLink &&
        other.review == review &&
        other.username == username &&
        other.userCompany == userCompany &&
        other.userLink == userLink;
  }

  @override
  int get hashCode {
    return logoLink.hashCode ^
        review.hashCode ^
        username.hashCode ^
        userCompany.hashCode ^
        userLink.hashCode;
  }
}
