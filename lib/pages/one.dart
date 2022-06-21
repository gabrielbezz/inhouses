import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import 'calendarioViagem.dart';
import 'login.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
        actions: [
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  Widget _calendarioViagem = CalendarioViagem();
                  return _calendarioViagem;
                },
              ));
            }, 
            icon: new Icon(Icons.calendar_today_outlined), color: Color.fromARGB(170, 247, 188, 132),),
            new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  Widget _login = Login();
                  return _login;
                },
              ));
            }, 
            icon: new Icon(Icons.login), color: Color.fromARGB(170, 247, 188, 132),),
        ],  
      ),
      body: ListView(
        children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(
                left: 50,
                right: 50,
                ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    String searchString = "";
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Procurar',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: DottedLine(
              direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 3.0,
                dashColor: Colors.black,
                dashRadius: 0.0,
                dashGapLength: 7.0,
                dashGapColor: Colors.white,
                dashGapRadius: 0.0,
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Center(
                child: Text('Cidades Turísticas',
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.black,
                 ))),
            ),
            SizedBox(height: 5),
            Container(
              child: Center(
                child: Text('Brasil', 
                style: TextStyle(
                  fontSize: 17
                ),)),
            ),SizedBox(height: 20,),
                Center(
                  child: Container(
                        child: Text('Salvador, Bahia ', 
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.w900
                         ),),
                  ),
                ),SizedBox(height: 15,),
                Container(
                  width: 250.0,
                  height: 200.0,
                  child: Image(image: AssetImage('assets/images/salvador.jpeg'),),
                ),SizedBox(height: 15,),
                Center(
                  child: Container(
                         width: 300.0,
                         child: Text('Local com muita história, cultura, gastronomia, música e arquitetura, sem esquecer as belas praias com paisagens de tirar o fôlego.', 
                         textAlign:  TextAlign.center,)
                       ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                        child: Text('Porto de Galinhas, Pernambuco', 
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.w900
                         ),),
                  ),
                ),SizedBox(height: 15,),
                Container(
                  width: 250.0,
                  height: 200.0,
                  child: Image(image: AssetImage('assets/images/portoDeGalinhas.jpg'),),
                ),SizedBox(height: 15,),
                Center(
                  child: Container(
                         width: 300.0,
                         child: Text('Porto de Galinhas é uma das cidades turísticas preferidas dos amantes de praias calmas e lindas piscinas naturais.', 
                         textAlign:  TextAlign.center,)
                       ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                        child: Text('Maceió, Alagoas', 
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.w900
                         ),),
                  ),
                ),SizedBox(height: 15,),
                Container(
                  width: 250.0,
                  height: 200.0,
                  child: Image(image: AssetImage('assets/images/maceio.jpg'),),
                ),SizedBox(height: 15,),
                Center(
                  child: Container(
                         width: 300.0,
                         child: Text('Para quem ama curtir sol, calor e praia em dias de descanso e diversão. Praias lindas, com águas transparentes, além de piscinas naturais.', 
                         textAlign:  TextAlign.center,)
                       ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                        child: Text('Gramado, RS', 
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.w900
                         ),),
                  ),
                ),SizedBox(height: 15,),
                Container(
                  width: 250.0,
                  height: 200.0,
                  child: Image(image: AssetImage('assets/images/gramado.png'),),
                ),SizedBox(height: 15,),
                Center(
                  child: Container(
                         width: 300.0,
                         child: Text('Com um visual que lembra muito algumas cidades da Europa, clima frio da Serra Gaúcha tornam uma ótima opção de viagem.', 
                         textAlign:  TextAlign.center,)
                       ),
                ),
                SizedBox(height: 25,),
             ]
         ),
      //],
      //),
      
    );
  }

  void setState(Null Function() param0) {}
}

