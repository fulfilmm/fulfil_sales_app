// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/pages/drawer.dart';
import 'package:fulfilsalesapp/pages/home.dart';



import '../utils/kpo.dart';
import '../utils/vary.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  List<String> sales_type = ['Whole Sale', 'Retail Sale'];
  // final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  //   onPrimary: Colors.black87,
  //   primary: Colors.grey[300],
  //   minimumSize: Size(88, 36),
  //   padding: EdgeInsets.symmetric(horizontal: 16),
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(2)),
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:  Text('Dashboard'),
        actions:<Widget> [
          Padding(
              padding: EdgeInsets.all(10.0),

              child: Kpo.getShoppingCart(context),
            ),
          
          
          // child: Icon(Icons.qr_code_2_outlined),


        ],
      ),
        drawer:DrawerWidget.menu(context),
         
        body:SingleChildScrollView(
          child: 
        Column(
          children: [
            
            SizedBox(
              height: 20.0,
            ),
            Container(
            
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.blue,
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Vary.sales_type='Whole';
                            if(Vary.sales_type!='Whole'){
                              Kpo.clearCart();
                            }
                            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>home()),
                );
                          },
                          child: Text(
                            "Whole Sales",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.amber,
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                          onPressed: () {
                            if(Vary.sales_type!='Retail'){
                              Kpo.clearCart();
                            }
                            Vary.sales_type='Retail';
                             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>home()),
                );
                          },
                          child: Text(
                            "Retail Sales",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ]),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.teal[200],
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Icon(Icons.paste,size: 60,color: Colors.white,),

                             Column(children: [
                              Text('20',style: TextStyle(fontSize: 36,color: Colors.white),),
                              SizedBox(height: 20,),
                              Text("Invoices",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                             ],)
                          ],)
                          
                      
                        ]),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.green[200],
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Icon(Icons.shopping_bag,size: 60,color: Colors.white,),

                             Column(children: [
                              Text('20000',style: TextStyle(fontSize: 36,color: Colors.white),),
                              SizedBox(height: 20,),
                              Text("Stock",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                             ],)
                          ],)
                          
                      
                        ]),
                      ),
                    ),
                  
                     
                  ]),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Color.fromARGB(255, 116, 183, 241),
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Icon(Icons.person,size: 60,color: Colors.white,),

                             Column(children: [
                              Text('20',style: TextStyle(fontSize: 36,color: Colors.white),),
                              SizedBox(height: 20,),
                              Text("Customers",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                             ],)
                          ],)
                          
                      
                        ]),
                      ),
                    ),
                  
                     InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.red[200],
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Icon(Icons.calendar_month,size: 60,color: Colors.white,),

                             Column(children: [
                              Text('20',style: TextStyle(fontSize: 36,color: Colors.white),),
                              SizedBox(height: 20,),
                              Text("Sales Activities",style: TextStyle(color:Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),
                             ],)
                          ],)
                          
                      
                        ]),
                      ),
                    ),
                   
                  ]),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.orange[200],
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            
                            Column(
                              children: [
                              Icon(Icons.credit_card,size: 60,color: Colors.white,),
                            ],),

                             Column(children: [
                              Text("Receivable",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                              Text("Amount",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      
                             ],)
                          ],),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              Text('2000000',style: TextStyle(fontSize: 24),),
                            ],
                          ),
                          
                      
                        ]),
                      ),
                    ),
                  
                     InkWell(
                      onTap: (){},
                      child: Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),],
                        
                        color: Colors.amber[200],
                        // border: Border.all(
                        //   width: 8,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            
                            Column(
                              children: [
                              Icon(Icons.credit_card,size: 60,color: Colors.white,),
                            ],),

                             Column(children: [
                              Text("Inhand",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                              Text("Amount",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      
                             ],)
                          ],),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              Text('2000000',style: TextStyle(fontSize: 24),),
                            ],
                          ),
                          
                      
                        ]),
                      ),
                    ),
                   
                  ]),
            ),
          ],
        )
        ),
        );
  
  }
}
