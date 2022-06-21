import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';

class NovaPublicacao extends StatelessWidget{
  const NovaPublicacao({Key? key}) : super(key:key);
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
      body: ListView(children: [
        SizedBox(height: 30,),
        Center(
          child: Text("Publicar Anúncio:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            child: Text("Informe o local:", style: TextStyle(fontSize: 20),),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Local',
          ),
        ),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            child: Text("Informe a descrição:", style: TextStyle(fontSize: 20),),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Descrição',
          ),
        ),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            child: Text("Inserir imagens:", style: TextStyle(fontSize: 20),),
          ),
        ),
        SizedBox(height: 10,),
        Center(
          child: Container(
            width: 100.0,
            height: 100.0,
            child: Image(image: AssetImage('assets/images/camera.png'),),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 20,
            child: OutlinedButton(
              onPressed: () {
                //chama a função para pegar a foto do celular

              },
              child: const Text('Anexar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),),
      ]),
      SizedBox(height: 20,),
      Center(
        child: Container(
            child: Text("Valor da diária:", style: TextStyle(fontSize: 20),),
          ),
      ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 100.0, right: 100.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Diária',
          ),
        ),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            child: Text("Recomendações de uso:", style: TextStyle(fontSize: 20),),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Recomendações',
          ),
        ),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                      Widget _MyApp = MyApp();
                      return _MyApp;
                      },
                    ));
              },
              child: const Text('Publicar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            )
          ),
        ),
        SizedBox(height: 30,)
      ]),
    );
  }

}