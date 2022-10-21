

import 'package:flutter/material.dart';

import 'package:fulfilsalesapp/models/invoice.dart';
import 'package:fulfilsalesapp/models/orderitem.dart';

import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

import '../utils/api.dart';

class InvoiceDetail extends StatefulWidget {
  final Invoice invoice;

  const InvoiceDetail({Key? key, required this.invoice}) : super(key: key);

  @override
  _Inv_detail createState() => _Inv_detail(this.invoice);
}

class _Inv_detail extends State<InvoiceDetail> {
  Invoice invoice;
  _Inv_detail(this.invoice);
  List<OrderItem> items = <OrderItem>[];

  _loaddata() async {
    items = await Api.getInvoiceItems(id: invoice.id);
    if (items.length > 0) {
      setState(() {});
    }
  }

  @override
  void initState() {
    _loaddata();
    super.initState();
  }

  String? selectedValue = 'PCS';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Invoice-${invoice.invoice_no}"),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Kpo.getShoppingCart(context),
            )
          ],
        ),
        body: Stack(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(invoice.invoice_no,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "Title",
                                  fontWeight: FontWeight.bold,
                                  color: Vary.normal)),
                          Column(
                            children: [
                              Text(
                                "Issue Date :${invoice.invoice_date[8] + invoice.invoice_date[9] + '/' + invoice.invoice_date[5] + invoice.invoice_date[6] + '/' + invoice.invoice_date[0] + invoice.invoice_date[1] + invoice.invoice_date[2] + invoice.invoice_date[3]}",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Due Date :${invoice.due_date[8] + invoice.due_date[9] + '/' + invoice.due_date[5] + invoice.due_date[6] + '/' + invoice.due_date[0] + invoice.due_date[1] + invoice.due_date[2] + invoice.due_date[3]}",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Customer Information'),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(invoice.contacts[0].name),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(invoice.contacts[0].phone),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Shipping Address :'),
                              ),
                              Align(
                                child: Text(invoice.shipping_address),
                              )
                            ]),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Billing Address :'),
                              ),
                              Align(
                                child: Text(invoice.billing_address),
                              )
                            ]),
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columnSpacing: 24.0,
                            columns: [
                              DataColumn(label: Text('Product')),
                              DataColumn(label: Text('Item Code')),
                              DataColumn(label: Text('Qty')),
                              DataColumn(label: Text('Price')),
                              DataColumn(label: Text('Total')),
                            ],
                            rows: List.generate(items.length, (index) {
                              final product_name = items[index].variant['product_name'];
                              final item_code = items[index].variant['item_code'];
                              final unit = items[index].unit;
                              final price = items[index].price;
                              final total = items[index].total;
                              final qty = items[index].qty;

                              return DataRow(cells: [
                                DataCell(Container(
                                    width: 75, child: Text(product_name))),
                                DataCell(Container(
                                    width: 75, child: Text(item_code))),
                                DataCell(
                                    Container(child: Text(qty + "\t" + unit['unit'].toString()))),
                                DataCell(Container(child: Text(price))),
                                DataCell(Container(child: Text(total))),
                              ]);
                            }),
                          ),
                        ),
                      ),
                      // SizedBox(height: 20),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total:'),
                          Text(
                              '${double.parse(invoice.grand_total) - double.parse(invoice.tax_amount=='null'?'0.0':invoice.tax_amount) + double.parse(invoice.discount)}'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tax Amount:'),
                          Text('${invoice.tax_amount=='null'?'0.0':invoice.tax_amount.toString()}'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount:'),
                          Text('${double.parse(invoice.discount)}'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grand Total:'),
                          Text('${double.parse(invoice.grand_total)}'),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),

                    ],
                  ),
                ))
          ],
        ));
  }
}
