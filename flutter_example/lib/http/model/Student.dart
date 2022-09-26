import 'Teachers.dart';

class Student {
  Student({
    this.id,
    this.name,
    this.score,
    this.teachers,
  });

  Student.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    score = json['score'];
    if (json['teachers'] != null) {
      teachers = [];
      json['teachers'].forEach((v) {
        teachers?.add(Teachers.fromJson(v));
      });
    }
  }

  String? id;
  String? name;
  int? score;
  List<Teachers>? teachers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['score'] = score;
    if (teachers != null) {
      map['teachers'] = teachers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  String toString() {
    return 'Student{id: $id, name: $name, score: $score, teachers: $teachers}';
  }
}
