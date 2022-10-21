class Branch{
  String id,name;
  Branch({
    required this.id,
    required this.name
  });
 factory Branch.fromJson(dynamic json) {
    return Branch(
      id:json['id'].toString(),
      name: json['name']
    );
 }
}