class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  Links.fromJson(dynamic json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  String? first;
  String? last;
  dynamic prev;
  String? next;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first'] = first;
    map['last'] = last;
    map['prev'] = prev;
    map['next'] = next;
    return map;
  }

  @override
  String toString() {
    return 'Links{first: $first, last: $last, prev: $prev, next: $next}';
  }
}
