import 'dart:io';
import 'nomor6damp.dart';

void main() {
  TemperatureConverter converter = TemperatureConverter();
  Input(converter);
}

void Input(TemperatureConverter converter) {
  stdout.write("Masukkan suhu dalam Celsius: ");
  converter.celsius = double.parse(stdin.readLineSync()!);
  displayMenu(converter);
}

void displayMenu(TemperatureConverter converter) {
  print("\nPilih konversi suhu:");
  print("1. Reaumur");
  print("2. Fahrenheit");
  print("3. Kelvin");
  stdout.write("Masukkan pilihan Anda (1-3): ");
  int choice = int.parse(stdin.readLineSync()!);
  convertTemperature(choice, converter);
}

void convertTemperature(int choice, TemperatureConverter converter) {
  switch (choice) {
    case 1:
      double reaumur = converter.cTReaumur();
      print("\nSuhu dalam Reaumur: ${reaumur.toStringAsFixed(2)}°Re");
      break;
    case 2:
      double fahrenheit = converter.cTFahrenheit();
      print("\nSuhu dalam Fahrenheit: ${fahrenheit.toStringAsFixed(2)}°F");
      break;
    case 3:
      double kelvin = converter.cTKelvin();
      print("\nSuhu dalam Kelvin: ${kelvin.toStringAsFixed(2)}K");
      break;
    default:
      print("Pilihan tidak valid, silakan coba lagi.");
  }
}
