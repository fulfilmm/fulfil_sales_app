// import 'dart:convert';

// import 'package:fulfilsalesapp/models/variant.dart';

class Product {
 String id,stockbalance,available,product_name,variant_name,item_code,image,description,unit_id;

 int price;
 
 Map<String,dynamic>  variant;
 List <Unit> unit;
  int count = 1;

  Product(
      {
        required this.price,
        required this.unit_id,
        required this.id,
        required this.stockbalance,
        required this.available,
        required this.variant_name,
        required this.image,
        required this.item_code,
        required this.variant,
        required this.unit,
        required this.product_name,
        required this.description
      });

  factory Product.fromJson(dynamic json) {
    // List variant_list = jsonDecode(json['variant'])as List;
    List unit_list=json['unit'] as List;
    // List<Variant> variant = variant_list.map((e) => Variant.fromJson(e)).toList();
    List<Unit> unit=unit_list.map((e) => Unit.fromJson(e)).toList();
    return Product(
        unit_id: '',
        variant: json['variant'],
        id:json['id'].toString(),
        stockbalance: json['stockbalance'].toString(),
        available: json['available'].toString(),
        unit: unit,
        description: json['description'],
        product_name: json['name'],
        variant_name: json['variant_name']??json['name'],
        item_code:json['item_code'],
        image: json['image'].toString(),
        price: json['price']??0

      
    );
  }
  
}

class Variant {

 
  String id;
  String item_code,variant_name,image;
  double additional_price;

  Variant(
      {
      required this.id,
      required this.item_code,
      required this.variant_name,
      required this.image,
      required this.additional_price
      });

  factory Variant.fromJson(dynamic json) {
    return Variant(
      id: json["id"],
      item_code: json["item_code"],
      variant_name: json["variant"],
      image: json["image"],
      additional_price: json["aditional_price"],
    );
  }
}

class Unit {
  String id;
  String unit_name;
  String unit_convert_rate;
  String variant_id;
  String price;
  Unit(
      {required this.unit_name,
      required this.id,
      required this.unit_convert_rate,
      required this.variant_id,
      required this.price
      });

  factory Unit.fromJson(dynamic json) {
    return Unit(
        id: json["id"].toString(),
        unit_name: json["unit"],
        variant_id: json['variant_id'].toString(),
        unit_convert_rate: json["unit_convert_rate"].toString(),
        price: json['price']==null?'0':json['price'].toString()
        );
  }
}




