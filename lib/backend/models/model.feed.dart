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
  FeedModel({
    this.id = '',
    this.title = '',
    this.body = '',
    this.updatedAt,
    required this.status,
    this.section = Section.Wanted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'status': status.index,
      'section': section.index,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    var f = FeedModel(
      id: (map['id'] ?? '') as String,
      title: (map['title'] ?? '') as String,
      body: (map['body'] ?? '') as String,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch((map['updatedAt'] ?? 0) as int)
          : null,
      status: Status.values[(map['status'] ?? 0) as int],
      section: Section.values[(map['section'] ?? 0) as int],
    );
    f.createdAt =
        DateTime.fromMillisecondsSinceEpoch((map['createdAt'] ?? 0) as int);
    return f;
  }

  @override
  String toString() {
    return 'FeedModel(id: $id, title: $title, body: $body, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, section: $section)';
  }
}
