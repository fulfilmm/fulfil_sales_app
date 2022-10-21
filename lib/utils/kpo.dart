

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:fulfilsalesapp/utils/vary.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';


import '../models/Product.dart';
import '../pages/cart.dart';

class Kpo {
  static List<Product> cartProducts = [];

  static String SOCKET_ENDPOINT =
      "${Vary.BASE_URL}/chat?token=${Vary.user?.token}";

  static IO.Socket? socket;

  static getSocket() {
    socket = IO.io(
        SOCKET_ENDPOINT,
        OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
            .build());
    socket?.onConnect((_) {
      print('Socket connect');
    });
  }

  static Widget getShoppingCart(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartPage()));
      },
      child: Stack(
        // overflow: Overflow.visible,
        children: [
          Icon(
            Icons.shopping_cart,
            size: 40.0,
            color: Colors.white,
          ),
          Positioned(
            right: -1,
            child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Center(
                    child: Text("${cartProducts.length}".padLeft(2, "0"),
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
          )
        ],
      ),
    );
  }

  static addToCart(product) {
    bool exist = false;
    if (cartProducts.length > 0) {
      cartProducts.forEach((prod) {
        if (prod.id == product.id) {
          exist = true;
          prod.count++;
        }
      });
      if (!exist) {
        print(product);
        cartProducts.add(product);
      }
    } else {
      cartProducts.add(product);
    }
  }

  static reduceProduct(product) {
    cartProducts.forEach((prod) {
      if (prod.id == product.id) {
        if (prod.count > 1) {
          prod.count--;
        }
      }
    });
  }

  static removeProduct(product) {
    product.count = 1;
    cartProducts.removeWhere((prod) => prod.id == product.id);
  }
  static clearCart(){
    cartProducts=[];
  }

  static int getProductTotal() {
    int total = 0;
    cartProducts.forEach((prod) {
      total += prod.count * prod.price;
    });
    return total;
  }

  static toast(context, text) {
    showToast(text,
        context: context,
        backgroundColor: Vary.normal,
        textStyle: TextStyle(fontFamily: "Burmese", color: Vary.primary),
        position: StyledToastPosition.center,
        animation: StyledToastAnimation.scale);
  }

  static generateOrder() {
    List<Map> carList = [];
    cartProducts.forEach((pro) {
      var map = new Map();
      map["variant_id"] = pro.variant['id'];
      map["qty"] = pro.count;
      map['unit_id']=pro.unit_id;
      map['price']=pro.price;
      map['discount']=0;
      map['total']=pro.count*pro.price;
      carList.add(map);
    });
    return carList;
  }

  static user() {
    List<Map> user = [];
    var map = new Map();
    map['id'] = Vary.user?.id;
    map['name'] = Vary.user?.name;
    user.add(map);
    return user;
  }
  Future<void> printpdf() async {
  
}


  
}
