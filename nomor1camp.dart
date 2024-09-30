import 'dart:io';

class Student {
  String? name;
  int? stdid;
  int? grade;

  Student() {
    stdout.write('Enter student name: ');
    name = stdin.readLineSync();

    stdout.write('Input StudentID: ');
    stdid = int.tryParse(stdin.readLineSync()!);

    stdout.write('Masukkan nilai mahasiswa: ');
    grade = int.tryParse(stdin.readLineSync()!);
  }

  void ceknilai() {
    if (grade! >= 101) {
      print("Aduh salah input nilai");
      exit(0);
    } else if (grade! >= 70) {
      print("Anda dinyatakan lulus");
    } else if (grade! <= 69 && grade! >= 0) {
      print("Anda dinyatakan tidak lulus");
    } else if (grade == null) {
      print("ckckck");
      exit(0);
    } else {
      print("Salah input");
      exit(0);
    }
  }

  void info() {
    print("Nama: $name");
    print("ID: $stdid");
    print("Nilai: $grade");
  }
}
