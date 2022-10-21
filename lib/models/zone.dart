class Zone{
  String id,name;
  Zone({
    required this.id,
    required this.name
  });
 factory Zone.fromJson(dynamic json) {
    return Zone(
      id:json['id'].toString(),
      name: json['name']
    );
 }
}