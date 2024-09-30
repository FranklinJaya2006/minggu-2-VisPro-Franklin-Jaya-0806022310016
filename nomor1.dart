import 'dart:io';
import 'nomor1camp.dart';

void main() {
  Student student = Student();

  student.ceknilai();

  bool urraa = true;

  while (urraa) {
    print("\nPilih untuk melihat info atau keluar:");
    print("1. Info");
    print("2. Keluar");

    String? pilihan = stdin.readLineSync();

    if (pilihan == "1") {
      student.info();
    } else if (pilihan == "2") {
      urraa = false;
      print("Terima kasih sudah menggunakan program ini");
    } else {
      print("Pilihan tidak valid, coba lagi.");
    }
  }
}
