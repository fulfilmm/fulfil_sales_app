import 'dart:convert';
import 'package:fulfilsalesapp/models/company.dart';
import 'package:fulfilsalesapp/models/contact.dart';
import 'package:fulfilsalesapp/models/orderitem.dart';
import 'package:http/http.dart' as http;
// import 'package:fulfilsalesapp//models/Category.dart';
// import 'package:shopvtwo/models/History.dart';
// import 'package:shopvtwo/models/Product.dart';
// import 'package:shopvtwo/models/Tag.dart';
import 'package:fulfilsalesapp/models/user.dart';

import '../models/Product.dart';
import '../models/branch.dart';
import '../models/category.dart';
import '../models/invoice.dart';
import '../models/region.dart';
import '../models/tax.dart';
import '../models/zone.dart';
import 'vary.dart';

class Api {
  static Future<List<Category>> getAllCats() async {
    List<Category> cats = [];
  
    Uri uri = Uri.parse("${Vary.API_URL}/auth/categories/");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    // var resp=response.body.toString();
    var responseData = jsonDecode(response.body);
    if (responseData["con"]) {
      List lisy = responseData["result"] as List;
      cats = lisy.map((e) => Category.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return cats;
  }
  
  static Future<List<Contact>> getcontact() async {
    List<Contact> contacts = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/api_customers");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    var responseData = jsonDecode(response.body);
    if (responseData["con"]) {
      List lisy = responseData["result"] as List;
      contacts = lisy.map((e) => Contact.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return contacts;
  }
  static Future<List<Company>> getCompany()async{
    List<Company> companies=[];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/api_companies");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    print(response.body);
    var responseData=jsonDecode(response.body);
    if(responseData['con']){
      List com=responseData['result'] as List;
      companies=com.map((e) => Company.fromJson(e)).toList();
    }else{
      print('error');
    }
    return companies;
  }
  static Future<List<Branch>> getBranch()async{
    List<Branch> branches=[];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/mobile_branch");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    print(response.body);
    var responseData=jsonDecode(response.body);
    if(responseData['con']){
      List com=responseData['result']as List;
      branches=com.map((e) => Branch.fromJson(e)).toList();
    }else{
      print('error');
    }
    return branches;
  }
  static Future<List<Region>> getregion()async{
    List<Region> regions=[];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/mobile_region");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    print(response.body);
    var responseData=jsonDecode(response.body);
    if(responseData['con']){
      List com=responseData['result'];
      regions=com.map((e) => Region.fromJson(e)).toList();
    }else{
      print('error');
    }
    return regions;
  }
  static Future<List<Zone>> getZone()async{
    List<Zone> zones=[];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/mobile_zone");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    var responseData=jsonDecode(response.body);
    if(responseData['con']){
      List com=responseData['result'] as List;
      zones=com.map((e) => Zone.fromJson(e)).toList();
    }else{
      print('error');
    }
    return zones;
  }
  static Future<List<Unit>> getProductUnit({id}) async {
    List<Unit> units = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/product/$id/units");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    var responseData = jsonDecode(response.body);
    if (responseData["con"]) {
      List lisy = responseData["result"] as List;
      units = lisy.map((e) => Unit.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return units;
  }
  static Future<List<Tax>> getTax() async {
    List<Tax> taxes = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/taxes");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    var responseData = jsonDecode(response.body);
    if (responseData["con"]) {
      List lisy = responseData["result"] as List;
      taxes = lisy.map((e) => Tax.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return taxes;
  }
  static Future<List<OrderItem>> getInvoiceItems({id})async{
    List<OrderItem> items=[];
    Uri uri=Uri.parse("${Vary.API_URL}/auth/invoice/$id/items");
    var response=await http.get(uri,headers: Vary.tokenHeader);
    var responseData=jsonDecode(response.body);
    // print(responseData['result']);
    if(responseData['con']){
      List inv_item=responseData['result']as List;
      items=inv_item.map((e) => OrderItem.fromJson(e)).toList();

      // print(items);
      
    }else{
      print('erro');

    }
    // print(items);
    return items;
  }
  static Future<List<Invoice>> getInvoices() async {
    List<Invoice> invoices = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/mobile_invoice");
    var response = await http.get(uri,headers: Vary.tokenHeader);
    var responseData = jsonDecode(response.body);
    if (responseData["con"]) {
      List lisy = responseData["result"] as List;
      invoices = lisy.map((e) => Invoice.fromJson(e)).toList();

    } else {
      print(responseData["msg"]);
    }
    return invoices;
  }

  static Future<List<Product>> catProducts({id,sales_type}) async {
    List<Product> products = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/product/category/$id/$sales_type");
    // print(uri);
    var response = await http.get(uri,headers: Vary.tokenHeader);
    // print(response.body);
    // var resp=json.encode(response.body);
    var responseData = jsonDecode(response.body);
    // print(responseData);
    if (responseData["con"]) {
      List lisy = responseData["result"];
      products = lisy.map((e) => Product.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return products;
  }
  static Future<List<Product>> allProduct({sale_type}) async {
    List<Product> products = [];
    Uri uri = Uri.parse("${Vary.API_URL}/auth/products/${sale_type}");
    // print(uri);
    var response = await http.get(uri,headers: Vary.tokenHeader);
    // print(response);
    // var resp=json.encode(response.body);
    var responseData = jsonDecode(response.body);
    // print(responseData);
    if (responseData["con"]) {
      List lisy = responseData["result"];
      products = lisy.map((e) => Product.fromJson(e)).toList();
    } else {
      print(responseData["msg"]);
    }
    return products;
  }

  // static Future<List<Product>> tagproduct({id, page}) async {
  //   List<Product> products = [];
  //   Uri uri = Uri.parse("${Vary.API_URL}/tagproducts/$id/$page");
  //   var response = await http.get(uri);
  //   var responseData = jsonDecode(response.body);
  //   if (responseData["con"]) {
  //     List lisy = responseData["result"] as List;
  //     products = lisy.map((e) => Product.fromJson(e)).toList();
  //   } else {
  //     print(responseData["msg"]);
  //   }
  //   return products;
  // }

  // static Future<bool> register({json}) async {
  //   Uri uri = Uri.parse("${Vary.API_URL}/register");
  //   var response = await http.post(uri, body: json, headers: Vary.headers);
  //   print(response.body);
  //   var responseData = jsonDecode(response.body);
  //   if (responseData["con"]) {
  //     Vary.sucMsg = responseData["msg"];
  //     return true;
  //   } else {
  //     Vary.errMsg = responseData["msg"];
  //     return false;
  //   }
  // }

  static Future<bool> login({json}) async {
    // print(json);
    Uri uri = Uri.parse("${Vary.API_URL}/auth/login");
    // print(uri);
    var response = await http.post(uri, body: json, headers: Vary.headers);
    var responseData = jsonDecode(response.body);
    // print(responseData);
    if (responseData["con"]) {
      Vary.user = User.fromJson(responseData["result"]);
      Vary.sucMsg = responseData["msg"];
      return true;
    } else {
      Vary.errMsg = responseData["msg"];
      return false;
    }
  }
  static Future<bool> addcustomer({json}) async {
    // print(json);
    Uri uri = Uri.parse("${Vary.API_URL}/auth/api_customers");
    // print(uri);
    // print(json);
    
    var response = await http.post(uri, body: json, headers:Vary.tokenHeader);
   
    // print(response);
    var responseData = jsonDecode(response.body);
    // print(responseData);
    if (responseData["con"]) {
      Vary.sucMsg = responseData["msg"];
      return true;
    } else {
      Vary.errMsg = responseData["msg"];
      return false;
    }
  }

static Future<bool> orderUpload({json}) async {
  Uri uri = Uri.parse("${Vary.API_URL}/orders");
  var response = await http.post(uri, body: json, headers: Vary.tokenHeader);
  var responseData = jsonDecode(response.body);
  if (responseData["con"]) {
    Vary.sucMsg = responseData["msg"];
    return true;
  } else {
    Vary.errMsg = responseData["msg"];
    return false;
  }
}
static Future<bool> upLoadInvoice({json})async{
    // print(json);
  Uri uri = Uri.parse("${Vary.API_URL}/auth/mobile_invoice");
  var response = await http.post(uri, body: json, headers: Vary.tokenHeader);
  var responseData = jsonDecode(response.body);
  if (responseData["con"]) {
    // Vary.sucMsg = responseData["msg"];
    return true;
  } else {
    // Vary.errMsg = responseData["msg"];
    return false;
  }
}

// static Future<List<History>> getHistory() async {
//   List<History> history = [];

//   Uri uri = Uri.parse("${Vary.API_URL}/orders");
//   var response = await http.get(uri,headers: Vary.tokenHeader);
//   var responseData = jsonDecode(response.body);
//   if (responseData["con"]) {
//     List lisy = responseData["result"] as List;
//     history = lisy.map((e) => History.fromJson(e)).toList();
//   } else {
//     Vary.errMsg = responseData["msg"];
//   }
//   return history;
// }
}
