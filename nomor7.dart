import 'dart:io';
import 'nomor7camp.dart';

void main() {
  stdout.write("Masukkan nama kendaraan (mobil/sepedah): ");
  String name = stdin.readLineSync()!;

  stdout.write("Masukkan kecepatan kendaraan (km/jam): ");
  double speed = double.parse(stdin.readLineSync()!);

  Vehicle vehicle;

  if (name.toLowerCase() == "mobil") {
    vehicle = Car(name, speed);
  } else if (name.toLowerCase() == "sepeda") {
    vehicle = Bike(name, speed);
  } else {
    print("Jenis kendaraan tidak valid.");
    return;
  }

  print("Kendaraan: ${vehicle.name}");
  print("Kecepatan: ${vehicle.speed} km/jam");
  print("Kategori Kecepatan: ${vehicle.speedCategory()}");
}
