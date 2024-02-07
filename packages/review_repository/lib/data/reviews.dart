import 'dart:convert';

import 'package:review_repository/models/review.dart';

final reviews = [
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928033325191270/image.png?ex=65d683ad&is=65c40ead&hm=7755ef3ae5fdaf0fd6b835cf25a8f11c2e8fa4174ee734a319940709fbaea09a&',
    'review':
        '“Even with a talented team, keeping up with all the bookkeeping work for a financials was a challenging proposition. Working with the BBB gave us the added confidence we needed.”',
    'username': 'Alex Murcia',
    'userCompany': 'Care Manager, Continual Care ',
    'userLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928225701142558/image.png?ex=65d683db&is=65c40edb&hm=a4c9e943e01631de4988aac7c456f1593c17070d1f49d0b1dcf9da7d68226abd&'
  },
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204933070164336682/image.png?ex=65d6885e&is=65c4135e&hm=386a39e818d03159daba997dde750de72bceebac10699e8f5f62e9f77390703e&',
    'review':
        '“The BBB took an ambiguous and a tight unmovable deadline, and delivered. I feel confident to work with them for our most demanding financial projects.”',
    'username': 'Jane Hatthaway',
    'userCompany': 'Production Manager, The Travelers Attic',
    'userLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928641826562088/image.png?ex=65d6843e&is=65c40f3e&hm=7bbe68ef9a9094873beec785b4f9ae8d6da8718fc6ff7e89dc18d4c12b6976dd&'
  },
  {
    'logoLink':
        'https://cdn.discordapp.com/attachments/826240853478604840/1204928715046260767/image.png?ex=65d68450&is=65c40f50&hm=7c4d2eff57af92e905c820c70d3d1952d779a92a081a4822de737113611ae016&',
    'review':
        '“The BBB were team members for all intents and purposes. One of my team said, ‘I don’t know where our team ends and their team begins’.”',
    'username': 'Jonathan Sarochar',
    'userCompany': 'CPO, instaplant',
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
