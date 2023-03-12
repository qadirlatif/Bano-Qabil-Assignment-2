void main() {
  Bank mainBranch = new Bank("Main Bankk", 300);
  Bank Account1 = new Bank("abdul Qadir", 5000);
  Bank Account2 = new Bank("abdul Latif", 10000);
  Bank Account3 = new Bank("Muhammad Waqas", 7000);
  mainBranch.addAccount(Account1);
  mainBranch.addAccount(Account2);
  mainBranch.addAccount(Account3);
  Bank highestBranch = mainBranch.highestAccountBalance();
  print("max Account balance name is: ${highestBranch.Accountname}");
  print("max Account balance is: ${highestBranch.balance}");
}

class Bank {
  late double balance;
  late String Accountname;
  List<Bank> l1 = [];
  Bank(String Accountname, double balance) {
    this.balance = balance;
    this.Accountname = Accountname;
  }
  void addAccount(Bank Accounts) {
    l1.add(Accounts);
  }

  void deleteAccount(Bank Accounts) {
    l1.remove(Accounts);
  }

  Bank highestAccountBalance() {
    late Bank max = l1[0];
    for (int i = 0; i < l1.length - 1; i++) {
      if (l1[i + 1].balance > max.balance) {
        max = l1[i + 1];
      }
    }
    return max;
  }
}
