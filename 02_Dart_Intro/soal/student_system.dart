abstract class Student {
  String name;
  int id;
  Student(this.name, this.id);
  void study();
}

class UndergraduateStudent extends Student {
  UndergraduateStudent(String name, int id) : super(name, id);
  @override
  void study() {
    print('$name (ID: $id) sedang mempelajari mata kuliah sarjana.');
  }
}

class GraduateStudent extends Student {
  GraduateStudent(String name, int id) : super(name, id);
  @override
  void study() {
    print('$name (ID: $id) sedang melakukan penelitian untuk tesis/disertasi.');
  }
}

void main() {
  UndergraduateStudent student1 = UndergraduateStudent('Budi', 101);
  GraduateStudent student2 = GraduateStudent('Ani', 201);
  List<Student> students = [student1, student2];
  for (var student in students) {
    student.study();
  }
}
