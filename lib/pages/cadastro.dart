
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/login.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          child: Image(image: AssetImage('assets/images/logoInHouses.png'),
          width: 100.0,
          height: 250.0,
          )
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30
          ),
          Center(
            child: Container(
              child: Text(
                'Cadastro de Novo Usuário', style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Noto Sans'
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/perfil.png"),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: TextFormField(
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
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
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
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Nome "),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("CPF "),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("CEP "),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Telefone"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Formas de Pagamento"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Dados Pagamento"),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 40,),
          Container(
                height: 40,
                alignment: Alignment.center,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                    Widget _login = Login();
                    return _login;
                    },
                    ));
                  },
                  child: const Text('Cadastrar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: 40,
              ),
        ],)

    );
  }}