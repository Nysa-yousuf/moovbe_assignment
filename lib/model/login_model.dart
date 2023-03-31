class LoginModel {
  bool? status;
  String? name;
  String? refresh;
  String? access;
  String? message;
  String? urlId;

  LoginModel(
      {this.status,
      this.name,
      this.refresh,
      this.access,
      this.message,
      this.urlId});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    name = json['name'];
    refresh = json['refresh'];
    access = json['access'];
    message = json['message'];
    urlId = json['url_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['name'] = name;
    data['refresh'] = refresh;
    data['access'] = access;
    data['message'] = message;
    data['url_id'] = urlId;
    return data;
  }
}
