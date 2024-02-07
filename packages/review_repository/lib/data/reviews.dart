import 'dart:convert';

import 'package:review_repository/models/review.dart';

final reviews = [
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928033325191270/image.png?ex=65d683ad&is=65c40ead&hm=7755ef3ae5fdaf0fd6b835cf25a8f11c2e8fa4174ee734a319940709fbaea09a&',
    'review':
        'This product has been a game-changer for our workflow. Highly recommended!',
    'username': 'johndoe',
    'userCompany': 'Doe Industries',
    'userLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928225701142558/image.png?ex=65d683db&is=65c40edb&hm=a4c9e943e01631de4988aac7c456f1593c17070d1f49d0b1dcf9da7d68226abd&'
  },
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928620418703391/image.png?ex=65d68439&is=65c40f39&hm=6d3b09720ffe613d01728a75802fc9fa00aff283d1e4942764e25349205c97cd&',
    'review':
        'Excellent customer service and an even better product. A must-have for any team.',
    'username': 'janedoe',
    'userCompany': 'Doe Innovations',
    'userLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928641826562088/image.png?ex=65d6843e&is=65c40f3e&hm=7bbe68ef9a9094873beec785b4f9ae8d6da8718fc6ff7e89dc18d4c12b6976dd&'
  },
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928715046260767/image.png?ex=65d68450&is=65c40f50&hm=7c4d2eff57af92e905c820c70d3d1952d779a92a081a4822de737113611ae016&',
    'review':
        'After switching to this tool, our efficiency has increased significantly. Worth every penny.',
    'username': 'alexsmith',
    'userCompany': 'Smith Solutions',
    'userLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928742724603966/image.png?ex=65d68456&is=65c40f56&hm=0edfceea63a12f5d98439e3a58143fa74c0a5aad6d69c72bfb8a81d50f790a85&'
  },
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
