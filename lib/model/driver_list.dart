class DriverListModel {
  bool? status;
  List<DriverListResult>? driverList;

  DriverListModel({this.status, this.driverList});

  DriverListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['driver_list'] != null) {
      driverList = <DriverListResult>[];
      json['driver_list'].forEach((v) {
        driverList!.add(DriverListResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (driverList != null) {
      data['driver_list'] = driverList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DriverListResult {
  int? id;
  String? name;
  String? mobile;
  String? licenseNo;

  DriverListResult({this.id, this.name, this.mobile, this.licenseNo});

  DriverListResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    licenseNo = json['license_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['mobile'] = mobile;
    data['license_no'] = licenseNo;
    return data;
  }
}
