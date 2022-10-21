import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/dashboard/dashboard_screen.dart';
// import 'package:fulfilsalesapp/pages/dashboard.dart';
// import 'package:fulfilsalesapp/helpers/TrianglePainter.dart';
// import 'package:fulfilsalesapp/pages/home.dart';
import 'package:fulfilsalesapp/utils/api.dart';
import 'package:fulfilsalesapp/utils/kpo.dart';
import 'package:fulfilsalesapp/utils/vary.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  var _emailController = TextEditingController(text: "thuta.sales@outlook.com	");
  var _passwordController = TextEditingController(text: "123123");
  var _obsecure = true;

  @override
  Widget build(BuildContext context) {
    // var mSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                // CustomPaint(
                //   painter: TrianglePainter(mSize),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      CircleAvatar (
                        backgroundColor:Colors.grey[300],
                       
                        maxRadius: 50,
                        minRadius: 40,
                        child:Image.asset('assets/icons/fulfil-logo.png',height: 80,width: 80,)
                      ),
                      SizedBox(height: 20,),
                      
                      Text("Fulfil Sales",
                          style: TextStyle(
                              color: Vary.normal,
                              fontFamily: "Title",
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 30),
                      Form(
                          key: _formKey,
                          child: Column(children: [

                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.text,
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Phone နံပါတ် ဖြည့်ပါ";
                                }
                                // if (v.length < 7) {
                                //   return "Phone နံပါတ် မှားနေပါ";
                                // }
                                return null;
                              },
                              onChanged: (v) {
                                if (v.length < 4) {
                                  print("Error");
                                } else {
                                  print(v);
                                }
                              },
                              decoration: InputDecoration(
                                errorStyle: TextStyle(fontFamily: "Burmese"),
                                prefixIcon: Icon(Icons.email),
                                labelText: "Phone",
                                labelStyle:
                                TextStyle(color: Vary.normal, fontSize: 20.0),
                                enabledBorder: _getBorder(),
                                focusedBorder: _getBorder(),
                              ),
                            ),
                           
                            SizedBox(height: 40),

                            TextFormField(
                            
                              obscureText: _obsecure,
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Password ဖြည့်ပါ";
                                }
                                if (v.length < 8) {
                                  return "Password အနည်းဆုံး ၈ လုံး";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    _obsecure = !_obsecure;
                                    setState(() {});
                                  },
                                  child: _obsecure
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                ),
                                labelText: "Password",
                                labelStyle:
                                TextStyle(color: Vary.normal, fontSize: 20.0),
                                enabledBorder: _getBorder(),
                                focusedBorder: _getBorder(),
                              ),
                            ),
                          ])),
                      SizedBox(height: 30),
                      Column(
                        
                        children: [
                          Container(
                            
                            child: TextButton(
                                  onPressed: () async {
                                    var json = jsonEncode({
                                      "email": _emailController.text,
                                      "password": _passwordController.text
                                    });
                                    // print(json);
                                    bool bol = await Api.login(json: json);
                                    if (bol) {
                                      // print(bol);
                                      // ignore: use_build_context_synchronously
                                      Navigator.of(context).push(MaterialPageRoute( builder: (context) =>DashboardScreen()));

                                      // print(Vary.user?.id);
                                      // Kpo.getSocket();
                                      // Navigator.pop(context);
                                    } else {
                                      Kpo.toast(context, Vary.errMsg);
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor:Colors.blue[400],shadowColor:Colors.black
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.lock, color: Vary.primary),
                                      SizedBox(width: 20),
                                      Text("Login",
                                          style: TextStyle(
                                              fontSize: 24.0, color: Vary.primary))
                                    ],
                                  )),
                          ),
                                  SizedBox(height: 20,),
                                   Column(
                            children: [
                              InkWell(
                                // onTap: () => Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Register())
                                // ),
                                child: Text("\nForgot Password!",
                                    style: TextStyle(
                                        color: Vary.normal,
                                        fontFamily: "Title",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 5),
                              Container(width: 100, height: 5, color: Vary.accent)
                            ],
                          ),
                                 
                           
                        ],
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  _getBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Vary.normal, width: 0.4),
        borderRadius: BorderRadius.all(Radius.circular(10)));
  }
}
