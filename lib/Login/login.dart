import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

bool _setState = false;
bool _showPassword = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(

            child:Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Image.asset(
                    "images/toast.png",
                  ),
                ),
                Text(
                  "Padoca",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 80,
                          ),
                          Column(
                            children: <Widget>[
                              Divider(
                                color: Colors.transparent,
                              ),
                              Container(
                                width: 340,
                                child: SafeArea(
                                  child:Column(
                                    children: <Widget>[
                                      SingleChildScrollView(
                                        child: Column(
                                          children: <Widget>[
                                            TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.zero,
                                                ),
                                                hintText: "Usuário",
                                                hintStyle: TextStyle(color: Colors.white),
                                                focusColor: Colors.white,
                                                prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.white,),
                                              ),
                                              keyboardType: TextInputType.emailAddress,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "Senha",
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.zero,
                                                ),
                                                hintStyle: TextStyle(color: Colors.white),
                                                focusColor: Colors.white,
                                                prefixIcon: Icon(Icons.vpn_key_outlined, color: Colors.white,),
                                                suffixIcon: GestureDetector(
                                                  child:Icon(
                                                    _showPassword == false? Icons.visibility_off:Icons.visibility, color: Colors.white,
                                                  ),
                                                  onTap:(){
                                                     setState(() {
                                                       _showPassword = !_showPassword;
                                                     });
                                                  },
                                                ),
                                              ),
                                              obscureText: _showPassword == false?true:false,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                  ),
                                                  onPressed:(){},
                                                  child: Text(
                                                    "Acessar Minha Conta",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                Switch(
                                                  value: _setState,
                                                  onChanged: (bool valor){
                                                    setState(() {
                                                      _setState = valor;
                                                    });
                                                  },
                                                ),
                                                Text(
                                                  "Sou uma empresa",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                  ),
                                                  onPressed:(){},
                                                  child: Text(
                                                    "Esqueceu sua senha?",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.transparent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}