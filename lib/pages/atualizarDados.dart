import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/four.dart';


class AtualizarDados extends StatelessWidget {
  const AtualizarDados({Key? key}) : super(key: key);
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
          child: Text('Atualizar Dado Pessoal:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextFormField(
               decoration: InputDecoration(
                  label: Text("Dado"),
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
        SizedBox(height: 20,),
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextFormField(
               decoration: InputDecoration(
                  label: Text("Antigo"),
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
        SizedBox(height: 20,),
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextFormField(
               decoration: InputDecoration(
                  label: Text("Novo"),
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
                  Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                  Widget _page4 = Page4();
                  return _page4;
                  },
                  ));
                },
                child: const Text('Salvar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ),
          )
      ]),
    );
  }

}
