//Program demonstrating encapsulation in dart
class Bank {
  String? _bankName;
  String? _accountNo;
  String? _accountType;
  int? _currentBalance;
  String? get bankName => this._bankName;

  set bankName(String? value) => this._bankName = value;

  get accountNo => this._accountNo;

  set accountNo(value) => this._accountNo = value;

  get accountType => this._accountType;

  set accountType(value) => this._accountType = value;

  get currentBalance => this._currentBalance;

  set currentBalance(value) => this._currentBalance = value;
}

void main() {
  Bank bank = Bank();
  bank.bankName = "SBI";
  bank.accountNo = "SBI903452110";
  bank.accountType = "Fixed Deposit";
  bank.currentBalance = 3000000;

  print("Bank Name :${bank.bankName}");
  print("Account No : ${bank._accountNo}");
  print("Account type : ${bank._accountType}");
  print("Current balance : ${bank._currentBalance}");
}
