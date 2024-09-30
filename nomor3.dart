import 'dart:io';
import 'nomor3camp.dart';

void main() {
  ATM atm = ATM(0);

  while (true) {
    print('\n--- ATM Menu ---');
    print('1. Deposit');
    print('2. Withdraw');
    print('3. Check Balance');
    print('4. Exit');
    print('Select an option (1-4): ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Input deposit amount: ');
        double depositAmount = double.parse(stdin.readLineSync()!);
        atm.deposit(depositAmount);
        break;

      case '2':
        print('Input withdrawal amount: ');
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        atm.withdraw(withdrawAmount);
        break;

      case '3':
        print('Current balance: Rp${atm.balance.toStringAsFixed(2)}');
        break;

      case '4':
        print('Thank you for using the ATM.');
        return;

      default:
        print('Invalid option, please select again.');
    }
  }
}
