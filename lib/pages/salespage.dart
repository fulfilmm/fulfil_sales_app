import 'dart:convert';

import 'package:date_field/date_field.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/pages/invoices.dart';
import 'package:intl/intl.dart';
// import 'package:fulfilsalesapp/utils/kpo.dart';

import '../models/Product.dart';
import '../models/contact.dart';
import '../models/tax.dart';
import '../models/zone.dart';
import '../utils/api.dart';
import '../utils/kpo.dart';
import '../utils/vary.dart';
import 'login.dart';

class SalesPage extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<SalesPage> {
  var _formKey = GlobalKey<FormState>();
  var _emailController = TextEditingController();

  var _client_address = TextEditingController();
  var _bill_address = TextEditingController();
  var _discount=TextEditingController(text:'0');
  var _grand_total=TextEditingController(text:Kpo.getProductTotal().toString());
  
  var _total=TextEditingController(text: Kpo.getProductTotal().toString());
  DateTime invdate = DateTime.now();
  String _selectContact = "";
  String payment_type = 'Cash';
  String invoice_type = 'General Invoice';
  String _zone = "";
  String _tax_id='';
  String _tax_rate='';


  // String _inv_type = "";

  List<Contact> contacts = <Contact>[];
  final format = DateFormat("yyyy-MM-dd");
  String? inv_date, due_date;
  double _tax_amount=0.0;
  List<Product> products = <Product>[];
  List<Zone> zones = <Zone>[];
  List<Tax> taxes=<Tax>[];
  

  _submit() async {
    contacts = await Api.getcontact();
    zones = await Api.getZone();
    taxes=await Api.getTax();
    _tax_id=taxes[0].id.toString();
    _tax_rate=taxes[0].rate.toString();

    _zone = zones[0].id;
    products = Kpo.cartProducts;
    _selectContact = contacts[0].id.toString();
    setState(() {});
  }

  void initState() {
    _submit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sales Info Page", style: TextStyle(fontSize: 24.0)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _total,
                    keyboardType: TextInputType.text,
                    // validator: (v) {
                    //   if (v!.isEmpty) {
                    //     return "Phone နံပါတ် ဖြည့်ပါ";
                    //   }
                    //   // if (v.length < 7) {
                    //   //   return "Phone နံပါတ် မှားနေပါ";
                    //   // }
                    //   return null;
                    // },
                    // onChanged: (v) {
                    //   if (v.length < 4) {
                    //     print("Error");
                    //   } else {
                    //     print(v);
                    //   }
                    // },
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      
                      labelText: "Total",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _discount,
                    keyboardType: TextInputType.number,
                    onChanged: (v) {
                      print(v);
                      var value;
                      if(v==''){
                        value=0;
                      }else{
                        value=v;
                      }
                      var sub=Kpo.getProductTotal()-int.parse(value??'0');
                      taxes.forEach((tax) {
                        if(_tax_id==tax.id){  
                          _tax_amount=(tax.rate/100)*sub;
                         
                        }
                      });
                       setState(() {
                            
                          });
                       var gd=sub+_tax_amount;
                      _grand_total=TextEditingController(text:gd.toString());
                      setState(() {
                        
                      });

                    },
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      
                      labelText: "Discount",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Tax'),
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Tax",
                        fillColor: Colors.white),

