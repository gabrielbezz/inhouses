import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/pages/calendarioViagem.dart';
import 'package:flutter_application_3/pages/chat.dart';
import 'package:flutter_application_3/pages/novo.dart';

import '../models/chatUsersModel.dart';
import '../widgets/conversationList.dart';


class Page3 extends StatelessWidget {
  const Page3({Key? key, required this.changePage}) : super(key: key);
  final void Function(int) changePage;

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
                  Widget _chat = Chat();
                  return _chat;
                },
              ));
            }, 
            icon: new Icon(Icons.chat), color: Color.fromARGB(170, 247, 188, 132),
          ),
          ],
      ),
      // body: Column(children: [
      //   SizedBox(height: 30,),
      //   Center(
      //     child: Text('Mensagens:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
      //   ),
      //   SizedBox(height: 30,),
      //   Container(
      //     color: Color.fromARGB(255, 230, 229, 229),
      //     width: 300,
      //     height: 70,
      //     child: Row(children: [
      //       Container(
      //         margin: const EdgeInsets.only(left: 20.0),
      //         height: 50,
      //         width: 50,
      //         child: CircleAvatar(
      //           backgroundImage: AssetImage("assets/images/perfil.png"),
      //         ),
      //       ),
      //       SizedBox(width: 20,),
      //       Container(
      //         child: Text("User: gus_rabelo"),
      //       ),
      //       SizedBox(width: 50,),
      //       Container(
      //         child: IconButton(
      //             onPressed: () {
      //               Navigator.push(context, MaterialPageRoute<void>(
      //               builder: (BuildContext context) {
      //               Widget _chat = Chat();
      //               return _chat;
      //               },
      //               ));
      //             },
      //           icon: new Icon(Icons.chat),
      //       ),
      //       ),
      //     ],)
      //   ),        
      //],
     // ),
     body: ChatPage()
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "images/userImage1.jpeg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "images/userImage2.jpeg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Mensagens",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(170, 243, 223, 204),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Color.fromARGB(170, 240, 160, 85),size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                  
                );
              },
            ),
          ],
          
        ),
        
      ),
    );
  }
}


