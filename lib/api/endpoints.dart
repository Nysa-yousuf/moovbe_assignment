class Endpoints {
  Endpoints._();

  // // receiveTimeout
  // static const int receiveTimeout = 15000;

  // // connectTimeout
  // static const int connectionTimeout = 30000;

  ///Authentication

  static const String authenticate = "LoginApi";
  static const String isTenantAvailable =
      "/api/services/app/Account/IsTenantAvailable";
  static const String getDriverList = "DriverApi/";
  static const String postDriverList = "DriverApi/";
  static const String deleteDriverList = "DriverApi/";
}
