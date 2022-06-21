import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

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
        body: Column(children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              height: 120,
              width: 120,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/recuperar.png"),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text(
              'Esqueceu sua senha?', style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700
              ),
            )
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 300,
              child: Text(
                'Informe seu email cadastrado para que possamos enviar um link para recuperação da sua senha para login!', style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 60.0, right: 60.0),
              child: TextFormField(
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
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 100,
              child: OutlinedButton(
                onPressed: () {

                },
                child: const Text('Enviar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],)
    );
  }

}