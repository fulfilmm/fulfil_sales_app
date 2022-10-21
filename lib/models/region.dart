class Region{
  String id,name;
  Region({
    required this.id,
    required this.name
  });
 factory Region.fromJson(dynamic json) {
    return Region(
      id:json['id'].toString(),
      name: json['name']
    );
 }
}