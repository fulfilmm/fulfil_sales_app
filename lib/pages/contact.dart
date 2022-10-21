import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/models/contact.dart';
import 'package:fulfilsalesapp/pages/createcustomer.dart';
import 'package:fulfilsalesapp/pages/customer_profile.dart';
import '../utils/api.dart';
import '../utils/kpo.dart';
import '../utils/vary.dart';
// import '../utils/vary.dart';

class Contactlist extends StatefulWidget {
  @override
  _contactlist createState() => _contactlist();
}

class _contactlist extends State<Contactlist> {
  List<Contact> contacts = <Contact>[];

  _loadContact() async {
    contacts = await Api.getcontact();
    if (contacts.length > 0) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _loadContact();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child:Row(children: [
              InkWell(
                child:Icon(Icons.person_add,size: 40,) ,
                onTap:(){
                   Navigator.push(
            context, MaterialPageRoute(builder: (context) => CustomerPost()));
                }
              ),
              SizedBox(width: 20,),
              Kpo.getShoppingCart(context)
            ]),
          ),
          // child: Icon(Icons.qr_code_2_outlined),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8),
        itemCount: contacts.length,
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
              // color: Colors.blue[500],
              child: ListTile(
                leading: GestureDetector(
                    onTap: () {},
                    child:Container(
                      child:contacts[index].profile==null?
                       CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person)
                      ):
                      CircleAvatar(
          
                backgroundImage:NetworkImage("${Vary.BASE_URL}/img/profiles/${contacts[index].profile}",scale: 1),
                backgroundColor: Colors.transparent,
              ),
                
                    
                    // Container(
                    //   width: 48,
                    //   height: 48,
                    //   padding: EdgeInsets.symmetric(vertical: 4.0),
                    //   alignment: Alignment.center,
                    //   child:
                    //       Image.network("${Vary.BASE_URL}/product_picture/${products[index].image}"),

                    // ),
                    ),
                ),
                // trailing: Icon(Icons.more_vert, color: Colors.white,),
                title:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Align(
                    alignment:Alignment.topLeft,
                    child:  Text('${contacts[index].customer_id}',style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                  "${contacts[index].name}",
                  style: TextStyle(color: Colors.black),
                ),
                    ),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                    
                      child: 
                      Text(
                  
                        "Email :${contacts[index].email}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Phone :${contacts[index].phone}",
                        style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),
                      ),
                    ),
                    SizedBox(height:10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Text('Use Amount :${contacts[index].use_amount}',
                      style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold)
                      ),
                      
                    ],),
                    SizedBox(height:5.0),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Credit Limit :${contacts[index].credit_limit}',
                      style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold)
                      ),
                      Text('Credit :${contacts[index].current_credit}',
                      style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold)
                      ),
                    ],)
                  ],
                ),

                onTap: () {
                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomerProfile(
                                          contact: contacts[index],
                                        )));
                },
              ));
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 2,
        ),
      ),
    );
    
  }

}
