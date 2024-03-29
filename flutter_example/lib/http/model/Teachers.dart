class Teachers {
  Teachers({
    this.name,
    this.age,
  });

  Teachers.fromJson(dynamic json) {
    name = json['name'];
    age = json['age'];
  }

  String? name;
  int? age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['age'] = age;
    return map;
  }

  @override
  String toString() {
    return 'Teachers{name: $name, age: $age}';
  }
}
