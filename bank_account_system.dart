import 'dart:io';

abstract class BankAccount {
  void deposit(double amount);
  void withdraw(double amount);
  void transfer(BankAccount targetAccount, double amount);
  void showBalance();
  double getBalance();
}

class SavingsAccount extends BankAccount {
  double _balance = 0.0;

  @override
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount");
    }
  }

  @override
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance in Savings!");
    }
  }

  @override
  void transfer(BankAccount targetAccount, double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      targetAccount.deposit(amount);
      print("Transferred: $amount");
    } else {
      print("Transfer failed: Not enough balance");
    }
  }

  @override
  void showBalance() {
    print("Savings Balance: $_balance");
  }

  @override
  double getBalance() => _balance;
}

class CheckingAccount extends BankAccount {
  double _balance = 0.0;

  @override
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount");
    }
  }

  @override
  void withdraw(double amount) {
    _balance -= amount;
    print("Withdrawn (Overdraft allowed): $amount");
  }

  @override
  void transfer(BankAccount targetAccount, double amount) {
    _balance -= amount;
    targetAccount.deposit(amount);
    print("Transferred: $amount");
  }

  @override
  void showBalance() {
    print("Checking Balance: $_balance");
  }

  @override
  double getBalance() => _balance;
}

void main() {
  var savings = SavingsAccount();
  var checking = CheckingAccount();

  while (true) {
    print("\n===== BANK MENU =====");
    print("1. Deposit to Savings");
    print("2. Withdraw from Savings");
    print("3. Deposit to Checking");
    print("4. Withdraw from Checking");
    print("5. Transfer Savings → Checking");
    print("6. Show Balances");
    print("7. Exit");
    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter amount:");
      double amount = double.parse(stdin.readLineSync()!);
      savings.deposit(amount);
    } 
    else if (choice == 2) {
      print("Enter amount:");
      double amount = double.parse(stdin.readLineSync()!);
      savings.withdraw(amount);
    } 
    else if (choice == 3) {
      print("Enter amount:");
      double amount = double.parse(stdin.readLineSync()!);
      checking.deposit(amount);
    } 
    else if (choice == 4) {
      print("Enter amount:");
      double amount = double.parse(stdin.readLineSync()!);
      checking.withdraw(amount);
    } 
    else if (choice == 5) {
      print("Enter amount:");
      double amount = double.parse(stdin.readLineSync()!);
      savings.transfer(checking, amount);
    } 
    else if (choice == 6) {
      savings.showBalance();
      checking.showBalance();
    } 
    else if (choice == 7) {
      print("Exiting...");
      break;
    } 
    else {
      print("Invalid choice!");
    }
  }
}