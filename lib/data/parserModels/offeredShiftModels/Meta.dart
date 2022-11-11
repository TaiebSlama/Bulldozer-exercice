class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  Meta.fromJson(dynamic json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    map['from'] = from;
    map['last_page'] = lastPage;
    map['path'] = path;
    map['per_page'] = perPage;
    map['to'] = to;
    map['total'] = total;
    return map;
  }

  @override
  String toString() {
    return 'Meta{currentPage: $currentPage, from: $from, lastPage: $lastPage, path: $path, perPage: $perPage, to: $to, total: $total}';
  }
}
