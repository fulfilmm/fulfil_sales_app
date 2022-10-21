import 'package:fulfilsalesapp/models/contact.dart';

class Invoice {
  String id,invoice_no,total,grand_total,tax_amount,
  discount,due_amount,shipping_address,billing_address,
  email,status,sale_type,invoice_type;
  dynamic invoice_date,due_date;
  List<Contact> contacts=[];
  Invoice(
      {
        required this.id,
        required this.invoice_no,
        required this.due_date,
        required this.due_amount,
        required this.invoice_date,
        required this.contacts,
        required this.total,
        required this.grand_total,
        required this.tax_amount,
        required this.discount,
        required this.shipping_address,
        required this.billing_address,
        // required this.customer,
        required this.email,
        required this.invoice_type,
        // required this.phone,
        required this.sale_type,
        required this.status,
      }
  );
  factory Invoice.fromJson(dynamic json) {
    // List variant_list = jsonDecode(json['variant'])as List;
    List<dynamic> customer=json['inv_customer'] as List ;
    // print(item_list);
    List<Contact> contact = customer.map((e) => Contact.fromJson(e)).toList();
    // List<dynamic> items=json['customer'].map((products) => new Contact.fromJson(products))
          // .toList();
    return Invoice(
      id: json['id'].toString(),
      invoice_no: json['invoice_id'],
      invoice_date: json['invoice_date'],
      due_date: json['due_date'],
      total: json['total'].toString(),
      grand_total: json['grand_total'].toString(),
      tax_amount: json['tax_amount']==null?'0':json['taxt_amount'].toString(),
      discount: json['discount']==null?'0':json['discount'].toString(),
      due_amount: json['due_amount'].toString(),
      shipping_address: json['customer_address'],
      billing_address: json['billing_address'],
      email: json['email'],
      invoice_type: json['invoice_type'],
      sale_type: json['inv_type'],
      status: json['status'],
      contacts:contact,
      

    );
}
}
// class Item {
//  String id,item_name,image,qty,price,unit_name,variant_name,item_code;
//     Item({
//       required this.id,
//       required this.image,
//       required this.item_name,
//       required this.variant_name,
//       required this.price,
//       required this.qty,
//       required this.unit_name,
//       required this.item_code
//     });

//   factory Item.fromJson(dynamic json) {
//     return Item(
//       id: json["id"].toString(),
//       item_code: json["item_code"],
//       variant_name: json["variant"],
//       image: json["image"],
//       price: json["price"],
//       qty: json['qty'],
//       unit_name: json['unit_name'],
//       item_name: json['product_name']

//     );
//   }
// }