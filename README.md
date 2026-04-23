# 🏦 Bank Account System (Dart OOP Project)

## 📌 Overview

This project is a **menu-driven Bank Account System** built using **Dart**.
It demonstrates core **Object-Oriented Programming (OOP)** concepts such as:

* Abstraction
* Inheritance
* Method Overriding
* Encapsulation

The program allows users to perform basic banking operations through the command line.

---

## 🎯 Features

* Deposit money into Savings or Checking account
* Withdraw money from accounts
* Transfer money (Savings → Checking)
* View account balances
* Menu-driven interactive system
* Continuous operation until user exits

---

## 🧱 Project Structure

### 🔹 Abstract Class

`BankAccount`

* Defines common methods:

  * `deposit()`
  * `withdraw()`
  * `transfer()`
  * `showBalance()`
  * `getBalance()`

---

### 🔹 Child Classes

#### 1. SavingsAccount

* Cannot withdraw more than available balance
* Safe and restricted account

#### 2. CheckingAccount

* Allows overdraft (balance can go negative)
* More flexible account

---

## ⚙️ How It Works

1. Program starts and displays a menu
2. User selects an option
3. Inputs amount if required
4. Operation is performed
5. Updated result is shown
6. Loop continues until user exits

---

## ▶️ Menu Options

```
1. Deposit to Savings
2. Withdraw from Savings
3. Deposit to Checking
4. Withdraw from Checking
5. Transfer Savings → Checking
6. Show Balances
7. Exit
```

---

## 🚀 How to Run

### Step 1: Install Dart

Make sure Dart SDK is installed:
https://dart.dev/get-dart

---

### Step 2: Run the Program

```bash
dart run bank_account_system.dart
```

---

## ⚠️ Limitations

* No input validation (invalid input may crash program)
* Only two accounts (Savings & Checking)
* No data persistence (data resets after exit)

---

## 🔥 Future Improvements

* Add input validation using `tryParse()`
* Support multiple users (List of accounts)
* Add transaction history
* Implement PIN-based authentication (ATM system)
* Convert into Flutter UI application

---

## 🧠 Learning Outcomes

After completing this project, you will understand:

* How abstract classes work in Dart
* How inheritance reduces code duplication
* How method overriding customizes behavior
* How to build CLI-based interactive applications

---

## 👨‍💻 Author

Developed as a practice project for learning Dart OOP concepts.

---
