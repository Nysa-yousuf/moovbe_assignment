class Endpoints {
  Endpoints._();

  // // receiveTimeout
  // static const int receiveTimeout = 15000;

  // // connectTimeout
  // static const int connectionTimeout = 30000;

  ///Authentication

  static const String authenticate = "/api/TokenAuth/Authenticate";
  static const String isTenantAvailable =
      "/api/services/app/Account/IsTenantAvailable";
  static const String getDriverList = "DriverApi/";
}
