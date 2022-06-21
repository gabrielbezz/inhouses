import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alterarFoto.dart';
import 'package:flutter_application_3/pages/atualizarDados.dart';
import 'package:flutter_application_3/pages/cadastro.dart';
import 'package:flutter_application_3/pages/calendarioViagem.dart';
import 'package:flutter_application_3/pages/chat.dart';
import 'package:flutter_application_3/pages/four.dart';
import 'package:flutter_application_3/pages/login.dart';
import 'package:flutter_application_3/pages/novaPublicacao.dart';
import 'package:flutter_application_3/pages/novo.dart';
import 'package:flutter_application_3/pages/one.dart';
import 'package:flutter_application_3/pages/recuperarSenha.dart';
import 'package:flutter_application_3/pages/two.dart';
import 'package:flutter_application_3/pages/three.dart';

void main() {
  runApp(const MyApp());
}

const String page1 = "Explorar";
const String page2 = "Favoritos";
const String page3 = "Mensagens";
const String page4 = "Perfil";
const String page5 = "Login";
const String page6 = "Calendário";
const String page7 = "Cadastro";
const String page8 = "Senha";
const String page9 = "Atualizar";
const String page10 = "Alterar";
const String page11 = "Chat";
const String page12 = "Nova";
const String page13 = "Meus";

const String title = "In-houses";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late Widget _page4;
  late Widget _novo;
  late Widget _login;
  late Widget _calendarioViagem;
  late Widget _cadastro;
  late Widget _recuperarSenha;
  late Widget _atualizarDados;
  late Widget _alterarFoto;
  late Widget _novaPublicacao;
  late Widget _meusAnuncios;
  late Widget _chat;
  late int _currentIndex;
  late Widget _currentPage;
  late bool _liked;
  @override
  void initState() {
    super.initState();
    _page1 = const Page1();
    _page2 = const Page2();
    _page3 = Page3(changePage: _changeTab);
    _novo = Novo(
      title: 'Novo',
    );
    _page4 = const Page4();
    _login = const Login();
    _calendarioViagem = const CalendarioViagem();
    _cadastro = const Cadastro();
    _recuperarSenha = const RecuperarSenha();
    _atualizarDados = const AtualizarDados();
    _alterarFoto = const AlterarFoto();
    _novaPublicacao = const NovaPublicacao();
    _chat = Chat();
    _pages = [_page1, _page2, _page3, _page4];
    _currentIndex = 0;
    _currentPage = _page1;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _changeTab(index);
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: page1,
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: page2,
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: page3,
            icon: Icon(Icons.chat_bubble_outline),
          ),
          BottomNavigationBarItem(
            label: page4,
            icon: Icon(Icons.person_outline),
          ),
        ],
        selectedItemColor: Colors.grey[800],
        unselectedItemColor: const Color.fromARGB(255, 214, 214, 214),
      ),
    );
  }

  Widget _navigationItemListTitle(String title, int index) {
    return ListTile(
      title: Text(
        '$title',
        style: TextStyle(color: Color.fromARGB(255, 4, 32, 56), fontSize: 20.0),
      ),
      onTap: () {
        Navigator.pop(context);
        _changeTab(index);
      },
    );
  }
}
