import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/four.dart';

class AlterarFoto extends StatelessWidget{
  const AlterarFoto({Key? key}) : super(key: key);

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
          child: Text('Foto de Perfil:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: 30,),
        Center(
          child: Container(
            width: 250.0,
                  height: 200.0,
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
          SizedBox(width: 20,),
          Container(
            height: 20,
            child: OutlinedButton(
              onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                      Widget _page4 = Page4();
                      return _page4;
                      },
                    ));
                  },
                  child: const Text('Salvar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          )    

        ],)
      ],),
    );
  }

}