import 'package:flutter/material.dart';
import '../dashboard/dashboard_screen.dart';
import '../utils/vary.dart';
import 'contact.dart';
import 'invoices.dart';

class DrawerWidget{
 
  static Widget menu(context){
     
     
    return
      Drawer(
        child: 
        ListView(
          children:<Widget> [
            UserAccountsDrawerHeader(
              accountName: Text(Vary.user?.name),
              accountEmail: Text(Vary.user?.email),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "${Vary.BASE_URL}/img/profiles/${Vary.user?.profile_img}")),
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(
                // image: NetworkImage(
                //   // "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                // ),
                // fit: BoxFit.fill,
                // ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Invoices"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InvoiceList()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.grid_3x3_outlined),
              title: Text("Items"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contactlist()),
                );
              },
            ),
            
          ],
        ),
      );
    
  }

}