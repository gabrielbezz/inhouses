import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alterarFoto.dart';
import 'package:flutter_application_3/pages/atualizarDados.dart';
import 'package:flutter_application_3/pages/meusAnuncios.dart';
import 'package:flutter_application_3/pages/novaPublicacao.dart';
import 'package:flutter_application_3/pages/novo.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
            child: Image(
          image: AssetImage('assets/images/logoInHouses.png'),
          width: 100.0,
          height: 250.0,
        )),
        actions: [
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  Widget _alterarFoto = AlterarFoto();
                  return _alterarFoto;
                },
              ));
            },
            icon: new Icon(Icons.party_mode),
            color: Color.fromARGB(170, 247, 188, 132),
          ),
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  // Widget _novaPublicacao = NovaPublicacao();
                  // return _novaPublicacao;
                  Widget _novo = Novo(
                    title: 'Novo',
                  );
                  return _novo;
                },
              ));
            },
            icon: new Icon(Icons.note_add),
            color: Color.fromARGB(170, 247, 188, 132),
          ),
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  Widget _meusAnuncios = MeusAnuncios();
                  return _meusAnuncios;
                },
              ));
            },
            icon: new Icon(
              Icons.description,
              color: Color.fromARGB(170, 247, 188, 132),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/perfil.png"),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('User: '),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'silva_alfredo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('Nome: '),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Alfredo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('TEL.: '),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '(00) 00000 0000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Text('CPF: '),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '000.000.000-00',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('CEP: '),
                ),
              ),
              SizedBox(width: 30),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '00.000.000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('PGTO: '),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Cartão de Crédito',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('Dados: '),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '000 0000 0000 0000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text('Email: '),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 25.0,
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Alfredo@email.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 180.0,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      Widget _atualizarDados = AtualizarDados();
                      return _atualizarDados;
                    },
                  ));
                },
                child: const Text(
                  'Atualizar',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
