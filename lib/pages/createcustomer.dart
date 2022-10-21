import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/pages/contact.dart';

// import 'package:fulfilsalesapp/pages/dashboard.dart';
// import 'package:fulfilsalesapp/helpers/TrianglePainter.dart';
// import 'package:fulfilsalesapp/pages/home.dart';
import 'package:fulfilsalesapp/utils/api.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';
import '../models/company.dart';
import '../models/zone.dart';

class CustomerPost extends StatefulWidget {
  const CustomerPost({Key? key}) : super(key: key);
  @override
  _customerform createState() => _customerform();
}

class _customerform extends State<CustomerPost> {
  var _formKey = GlobalKey<FormState>();
  var _emailController = TextEditingController();
  var _name = TextEditingController();
  var _phone = TextEditingController();
  var _shop_name=TextEditingController();
   var _address=TextEditingController();
  String _customer_type='Customer';
  String _gender="Male";
   String _company_id='';
  String _zone ="";
  // var _obsecure = true;
  List<Company> companies = <Company>[];
  List<String> gender=['Male','Female'];
  
  List<Zone> zones=<Zone>[];
   // ignore: unused_field
   var _isLoading = true;
  
  _getdata() async {
    companies = await Api.getCompany();
    // print(contacts[0].email);
    _company_id = companies[0].id.toString();
     zones=await Api.getZone();
    _zone=zones[0].id;
    if (zones.length > 0) {
      setState(() {
        _isLoading = false;
      });
    }
    
  }
  @override
  void initState() {
    _getdata();
    super.initState();
  }

  @override
 
  Widget build(BuildContext context) {
    
  
    // var mSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Contacts'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Kpo.getShoppingCart(context),
            ),
            // child: Icon(Icons.qr_code_2_outlined),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Stack(children: [
          // CustomPaint(
          //   painter: TrianglePainter(mSize),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _name,
                        keyboardType: TextInputType.text,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "Enter Name";
                          }
                          // if (v.length < 7) {
                          //   return "Phone နံပါတ် မှားနေပါ";
                          // }
                          return null;
                        },
                        onChanged: (v) {
                          if (v.length < 4) {
                            print("Error");
                          } else {
                            print(v);
                          }
                        },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(fontFamily: "Burmese"),
                          prefixIcon: Icon(Icons.person),
                          labelText: "Name",
                          labelStyle:
                              TextStyle(color: Vary.normal, fontSize: 16.0),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.text,
                        // validator: (v) {
                        //   if (v!.isEmpty) {
                        //     return "Enter Email";
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
                          labelStyle:
                              TextStyle(color: Vary.normal, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _phone,
                        keyboardType: TextInputType.text,
                
                        decoration: InputDecoration(
                          errorStyle: TextStyle(fontFamily: "Burmese"),
                          prefixIcon: Icon(Icons.phone),
                          labelText: "Phone",
                          labelStyle:
                              TextStyle(color: Vary.normal, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: _shop_name,
                        keyboardType: TextInputType.text,
                        // validator: (v) {
                        //   if (v!.isEmpty) {
                        //     return "Enter Phone";
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
                          prefixIcon: Icon(Icons.shop),
                          labelText: "Shop Name",
                          labelStyle:
                              TextStyle(color: Vary.normal, fontSize: 20.0),
                        ),
                      ),
                     SizedBox(height: 10,),
                      TextFormField(
                        controller: _address,
                        keyboardType: TextInputType.text,
                        // validator: (v) {
                        //   if (v!.isEmpty) {
                        //     return "Enter Phone";
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
                          prefixIcon: Icon(Icons.map),
                          labelText: "Address",
                          labelStyle:
                              TextStyle(color: Vary.normal, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 30,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Gender",
                            fillColor: Colors.white),

                        hint: Text(
                            'Select Gender'), // Not necessary for Option 1
                        value: _gender,
                        onChanged: (newValue) {
                          setState(() {
                            _gender =newValue!;
                          });
                        },
                        items: gender.map((item) {
                          return DropdownMenuItem<String>(
                            child: new Text(item),
                            value:item,
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 30),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Name",
                            fillColor: Colors.white),

                        hint: Text(
                            'Select Company'), // Not necessary for Option 1
                        value: _company_id,
                        onChanged: (newValue) {
                          setState(() {
                            _company_id = newValue.toString();
                          });
                        },
                        items: companies.map((company) {
                          return DropdownMenuItem(
                            child: new Text(company.name),
                            value: company.id,
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 30),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Name",
                            fillColor: Colors.white),

                        hint: Text(
                            'Select Zone'), // Not necessary for Option 1
                        value: _zone,
                        onChanged: (newValue) {
                          setState(() {
                            _zone = newValue.toString();
                          });
                        },
                        items: zones.map((zone) {
                          return DropdownMenuItem(
                            child: new Text(zone.name),
                            value: zone.id.toString(),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          Container(
                            width: 150,
                            child: TextButton(
                                onPressed: () async {
                                  var json = jsonEncode({
                                    "email": _emailController.text,
                                    "phone": _phone.text,
                                    "name": _name.text,
                                    'company_id':_company_id,
                                    'zone_id':_zone,
                                    'gender':_gender,
                                    'shop_name':_shop_name.text,
                                    'customer_type':_customer_type,
                                    'address':_address.text,
                                  });
                                  print(json);
                                  bool bol = await Api.addcustomer(json: json);
                                  if (bol) {
                                    // print(bol);
                                    // ignore: use_build_context_synchronously
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Contactlist()));

                                    // print(Vary.user?.id);
                                    // Kpo.getSocket();
                                    // Navigator.pop(context);
                                  } else {
                                    Kpo.toast(context, Vary.errMsg);
                                  }
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue[400],
                                    shadowColor: Colors.black),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("Add",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Vary.primary))
                                  ],
                                )),
                          ),
                         
                          SizedBox(
                            width: 20,
                          ),
                         
                          Container(
                            width: 150,
                            child: TextButton(
                                onPressed: ()  {
                                 Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red[400],
                                    shadowColor: Colors.black),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("Cancel",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Vary.primary))
                                  ],
                                )),
                          ),
                         
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]))));
  }
}
