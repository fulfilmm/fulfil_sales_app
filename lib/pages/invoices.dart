
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:fulfilsalesapp/models/invoice.dart';
import 'package:fulfilsalesapp/pages/invoice_details.dart';
import 'package:intl/intl.dart';
import '../utils/api.dart';
// import '../utils/vary.dart';

class InvoiceList extends StatefulWidget {
  @override
  _invoicelist createState() => _invoicelist();
}

class _invoicelist extends State<InvoiceList> {
  List<Invoice> invoices = <Invoice>[];
  final df = new DateFormat('dd-MM-yyyy hh:mm a');

  _loadContact() async {
    invoices = await Api.getInvoices();

    if (invoices.length > 0) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _loadContact();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices'),
        actions: <Widget>[
          // child: Icon(Icons.qr_code_2_outlined),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8),
        itemCount: invoices.length,
        reverse: false,
        itemBuilder: (BuildContext context, index) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.black12,
                  )
                ],
              ),
              padding: EdgeInsets.all(10.0),
              // color: Colors.blue[500],
              child: ListTile(
                // leading: GestureDetector(
                //     onTap: () {},
                //     child: CircleAvatar(
                //       backgroundColor: Colors.white,
                //       child: Icon(Icons.person),
                //     )
                //     // Container(
                //     //   width: 48,
                //     //   height: 48,
                //     //   padding: EdgeInsets.symmetric(vertical: 4.0),
                //     //   alignment: Alignment.center,
                //     //   child:
                //     //       Image.network("${Vary.BASE_URL}/product_picture/${products[index].image}"),

                //     // ),
                //     ),
                // trailing: Icon(Icons.more_vert, color: Colors.white,),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${invoices[index].invoice_no}",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Status :${invoices[index].status}",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                subtitle: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child:Row(children: [
                        Icon(Icons.person,size: 20,),
                        SizedBox(width: 20.0,),
                        Text(
                        "${invoices[index].contacts[0].name}",
                        style: TextStyle(color: Colors.black),
                      ),
                      ],)
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child:Row(children: [
                        Icon(Icons.email,size: 20,),
                        SizedBox(width: 20.0,),
                        Text(
                        "${invoices[index].email}",
                        style: TextStyle(color: Colors.black),
                      ),
                      ],)
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Icon(Icons.phone,size: 20,),
                        SizedBox(width: 20.0,),
                        Text(
                        "${invoices[index].contacts[0].phone}",
                        style: TextStyle(color: Colors.black),
                      ),
                      ],)
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Issue Date :${
                          invoices[index].invoice_date[8]+
                          invoices[index].invoice_date[9]+'/'+
                           invoices[index].invoice_date[5]+
                            invoices[index].invoice_date[6]+'/'+
                             invoices[index].invoice_date[0]+
                              invoices[index].invoice_date[1]+
                               invoices[index].invoice_date[2]+
                                invoices[index].invoice_date[3]
                          }",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Due Date :${
                           invoices[index].due_date[8]+
                          invoices[index].due_date[9]+'/'+
                           invoices[index].due_date[5]+
                            invoices[index].due_date[6]+'/'+
                             invoices[index].due_date[0]+
                              invoices[index].due_date[1]+
                               invoices[index].due_date[2]+
                                invoices[index].due_date[3]
                        }",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Due Amount :${invoices[index].due_amount}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Amount :${invoices[index].grand_total}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),

                onTap: () {
                  setState(() {
                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InvoiceDetail(
                                          invoice: invoices[index],
                                        )));
                  });
                },
              ));
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 2,
        ),
      ),
    );
  }

  Future<void> scanBarcodeNormal() async {
    // print('hello');
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  // _getBorder() {
  //   return OutlineInputBorder(
  //     borderSide: BorderSide(color: Vary.normal, width: 0.4),
  //     borderRadius: BorderRadius.horizontal(
  //       left: Radius.circular(25),
  //       right: Radius.circular(25),
  //     ),
  //   );
  // }

//  int _selectedIndex=0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
}
