class MarketingException implements Exception {
  String message;
  String code;

  MarketingException(this.code, this.message);
}