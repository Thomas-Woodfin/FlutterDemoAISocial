/// status : "200"
/// message : "Courses fetched successfully"
/// data : [{"id":4,"name":"UTME JAMB","image":"1696105532_UTME.jpg","description":"Unified Tertiary Matriculation Examination JAMB","price_ngn":"2500.00","price_usd":"4.00","price_eur":"4.00","mcq":1,"theory":null,"practical":null,"available":1},{"id":2,"name":"SSCE NECO","image":"1696105826_SSCE.jpg","description":"Senior School Certificate Examination NECO","price_ngn":"2500.00","price_usd":"4.00","price_eur":"4.00","mcq":1,"theory":1,"practical":1,"available":1},{"id":6,"name":"WASSCE","image":"1696106090_waec.jpg","description":"West African Senior School Certificate Examination","price_ngn":"2500.00","price_usd":"4.00","price_eur":"4.00","mcq":1,"theory":1,"practical":1,"available":1},{"id":13,"name":"GOVERNMENT EXAMS","image":"1696104871_coat.jpg","description":"Public Service Rules, Financial Regulations, COMPRO Exams..","price_ngn":"2000.00","price_usd":"3.00","price_eur":"3.00","mcq":null,"theory":1,"practical":null,"available":1},{"id":14,"name":"NIGERIA LNG","image":"1696105135_NLNG.jpg","description":"Nigerian LNG past questions and answers","price_ngn":"2000.00","price_usd":"3.00","price_eur":"3.00","mcq":1,"theory":null,"practical":null,"available":1},{"id":15,"name":"NIGERIA CUSTOMS SERVICE","image":"1696105004_customs.jpg","description":"Promotion exams past questions and answers","price_ngn":"2000.00","price_usd":"3.00","price_eur":"3.00","mcq":null,"theory":1,"practical":null,"available":1},{"id":22,"name":"BECE","image":"1706128039_beceimg.jpg","description":"BASIC EDUCATION CERTIFICATE EXAMINATION (BECE) - By the National Examination Council (NECO) for the Junior Secondary School (JS3) students","price_ngn":"2500.00","price_usd":"2.00","price_eur":"2.00","mcq":1,"theory":1,"practical":null,"available":1}]

class IntroScreenOneResponseModel {
  IntroScreenOneResponseModel({
      String? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  IntroScreenOneResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _status;
  String? _message;
  List<Data>? _data;
IntroScreenOneResponseModel copyWith({  String? status,
  String? message,
  List<Data>? data,
}) => IntroScreenOneResponseModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  String? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 4
/// name : "UTME JAMB"
/// image : "1696105532_UTME.jpg"
/// description : "Unified Tertiary Matriculation Examination JAMB"
/// price_ngn : "2500.00"
/// price_usd : "4.00"
/// price_eur : "4.00"
/// mcq : 1
/// theory : null
/// practical : null
/// available : 1

class Data {
  Data({
      String? title,
      String? subtitle,
      String? img,}){
    _title = title;
    _subtitle = subtitle;
    _img = img;
}

  Data.fromJson(dynamic json) {
    _title = json['title'];
    _subtitle = json['subtitle'];
    _img = json['img'];
  }
  String? _title;
  String? _subtitle;
  String? _img;
Data copyWith({
  String? title,
  String? subtitle,
  String? img,
}) => Data(
  title: title ?? _title,
  subtitle: subtitle ?? _subtitle,
  img: img ?? _img,
);

  String? get title => _title;
  String? get subtitle => _subtitle;
  String? get img => _img;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['subtitle'] = _subtitle;
    map['img'] = _img;
    return map;
  }

}