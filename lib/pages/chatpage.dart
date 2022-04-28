import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chat_model.dart';
import 'package:whatsappclone/widgets/chattile.dart';

class Chatpage extends StatelessWidget {
  Chatpage({Key? key}) : super(key: key);
  List chatlist = [
    Chatmodel(
        name: "anas",
        message: "where are you",
        avatar: "",
        isgroup: false,
        updatedat: "10:00 Am"),
    Chatmodel(
        name: "safwan",
        message: "evde",
        avatar:
            "https://www.whatsappimages.in/wp-content/uploads/2021/01/Mast-Dp-For-Whatsapp-Pictures-HD-768x876.jpg",
        isgroup: false,
        updatedat: "11:00 Am"),
    Chatmodel(
        name: "jishnu",
        message: "engotta",
        avatar:
            "https://th.bing.com/th/id/OIP.ROJLMWQcPybcPj5Pn70_oAHaHa?w=202&h=202&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        isgroup: false,
        updatedat: "01:00 Pm"),
    Chatmodel(
        name: "fasal",
        message: "ijj evde",
        avatar:
            "https://th.bing.com/th/id/OIP.HN6mtQ3VXrKfwMSRHujiVwAAAA?w=198&h=197&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        isgroup: false,
        updatedat: "02:00 Pm"),
    Chatmodel(
        name: "ameen",
        message: "ok",
        avatar:
            "https://th.bing.com/th/id/OIP.fEstyBvbrWiYhLRPDqv55wHaHa?w=195&h=195&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        isgroup: false,
        updatedat: "03:00 pm"),
    Chatmodel(
        name: "team",
        message: "shari",
        avatar:
            "https://th.bing.com/th/id/OIP.WVtuJwYbv-Bhg3yLK7U_8wHaIA?w=185&h=200&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        isgroup: true,
        updatedat: "04:00 Pm"),
    Chatmodel(
        name: "malppuram",
        message: "shari",
        avatar: "",
        isgroup: true,
        updatedat: "04:00 Pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00796B),
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemBuilder: (context, intex) {
          return Chattile(
            chatdata: chatlist[intex],
          );
        },
        itemCount: chatlist.length,
      ),
    );
  }
}
