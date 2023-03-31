// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:wrgap/backend/enum/enum.section.dart';

import '../enum/enum.status.dart';

class FeedModel {
  String id;
  String title;
  String body;
  DateTime createdAt = DateTime.now();
  DateTime? updatedAt;
  //enum
  Status status;
  //enum
  Section section;
  String category;
  String subCategory;
  String make;
  String model;
  String username;
  String userId;
  String userImage;
  int year = 0;
  int views = 0;

  FeedModel({
    this.id = '',
    this.title = '',
    this.body = '',
    this.updatedAt,
    this.status = Status.New,
    this.section = Section.Wanted,
    this.category = '',
    this.subCategory = '',
    this.make = '',
    this.model = '',
    this.username = '',
    this.userId = '',
    this.userImage = '',
    this.year = 0,
    this.views = 0,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'status': status.index,
      'section': section.index,
      'category': category,
      'subCategory': subCategory,
      'make': make,
      'model': model,
      'username': username,
      'userId': userId,
      'userImage': userImage,
      'year': year,
      'views': views,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      id: (map['id'] ?? '') as String,
      title: (map['title'] ?? '') as String,
      body: (map['body'] ?? '') as String,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch((map['updatedAt'] ?? 0) as int)
          : null,
      status: Status.values[(map['status'] ?? 0) as int],
      section: Section.values[(map['section'] ?? 0) as int],
      category: (map['category'] ?? '') as String,
      subCategory: (map['subCategory'] ?? '') as String,
      make: (map['make'] ?? '') as String,
      model: (map['model'] ?? '') as String,
      username: (map['username'] ?? '') as String,
      userId: (map['userId'] ?? '') as String,
      userImage: (map['userImage'] ?? '') as String,
      year: (map['year'] ?? 0) as int,
      views: (map['views'] ?? 0) as int,
    );
  }

  @override
  String toString() {
    return 'FeedModel(id: $id, title: $title, body: $body, updatedAt: $updatedAt, status: $status, section: $section, category: $category, subCategory: $subCategory, make: $make, model: $model, username: $username, userId: $userId, userImage: $userImage, year: $year, views: $views)';
  }
}
