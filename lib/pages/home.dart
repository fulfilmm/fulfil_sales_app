// import 'package:card_swiper/card_swiper.dart';
// import 'package:card_swiper/card_swiper.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// import 'package:fulfilsalesapp/models/contact.dart';

import 'package:fulfilsalesapp/pages/drawer.dart';

import 'package:fulfilsalesapp/pages/preview.dart';
// import 'package:fulfilsalesapp/pages/flash.dart';
import 'package:fulfilsalesapp/pages/productlist.dart';
// import 'package:fulfilsalesapp/pages/flash.dart';
// import 'package:fulfilsalesapp/pages/itemdetail.dart';
import 'package:fulfilsalesapp/utils/api.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';

import '../models/Product.dart';
import '../models/category.dart';
import '../utils/vary.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  // ignore: unused_field
  String _scanBarcode = 'Unknown';
  List<Category> categories = <Category>[];
  List<Product> products = <Product>[];
  var _isLoading = true;
  

  _loadCategories() async {
    categories = await Api.getAllCats();
    products = await Api.allProduct(sale_type:Vary.sales_type);
   
    // tags = await Api.getAllTags();
    if (categories.length > 0) {
      setState(() {
        _isLoading = false;
      });
    }
    
  }

  @override
  void initState() {
    _loadCategories();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 

      AppBar(
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
              // textAlign: TextAlign.center,
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
            // decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(5.0)

            // ),
            child: IconButton(
              iconSize: 30,
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
      
      body: SingleChildScrollView(
        child: _isLoading
            ? Center(
                child: Column(children: [
                  SizedBox(
                    height: 150,
                  ),
                  CircularProgressIndicator()
                ]),
              )
            : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                SizedBox(height: 10),
                Container(
                  
                    // height: 150,
                    // child: Swiper(
                    //   itemCount: 0,
                    //   scale: 0.5,
                    //   viewportFraction: 0.5,
                    //   autoplay: true,
                    //   duration: 1000,
                    // )
                    ),
                SizedBox(height: 2),
                _makeTitleText("Categories"),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: 100,
                    child: Swiper(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            child: Container(
                              width: 50,
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    child: Image.network(Vary.BASE_URL +
                                        "/product_picture/" +
                                        categories[index].image),
                                  ),
                                  Text("${categories[index].name}")
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productlist(
                                          id: categories[index].id)));
                            });
                      },
                      scale: 0.1,
                      viewportFraction: 0.3,
                      autoplay: true,
                      duration: 1000,
                      itemWidth: 20,
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                _makeTitleText('Items'),
                Container(
                  height: 500,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 8, bottom: 8),
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
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Variant:${products[index].variant['variant']}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
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
                                    "Price :${products[index].unit[0].price=='0'?'Not Fiexed':products[index].unit[0].price} / ${products[index].unit[0].unit_name}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Preview(
                                                            product:
                                                                products[index],
                                                          )));
                                            },
                                            child: Icon(Icons.remove_red_eye,
                                                size: 32)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                       InkWell(
                                          child: Icon(
                                            Icons.shopping_cart,
                                            size: 32,
                                          ),
                                          onTap: () {
                                             if(products[index].unit[0].price!='0'){
                                            Kpo.addToCart(products[index]);
                                             }
                                            
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(
                      thickness: 2,
                    ),
                  ),
                )
              ]),
      ),
      drawer:DrawerWidget.menu(context)
      
    );
  }

  // _makeCategoryAction(Category category) {
  //   return
  //   InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) =>productlist(
  //                 id:category.id
  //               )));
  //           //  MaterialPageRoute(
  //           //     builder: (context) =>MultiDropDown61061194(
  //           //       // id:category.id
  //           //     )));
  //     },

  //     child:
  //     Card(
  //       color: Colors.white,
  //       elevation:5,
  //                     margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(10.0),
  //                     ),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [

  //           SizedBox(height: 10),
  //           Image.network(Vary.BASE_URL+"/product_picture/"+category.image,
  //             width: 120.0,
  //             height: 120.0,
  //           ),
  //           Container(
  //             width: 100,
  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  //             child: Center(

  //               child: Text(category.name,
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       fontFamily: "English",
  //                       fontWeight:FontWeight.bold,
  //                       color:Colors.black)),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _makeTitleText(text) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
        // decoration: BoxDecoration(
        //     color: Colors.lightBlue,
        //     borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
        child: Text(text,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Title")));
  }

  // @override


  // Platform messages are asynchronous, so we initialize in an async method.
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
      borderSide: BorderSide(
        color: Colors.white,
        width: 0.2,
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(25),
        right: Radius.circular(25),
      ),
    );
  }
}
