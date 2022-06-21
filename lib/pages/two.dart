import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';



class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
      body: Column(
        children: [
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
            width: 300.0,
            height: 250.0,
            child: Image(image: AssetImage('assets/images/quarto.jpg'),),
          ),
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
          Container(
            child: Text("- Proibido som alto"),
          )
        ],  
      ),
    );
  }
}
