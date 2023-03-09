import 'marketing-exception.dart';

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
  }) {
    if (this.salePrice < 100) {
      throw MarketingException("E100", "Error: Sales price is less then 100฿");
    }
  }

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

Future<Marketing> fetchMarketing(double salePrice) {
  return Future.delayed(
    Duration(seconds: 1), 
    () => Marketing(
      id: 1, 
      firstName: "Kan", 
      lastName: "Ouivirach", 
      salePrice: salePrice,
    )
  );
}

Future<Marketing> fetchMarketingWithError() {
  throw Exception("Error when fetching marketing");
  // throw "Error when fetching marketing";
}
