import 'Recurring.dart';

class Data {
  Data({
    this.id,
    this.status,
    this.startAt,
    this.endAt,
    this.postName,
    this.postId,
    this.startSoon,
    this.recurring,
    this.company,
    this.buyPrice,
    this.bonus,
    this.latitude,
    this.longitude,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    status = json['status'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    postName = json['post_name'];
    postId = json['post_id'];
    startSoon = json['start_soon'];
    recurring = json['recurring'] != null
        ? Recurring.fromJson(json['recurring'])
        : null;
    company = json['company'];
    buyPrice = json['buy_price'];
    bonus = json['bonus'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  int? id;
  String? status;
  String? startAt;
  String? endAt;
  String? postName;
  int? postId;
  bool? startSoon;
  Recurring? recurring;
  String? company;
  String? buyPrice;
  int? bonus;
  double? latitude;
  double? longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['status'] = status;
    map['start_at'] = startAt;
    map['end_at'] = endAt;
    map['post_name'] = postName;
    map['post_id'] = postId;
    map['start_soon'] = startSoon;
    if (recurring != null) {
      map['recurring'] = recurring?.toJson();
    }
    map['company'] = company;
    map['buy_price'] = buyPrice;
    map['bonus'] = bonus;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  @override
  String toString() {
    return 'Data{id: $id, status: $status, startAt: $startAt, endAt: $endAt, postName: $postName, postId: $postId, startSoon: $startSoon, recurring: ${recurring.toString()}, company: $company, buyPrice: $buyPrice, bonus: $bonus, latitude: $latitude, longitude: $longitude}';
  }
}
