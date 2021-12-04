class offerResponseModel {
  bool? status;
  String? message;
  List<offerResponseDataModel>? data;

  offerResponseModel({this.status, this.message, this.data});

  offerResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <offerResponseDataModel>[];
      json['data'].forEach((v) {
        data!.add(new offerResponseDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class offerResponseDataModel {
  int? id;
  String? image;
  String? title;
  String? text;
  String? createdAt;
  String? updatedAt;

  offerResponseDataModel(
      {this.id,
      this.image,
      this.title,
      this.text,
      this.createdAt,
      this.updatedAt});

  offerResponseDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    text = json['text'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['title'] = this.title;
    data['text'] = this.text;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
