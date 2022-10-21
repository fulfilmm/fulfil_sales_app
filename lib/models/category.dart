class Category {
  String  name,image;
  String id;
  // List<Subcat> subcats;

  Category(
      {
        required this.id,
      required this.name,
      required this.image
      // required this.created,
      // required this.subcats
      });

  factory Category.fromJson(dynamic json) {
    // List subList = json["subcats"] as List;
    // List<Subcat> subcats = subList.map((e) => Subcat.fromJson(e)).toList();
    return Category(
        id: json["id"].toString(),
        name: json["name"],
        image:json['image']
        // created: json["created"],
        // subcats: subcats
        );
  }
}

// class Subcat {
//   String id, name, image, catid, created;
//   Subcat(
//       {required this.id,
//       required this.name,
//       required this.image,
//       required this.catid,
//       required this.created,
//      });

//   factory Subcat.fromJson(dynamic json) {
//     return Subcat(
//         id: json["_id"],
//         name: json["name"],
//         image: json["image"],
//         catid: json["catid"],
//         created: json["created"],
//         );
//   }
// }

