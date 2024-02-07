import 'dart:convert';

import 'package:review_repository/models/review.dart';

final reviews = [
  {
    'logoLink': 'https://example.com/logos/company1.png',
    'review':
        'This product has been a game-changer for our workflow. Highly recommended!',
    'username': 'johndoe',
    'userCompany': 'Doe Industries',
    'userLink': 'https://example.com/users/johndoe'
  },
  {
    'logoLink': 'https://example.com/logos/company2.png',
    'review':
        'Excellent customer service and an even better product. A must-have for any team.',
    'username': 'janedoe',
    'userCompany': 'Doe Innovations',
    'userLink': 'https://example.com/users/janedoe'
  },
  {
    'logoLink': 'https://example.com/logos/company3.png',
    'review':
        'After switching to this tool, our efficiency has increased significantly. Worth every penny.',
    'username': 'alexsmith',
    'userCompany': 'Smith Solutions',
    'userLink': 'https://example.com/users/alexsmith'
  },
  {
    'logoLink': 'https://example.com/logos/company4.png',
    'review':
        'A bit of a learning curve, but the functionality it offers is unmatched. Support has been fantastic.',
    'username': 'emilyjones',
    'userCompany': 'Jones & Co',
    'userLink': 'https://example.com/users/emilyjones'
  }
];

List<Review> parseReviews(List<Map<String, String>> reviews) {
  print('in data');
  return reviews.map(fromMap).toList() as List<Review>;
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
