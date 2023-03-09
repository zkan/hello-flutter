class Marketing {
    int id;
    String firstName;
    String lastName;

    Marketing({
        required this.id,
        required this.firstName,
        required this.lastName,
    });

    double getCommission(double salePrice) {
        if (salePrice > 500000) {
            return 3.0;
        }
        return 0.0;
    }
}