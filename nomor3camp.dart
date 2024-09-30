class ATM {
  double _balance;

  ATM(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount >= 50000) {
      _balance += amount;
      print('Deposited: ${amount.toStringAsFixed(2)}');
      print("sisa : $_balance");
    } else {
      print('Minimum deposit amount is Rp50,000');
    }
  }

  void withdraw(double amount) {
    if (amount >= 50000 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: ${amount.toStringAsFixed(2)}');
      print("sisa : $_balance");
    } else {
      print('Invalid withdrawal amount or insufficient balance. Minimum withdrawal amount is Rp50,000');
    }
  }
}
