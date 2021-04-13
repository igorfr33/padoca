import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

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
          child: Column(
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
                      Column(
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                        ),
                        Column(
                          children: <Widget>[
                            Divider(
                              color: Colors.transparent,
                            ),
                            Container(
                              width: 270,
                              child: SafeArea(
                                child:Column(
                                  children: <Widget>[
                                    SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            decoration: InputDecoration(
                                              hintText: "Usuário",
                                              focusColor: Colors.white,
                                              prefixIcon: Icon(Icons.account_circle_outlined),
                                            ),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.white,
                                              prefixIcon: Icon(Icons.vpn_key_outlined),
                                            ),
                                            initialValue: "Senha:",
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                            ),
                                            onPressed:(){},
                                            child: Text(
                                              "Acessar Minha Conta",
                                            ),
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
                ],
              ),
            ],
          ),
        ),
          ),
      );
  }
}

