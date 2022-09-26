import 'dart:convert';

import 'Student.dart';

void main() {
  String jsonString = """
  {
  "id":"123",
  "name":"张三",
  "score":95,
  "teachers":[
    {
      "name":"李四",
      "age":40
    },
    {
      "name":"王五",
      "age":45
    }
   ]
  }
  """;


  print(Student.fromJson(json.decode(jsonString)).toString());
}
