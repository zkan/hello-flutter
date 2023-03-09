class Marketing {
  int id;
  String firstName;
  String lastName;
  double salePrice;
  double commission;

  Marketing({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.salePrice,
    required this.commission,
  });

  double getCommission() {
    return this.commission;
  }

  double getCommissionAmount() {
    return this.salePrice * (this.getCommission() / 100);
  }

  void showInfo() {
    print("ID: ${this.id}");
    print("First Name: ${this.firstName}");
    print("Last Name: ${this.lastName}");
    print("Sale price: ${this.salePrice}฿");
    print("Commission: ${this.getCommission()}%");
    print("Commission amount: ${this.getCommissionAmount()}฿");
  }
}