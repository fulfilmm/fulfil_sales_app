
import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';

import '../models/contact.dart';

class CustomerProfile extends StatefulWidget {
  final Contact contact;

  const CustomerProfile({Key? key, required this.contact}) : super(key: key);

  @override
  
  _Profile createState() => _Profile(this.contact);
}

class _Profile extends State<CustomerProfile> {
  Contact contact;
  _Profile(this.contact);
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
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
                  
                  SizedBox(height: 20),
                   Center(
                    child: CircleAvatar(
                    maxRadius: 30,
                    minRadius: 20,
                 backgroundImage:NetworkImage("${Vary.BASE_URL}/img/profiles/${contact.profile}",scale: 10),
                backgroundColor: Colors.transparent,
              ),
                   ),
                   SizedBox(height: 10.0,),
             Center(
              child: Text(contact.customer_id.toString(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Title",
                          
                          color: Vary.normal)),
             ),
             SizedBox(height: 5,),
             Center(
              child: Text(contact.name,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Title",
                          
                          color: Vary.normal)),
             ),
             SizedBox(height: 10,),
             Center(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.email,size: 16,),
                SizedBox(width: 10,),
                Text(contact.email,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Title",
                          
                          color: Vary.normal)),
              ],)
             ),
             SizedBox(height: 5,),
             Center(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.phone,size: 16,),
                SizedBox(width: 10,),
                Text(contact.phone,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Title",
                          fontWeight: FontWeight.bold,
                          color: Vary.normal)),
              ],)
             ),
             SizedBox(height: 5,),
             Center(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.map,size: 16,),
                SizedBox(width: 10,),
                Text(contact.address==null?"N/A":contact.address.toString(),
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Title",
                          
                          color: Vary.normal)),
              ],)
             ),
             SizedBox(height: 10.0,),
                 Divider(thickness: 1,color: Colors.black,),
                 Container(
                  child:Column(children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      
                      decoration: BoxDecoration(
                        color: Colors.indigo[200],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                      child:
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.paste,size: 18,color: Colors.blue,),
                            ),
                            SizedBox(width: 10,),
                            Text('Invoice',style: TextStyle(fontSize: 18),),
                          ],),
                          Text('10')
                    ],),
                    ),
                    SizedBox(height: 5,),
                    Container(
                       
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                         color: Colors.amber[200],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.credit_card_off,size: 18,color: Colors.red,),
                            ),
                            SizedBox(width: 10,),
                            Text('Credit Limit',style: TextStyle(fontSize: 18),),
                          ],),
                          Text('${contact.credit_limit}',style: TextStyle(fontSize: 18,color: Colors.red[600]),)
                    ],),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                         color:Colors.red[400],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.credit_card,size: 18,color: Colors.red,),
                            ),
                            SizedBox(width: 10,),
                            Text('Credit',style: TextStyle(fontSize: 18),),
                          ],),
                          Text('${contact.current_credit}')
                    ],),
                    ),
                    SizedBox(height: 5,),
                    Container(
                     
                      padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         color: Colors.green[300],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                      child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.money,size: 18,color: Colors.green,),
                            ),
                            SizedBox(width: 10,),
                            Text('Amount Spend',style: TextStyle(fontSize: 18),),
                          ],),
                          Text('${contact.use_amount}')
                    ],),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(10),
                      
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                      child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.paste,size: 18,color: Colors.blue,),
                            ),
                            SizedBox(width: 10,),
                            Text('Advance Balance',style: TextStyle(fontSize: 18),),
                          ],),
                          Text('${contact.advance_balance}')
                    ],),
                    ),
                    SizedBox(height: 5,),
                  ],),
                 ),      
                ],
              ),
              
              
            ),
            
          ],
        ));
  }

}
