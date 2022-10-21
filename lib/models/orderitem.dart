

class OrderItem{
  String id,variant_id,unit_id,qty,discount,price,total;
  Map<String,dynamic> unit;
  Map<String,dynamic> variant;
  int count=1;
  OrderItem(
    {
    required this.id,
    required this.variant_id,
    required this.unit_id,
    required this.qty,
    required this.discount,
    required this.price,
    required this.total,
    required this.variant,
    required this.unit
    
  }
  );
  factory OrderItem.fromJson(dynamic json) {
    return OrderItem(
      id:json['id'].toString(),
      variant: json['variant'],
      unit: json['unit'],
      price: json['unit_price'].toString(),
      qty: json['quantity'].toString(),
      total: json['total'].toString(),
      discount: json['discount']??'0'.toString(),
      unit_id: json['unit']['id'].toString(),
      variant_id: json['variant_id'].toString()

    );
  }
}