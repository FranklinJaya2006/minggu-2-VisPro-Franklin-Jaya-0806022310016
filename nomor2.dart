import 'dart:io';
import 'nomor2camp.dart';

void main() {
  bool benar = true;
  Akun bank = Akun();
  Sev saving = Sev();

  while (benar) {
    print('Pilih aktivitas anda di bank fijuwu');
    print('1. Deposit');
    print('2. Withdraw');
    print('3. Cek Saldo');
    print('4. Saving acc');
    print('5. Exit');
    print("pilihan anda");

    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      bank.deposit();
    } else if (pilihan == 2) {
      bank.withdraw();
    } else if (pilihan == 3) {
      bank.cek();
    } else if (pilihan == 4) {
      saving.ngitung(bank);
    } else if (pilihan == 5) {
      print('Terima kasih sudah menggunakan layanan kami.');
      benar = false;
      exit(0);
    } else {
      print("tidak ada dalam pilihan");
    }
  }
}
