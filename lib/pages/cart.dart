// import 'dart:convert';

// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/models/Product.dart';
// import 'package:fulfilsalesapp/models/unit.dart';
// import 'package:fulfilsalesapp/models/unit.dart';
import 'package:fulfilsalesapp/pages/login.dart';
import 'package:fulfilsalesapp/pages/salespage.dart';
import 'package:fulfilsalesapp/pages/unitdropdown.dart';
// import 'package:fulfilsalesapp/utils/api.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';

// import '../utils/api.dart';
// import 'package:radio_button_form_field/radio_button_form_field.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();

  
}

class _CartPageState extends State<CartPage> {
  List<Product>product=[];
  var _formKey = GlobalKey<FormState>();
  var _discount=TextEditingController();
 void loaddata(){
   product=Kpo.cartProducts;
 
 }
  @override
  void initState() {
    loaddata();
    
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping Cart", style: TextStyle(fontSize: 24.0)),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index) => buildCard(product[index]),
          )),
          _buildContainer()
        ]));
  }
  buildCard(Product product) {
  

    final List<Unit> units=product.unit;
    return Stack(
      // overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                        "${Vary.BASE_URL}/product_picture/${product.image}",
                        width: 50,
                        height: 70,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text(product.product_name,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: "Title",
                                    fontSize: 20.0,
                                    color: Vary.normal,
                                    fontWeight: FontWeight.bold)),
                            Text(product.item_code,
                                // textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Title",
                                    fontSize: 14.0,
                                    color: Vary.normal,
                                    fontWeight: FontWeight.bold)),
                            Text("InStock:" + product.available,
                                // textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Title",
                                    fontSize: 14.0,
                                    color: Vary.normal,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Padding(
                              //   padding: EdgeInsets.all(10.0),
                              // ),

                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Kpo.reduceProduct(product);
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Vary.normal,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13))),
                                      child: Icon(Icons.remove,
                                          color: Vary.primary),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text("${product.count}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Vary.normal)),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Kpo.addToCart(product);
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Vary.normal,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(13))),
                                      child:
                                          Icon(Icons.add, color: Vary.primary),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.0)),
                                      Column(
                                        children: [
                                          UnitDropDown(units:units,product: product,),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(children: [Text("x")]),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text("${product.price} Ks",
                                            style: TextStyle(
                                                fontFamily: "English",
                                                fontWeight: FontWeight.bold,
                                                color: Vary.normal)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                  Container(
                    child: Divider(thickness: 1, color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text("Total :${product.count * product.price} Ks",
                              style: TextStyle(
                                  fontFamily: "English",
                                  fontWeight: FontWeight.bold,
                                  color: Vary.normal)),
                        ],
                      ),
                    ],
                  ),
                  //
                  SizedBox(
                    height: 5.0,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: -1,
          child: InkWell(
            onTap: () {
              Kpo.removeProduct(product);
              setState(() {});
            },
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Vary.accent,
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Icon(
                Icons.close,
                color: Vary.primary,
                size: 16,
              ),
            ),
          ),
        )
      ],
    );
  }

  _buildContainer() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("SubTotal",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Title")),
              Text("${Kpo.getProductTotal()} Ks",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Vary.darkGrey,
                      fontFamily: "Title"))
            ],
          ),
          
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Text("Discount",
          //         style: TextStyle(
          //             fontSize: 24.0,
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontFamily: "Title")),
          //     // TextFormField(
          //     //   decoration: const InputDecoration(
          //     //     border: UnderlineInputBorder(),
          //     //     labelText: '',
          //     //   ),
          //     // ),
          //   ],
          // ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () async {
              if (Vary.user == null) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SalesPage()));
                // var json = jsonEncode({"items": Kpo.generateOrder()});
                // bool bol = await Api.orderUpload(json: json);
                // if (bol) {
                //   Kpo.cartProducts = [];
                //   Navigator.pushNamed(context, "/home");
                // } else {
                //   Kpo.toast(context, Vary.errMsg);
                // }
              }
            },
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: Colors.blue[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: Text("Next",
                style: TextStyle(
                    color: Vary.primary, fontFamily: "Title", fontSize: 20.0)),
          ),
        ],
      ),
    );
  }
}
