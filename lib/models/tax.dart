class Tax {
  String id, name;
  int rate;

  Tax({
    required this.id,
    required this.name,
    required this.rate
  });

  factory Tax.fromJson(dynamic json) {
    return Tax(
        id: json['id'].toString(),
        name: json['name'],
        rate: json['rate']
    );
  }
}