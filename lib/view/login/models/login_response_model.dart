class LoginResponseModel {
  bool? status;
  String? message;
  Data? data;

  LoginResponseModel({this.status, this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? surname;
  String? token;
  String? email;
  int? star;
  int? balance;
  int? giftCoffee;

  Data(
      {this.name,
      this.surname,
      this.token,
      this.email,
      this.star,
      this.balance,
      this.giftCoffee});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    token = json['token'];
    email = json['email'];
    star = json['star'];
    balance = json['balance'];
    giftCoffee = json['gift_coffee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['token'] = this.token;
    data['email'] = this.email;
    data['star'] = this.star;
    data['balance'] = this.balance;
    data['gift_coffee'] = this.giftCoffee;
    return data;
  }
}
