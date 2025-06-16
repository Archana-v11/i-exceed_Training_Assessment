import 'dart:convert';

void main() {
  String jsonString =
      '''{"studentName":"Archana",
          "rollNo":11,
          "marks":{"Math":95, "Science":90, "English":98}
        }''';

  print(jsonString.runtimeType); // String

  final decodedData = jsonDecode(jsonString);
  print(decodedData.runtimeType); // _InternalLinkedHashMap<String, dynamic>

  Student student = Student.fromJson(decodedData);
  print("Name: ${student.studentName}");
  print("Roll No: ${student.rollNo}");
  print("Marks: ${student.marks}");

  String encodedData = jsonEncode(student.toJson());
  print(encodedData);
}

class Student {
  String studentName;
  int rollNo;
  Map<String, int> marks;

  Student({required this.studentName, required this.rollNo, required this.marks});

  factory Student.fromJson(Map<String, dynamic> data) {
    return Student(
      studentName: data['studentName'],
      rollNo: data['rollNo'],
      marks: Map<String, int>.from(data['marks']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'studentName': studentName,
      'rollNo': rollNo,
      'marks': marks,
    };
  }
}
