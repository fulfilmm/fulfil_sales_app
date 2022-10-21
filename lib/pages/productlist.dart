import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:fulfilsalesapp/pages/preview.dart';
// import 'package:fulfilsalesapp/pages/cart.dart';

import '../models/Product.dart';
import '../utils/api.dart';
import '../utils/kpo.dart';
import '../utils/vary.dart';

class productlist extends StatefulWidget {
  final String id;
 
  

  const productlist({required this.id});

  @override
  _productlist createState() => _productlist(id);
}

class _productlist extends State<productlist> {
  String id;
  // ignore: unused_field
  String _scanBarcode='Unknown';

  List<Product> products = <Product>[];
  _productlist(this.id);

  _loadproduct() async {
    products = await Api.catProducts(id: id,sales_type:Vary.sales_type);
    if (products.length > 0) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _loadproduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title:  Text('FulFil Sales App'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Kpo.getShoppingCart(context),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
            width: 250,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: "Enter a keyword",
                enabledBorder: _getBorder(),
                focusedBorder: _getBorder(),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(),
            child: IconButton(
              iconSize: 40,
              padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
              icon: const Icon(
                Icons.qr_code_scanner_rounded,
                color: Colors.white,
              ),
              onPressed: () => scanBarcodeNormal(),
            ),
          )
          // child: Icon(Icons.qr_code_2_outlined),
        ],
      ),
      
      body: 
     
      ListView.separated(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
        itemCount: products.length,
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
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 48,
                    height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    alignment: Alignment.center,
                    child: Image.network(
                        "${Vary.BASE_URL}/product_picture/${products[index].image}"),
                  ),
                ),
                // trailing: Icon(Icons.more_vert, color: Colors.white,),
                title: Text(
                  "${products[index].product_name}",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Available Stock:${products[index].available}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Price :${products[index].unit[0].price==0?'Not Fixed':products[index].unit[0].price} /${products[index].unit[0].unit_name}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Preview(
                                          product: products[index],
                                        )));
                          },
                          child: Icon(Icons.remove_red_eye,
                               size: 32)),
                          
                      SizedBox(width: 10,),
                      InkWell(
                        child: Icon(Icons.shopping_cart,size: 32,),
                        onTap: () {
                          Kpo.addToCart(products[index]);
                          setState(() {});
                        },
                      ),
                      ],)
                       
                    ),
                    
                  ],
                ),
              ));
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 2,
        ),
      ),
    );
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
     
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    products.forEach((element) { 
      if(element.item_code.toUpperCase()==barcodeScanRes){
        Kpo.addToCart(element);
        setState(() {
          
        });
      }
    });


    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  

  _getBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Vary.normal, width: 0.4),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(25),
        right: Radius.circular(25),
      ),
    );
  }

//  int _selectedIndex=0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
}
