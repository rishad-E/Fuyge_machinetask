class SalesManModel {
  String salesmanUName;
  String salesmanName;
  String salesmanEmail;
  String salesmanPassword;
  String salesmanPhonenumber;
  String salesmanAddress;
  List<dynamic>? store;
  SalesManModel({
    required this.salesmanUName,
    required this.salesmanName,
    required this.salesmanEmail,
    required this.salesmanPassword,
    required this.salesmanPhonenumber,
    required this.salesmanAddress,
    this.store
  });
}
