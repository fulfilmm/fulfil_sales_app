class Company{
  String id,name;
  Company({
    required this.id,
    required this.name
  });
 factory Company.fromJson(dynamic json) {
    return Company(
      id:json['id'].toString(),
      name: json['name']
    );
 }
}