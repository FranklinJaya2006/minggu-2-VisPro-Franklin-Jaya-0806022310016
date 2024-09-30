import 'dart:io';

class Akun {
  double _balance;

  Akun() : _balance = 0.0;

  void deposit() {
    print("berapa yang ingin dimasukkan: ");
    double? berapa = double.tryParse(stdin.readLineSync()!) ?? 0.0;
    if (berapa >= 50000) {
      _balance += berapa;
      print('Deposit berhasil. Saldo saat ini: $_balance');
    } else {
      print('Jumlah deposit harus lebih dari atau sama dengan 50000');
    }
  }

  void withdraw() {
    print("berapa yang ingin dikeluarkan: ");
    double? berapa = double.tryParse(stdin.readLineSync()!) ?? 0.0;
    if (berapa >= 50000) {
      if (_balance >= berapa) {
        _balance -= berapa;
        print('Withdraw berhasil. Saldo saat ini: $_balance');
      } else {
        print('Saldo tidak cukup untuk melakukan withdraw.');
      }
    } else {
      print('Jumlah yang diambil harus lebih atau sama dengan 50000');
    }
  }

  void cek() {
    print('Saldo saat ini: $_balance');
  }

  void tambahkanBunga(double bunga) {
    double bungaDiterapkan = _balance * bunga;
    _balance += bungaDiterapkan;
    print('Bunga diterapkan: $bungaDiterapkan. Saldo setelah bunga: $_balance');
  }

  double get balance => _balance;
}

class Sev {
  final double bunga;

  Sev() : bunga = 0.01;

  void ngitung(Akun akun) {
    akun.tambahkanBunga(bunga);
  }
}
