
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeusAnuncios extends StatelessWidget{
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
          SizedBox(height: 20,),
          Center(
          child: Text("Meus Anúncios:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
        ),
        SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
            child: Container(
              child: Text("Brasília", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
            )
          ),
          SizedBox(width: 120,),
              Container(
                child: IconButton(
                  onPressed: () {
                    
                }, 
                icon: new Icon(Icons.favorite), color: Color.fromARGB(170, 247, 188, 132),
                ),
              )
          ],
          ),
          Container(
            width: 250.0,
            height: 250.0,
            child: Image(image: AssetImage('assets/images/quarto.jpg'),),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: Text("Apartamento no hotel Royal Tulip", style: TextStyle(fontSize: 18)),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40.0,),
                child: IconButton(
                  onPressed: () {
                    
                }, 
                icon: new Icon(Icons.star), color: Color.fromARGB(170, 247, 188, 132),
                ),
              ),              
              Container(
                child: Text("4.90"),
              )
            ],
          ),
          Center(
            child: Container(
              child: Text("Recomendações:", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              child: Text("- Proibido som alto"),
            ),
          ),
          SizedBox(height: 30,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
            child: Container(
              child: Text("Brasília", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
            )
          ),
          SizedBox(width: 120,),
              Container(
                child: IconButton(
                  onPressed: () {
                    
                }, 
                icon: new Icon(Icons.favorite), color: Color.fromARGB(170, 247, 188, 132),
                ),
              )
          ],
          ),
          Container(
            width: 250.0,
            height: 250.0,
            child: Image(image: AssetImage('assets/images/quartoDois.jpg'),),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: Text("Apartamento no hotel San Marco", style: TextStyle(fontSize: 18)),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40.0,),
                child: IconButton(
                  onPressed: () {
                    
                }, 
                icon: new Icon(Icons.star), color: Color.fromARGB(170, 247, 188, 132),
                ),
              ),              
              Container(
                child: Text("4.87"),
              )
            ],
          ),
          Center(
            child: Container(
              child: Text("Recomendações:", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              child: Text("- Proibido som alto"),
            ),
          ),
          SizedBox(height: 30,)
        ],  
      ),
    );
  }

}