                    hint: Text('Select Tax'), // Not necessary for Option 1
                    value: _tax_id,
                    onChanged: (newValue) {
                        var sub=Kpo.getProductTotal()-int.parse(_discount.text);
                        taxes.forEach((tax) {
                        if(newValue==tax.id){
                          _tax_amount=(tax.rate/100)*sub;
                          _tax_rate=tax.rate.toString();
                        }
                      });
                        var gd=sub+_tax_amount;
                        _grand_total=TextEditingController(text:gd.toString());
                      setState(() {
                        _tax_id = newValue!;

                      });
                    },
                    items: taxes.map((tax) {
                      return DropdownMenuItem(
                        child: Text(tax.name),
                        value: tax.id.toString(),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _grand_total,
                    keyboardType: TextInputType.text,
                    // validator: (v) {
                    //   if (v!.isEmpty) {
                    //     return "Phone နံပါတ် ဖြည့်ပါ";
                    //   }
                    //   // if (v.length < 7) {
                    //   //   return "Phone နံပါတ် မှားနေပါ";
                    //   // }
                    //   return null;
                    // },
                    // onChanged: (v) {
                    //   if (v.length < 4) {
                    //     print("Error");
                    //   } else {
                    //     print(v);
                    //   }
                    // },
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      
                      labelText: "Grand Total",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Customer'),
                  ),

                  DropdownButtonFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Name",
                        fillColor: Colors.white),

                    hint: Text('Select Customer'), // Not necessary for Option 1
                    value: _selectContact,
                    onChanged: (newValue) {
                      setState(() {
                        _selectContact = newValue.toString();
                      });
                    },
                    items: contacts.map((contact) {
                      return DropdownMenuItem(
                        child: new Text(contact.name),
                        value: contact.id,
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      suffixIcon: Icon(Icons.event_note),
                      labelText: 'Invoice Date',
                    ),
                    firstDate: DateTime.now().add(const Duration(days: 10)),
                    lastDate: DateTime.now().add(const Duration(days: 40)),
                    initialDate: DateTime.now().add(const Duration(days: 20)),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (DateTime? e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      setState(() {
                        inv_date = value.toString();
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      suffixIcon: Icon(Icons.event_note),
                      labelText: 'Due Date',
                    ),
                    firstDate: DateTime.now().add(const Duration(days: 10)),
                    lastDate: DateTime.now().add(const Duration(days: 40)),
                    initialDate: DateTime.now().add(const Duration(days: 20)),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (DateTime? e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      setState(() {
                        due_date = value.toString();
                      });
                    },
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Zone'),
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Zone",
                        fillColor: Colors.white),

                    hint: Text('Select Zone'), // Not necessary for Option 1
                    value: _zone,
                    onChanged: (newValue) {
                      setState(() {
                        _zone = newValue!;
                      });
                    },
                    items: zones.map((zone) {
                      return DropdownMenuItem(
                        child: Text(zone.name),
                        value: zone.id.toString(),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Invoice Type'),
                  ),
                  DropdownButtonFormField<String>(
                    hint: Text('Select Invoice Type'),
                    items: <String>['General Invoice', 'Cash On Delivery']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (inv_type) {
                      setState(() {
                        invoice_type = inv_type!;
                      });
                    },
                  ),
                  
                  SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Payment Type'),
                  ),
                  DropdownButtonFormField<String>(
                    hint: Text('Select Payment Method'),
                    items: <String>['Cash', 'Bank', 'E-Banking', 'Wave Money']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (payment_method) {
                      setState(() {
                        payment_type = payment_method!;
                      });
                    },
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    // validator: (v) {
                    //   if (v!.isEmpty) {
                    //     return "Phone နံပါတ် ဖြည့်ပါ";
                    //   }
                    //   // if (v.length < 7) {
                    //   //   return "Phone နံပါတ် မှားနေပါ";
                    //   // }
                    //   return null;
                    // },
                    // onChanged: (v) {
                    //   if (v.length < 4) {
                    //     print("Error");
                    //   } else {
                    //     print(v);
                    //   }
                    // },
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _client_address,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      prefixIcon: Icon(Icons.map),
                      labelText: "Shipping Address",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  ),
                SizedBox(height: 5,),
                  TextFormField(
                    controller: _bill_address,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontFamily: "Burmese"),
                      prefixIcon: Icon(Icons.map),
                      labelText: "Billing Address",
                      labelStyle: TextStyle(color: Vary.normal, fontSize: 20.0),
                    ),
                  )

                  // this is where the
                  // input goes

                  // RaisedButton(
                  // 	onPressed: _submit,
                  // 	child: Text("submit"),
                  // ),
                ],
              ),
            ),
            // this is where
            // the form field
            // are defined
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () async {
                  if (Vary.user == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  } else {
                    var json = jsonEncode({
                      "order_items": Kpo.generateOrder(),
                      'client_id': _selectContact,
                      'client_email': _emailController.text,
                      'client_address': _client_address.text,
                      'bill_address': _bill_address.text,
                      'inv_date': inv_date,
                      'due_date': due_date,
                      'inv_grand_total':_grand_total.text,
                      'payment_method': payment_type,
                      'tax_id':_tax_id.toString(),
                      'total':Kpo.getProductTotal().toString(),
                      'discount':_discount.text,
                      'tax_amount':_tax_amount.toString(),
                      'tax_rate':_tax_rate.toString(),
                      'invoice_type': invoice_type,
                      'sale_type': Vary.sales_type,
                      'zone_id':_zone,
                      'title':'Mobile Sales Invoice',
                      'delivery_fee':0
                    });
                    bool bol = await Api.upLoadInvoice(json: json);
                    print(bol);
                    if (bol) {
                      Kpo.cartProducts = [];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>InvoiceList()));
                    } else {
                      Kpo.toast(context, Vary.errMsg);
                    }
                  }
                },
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Vary.normal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                child: Text("Invoice Issue",
                    style: TextStyle(
                        color: Vary.primary,
                        fontFamily: "Title",
                        fontSize: 20.0)))
          ],
        ),
      ),
    );
  }
 
  
}
