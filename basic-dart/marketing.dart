class Marketing {
  int id;
  String firstName;
  String lastName;
  double salePrice;

  Marketing({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.salePrice,
  });

  double getCommission() {
    if (this.salePrice > 100000) {
      return 10.0;
    } else if (this.salePrice > 50000) {
      return 3.0;
    }
    
    return 0.0;
  }

  double getCommissionAmount() {
    return this.salePrice * (this.getCommission() / 100);
  }

  void toInfo() {
    print("ID: ${this.id}");
    print("First Name: ${this.firstName}");
    print("Last Name: ${this.lastName}");
    print("Sale price: ${this.salePrice}฿");
    print("Commission: ${this.getCommission()}%");
    print("Commission amount: ${this.getCommissionAmount()}฿");
  }

  Future<void> fetchMarketing() {
    return Future.delayed(
      Duration(seconds: 1), 
      toInfo,
    );
  }

}

Future<Marketing> fetchMarketing() {
  return Future.delayed(
    Duration(seconds: 1), 
    () => Marketing(
      id: 1, 
      firstName: "Kan", 
      lastName: "Ouivirach", 
      salePrice: 10002.0
    )
  );
}