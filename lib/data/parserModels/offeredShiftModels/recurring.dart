class Recurring {
  Recurring({
    this.id,
    this.startAt,
    this.endAt,
    this.isAvailable,
  });

  Recurring.fromJson(dynamic json) {
    id = json['id'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    isAvailable = json['is_available'];
  }

  int? id;
  String? startAt;
  String? endAt;
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['start_at'] = startAt;
    map['end_at'] = endAt;
    map['is_available'] = isAvailable;
    return map;
  }

  @override
  String toString() {
    return 'Recurring{id: $id, startAt: $startAt, endAt: $endAt, isAvailable: $isAvailable}';
  }
}
