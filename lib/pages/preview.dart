import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/models/Product.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';

import '../utils/api.dart';

class Preview extends StatefulWidget {
  final Product product;

  const Preview({Key? key, required this.product}) : super(key: key);

  @override
  
  _PreviewState createState() => _PreviewState(this.product);
}

class _PreviewState extends State<Preview> {
  Product product;
  _PreviewState(this.product);
  List<Unit> units=<Unit>[];
  _loaddata()async{
    units=await Api.getProductUnit(id:product.id);
  }
  @override
  void initState() {
    
    _loaddata();
    super.initState();
  }
  String? selectedValue='PCS';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Preview"),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.product_name,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: "Title",
                          fontWeight: FontWeight.bold,
                          color: Vary.normal)),
                  SizedBox(height: 20),
                  Center(
                      child: Image.network(
                    "${Vary.BASE_URL}/product_picture/${product.image}",
                    width: 200,
                    height: 100,
                  )),
                  _makeRichText("Price", "Price\t\t\t\t :\t\t3500 Ks"),
                  _makeRichText("Size", "Variant :\t\tLarge Size"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text('Unit \t\t\t\t\t\t:',style:TextStyle(
              color: Vary.normal, fontSize: 20.0, fontFamily: "Title")),
              DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: const [
                Icon(
                  Icons.list,
                  size: 16,
                  
                ),
                SizedBox(
                  width: 4,
                ),
                
              ],
            ),
            items:units
                .map((item) => DropdownMenuItem(
                      value: item.unit_name,
                      child: Text(
                        item.unit_name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                         
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            icon: const Icon(
              Icons.arrow_drop_down,
            ),
            iconSize: 18,
            buttonHeight: 50,
            buttonWidth: 160,
            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            buttonElevation: 2,
            itemHeight: 40,
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 200,
            dropdownWidth: 200,
            dropdownPadding: null,
            
            dropdownElevation: 8,
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(-20, 0),
          ),
                    ],
                  ),
                  _makeRichText("Promo", "Description:"),
                  Text(product.description),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            Kpo.addToCart(product);
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text("Buy Now",
                                  style: TextStyle(
                                      fontFamily: "Title",
                                      fontSize: 25.0,
                                      color: Colors.white))
                            ],
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Vary.normal,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))))),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  _makeRichText(text1, text2) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "$text1\n",
          style: TextStyle(fontSize: 24.0, fontFamily: "Title")),
      TextSpan(
          text: "$text2",
          style: TextStyle(
              color: Vary.normal, fontSize: 20.0, fontFamily: "Title"))
    ]));
  }
}
