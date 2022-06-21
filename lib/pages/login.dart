
import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/pages/cadastro.dart';
import 'package:flutter_application_3/pages/recuperarSenha.dart';

import 'one.dart';

class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
          padding: EdgeInsets.only(
            top: 40,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 100,
                child: Image.asset("assets/images/logoInHouses.png"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("User"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Senha"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: OutlinedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                      Widget _MyApp = MyApp();
                      return _MyApp;
                      },
                    ));
                  },
                  child: const Text('Entrar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Esqueceu a senha?', style: TextStyle(color: Colors.red),),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute<void>(
                           builder: (BuildContext context) {
                           Widget _recuperarSenha = RecuperarSenha();
                           return _recuperarSenha;
                           },
                         ));
                         },
                         child: const Text('Recuperar Senha', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                  ),
                ],),
              ),
              SizedBox(height: 15,),
              Container(
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Não possui conta?'),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                          Widget _cadastro = Cadastro();
                          return _cadastro;
                          },
                        ));
                        },
                        child: const Text('Cadastre-se', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                  ),
                ],),
              ),
              SizedBox(height: 15,),
            ],
          )
          ),
    );
  }

}