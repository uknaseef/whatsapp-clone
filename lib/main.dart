//@dart=2.9
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/callpage.dart';
import 'package:whatsappclone/pages/camerapage.dart';
import 'package:whatsappclone/pages/chatpage.dart';
import 'package:whatsappclone/pages/statuspage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green, //to change the entair theme of app//
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //to get the white back groud//
        appBar: AppBar(
          backgroundColor: Color(0xFF00796B),
          title: Text("WhatsApp"),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    print("hi");
                  },
                  icon: Icon(Icons.search),
                ),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text("New group"),
                    ),
                    PopupMenuItem(
                      child: Text("New broadcast"),
                    ),
                    PopupMenuItem(
                      child: Text("Linked devices"),
                    ),
                    PopupMenuItem(
                      child: Text("Starred messages"),
                    ),
                    PopupMenuItem(
                      child: Text("Payments"),
                    ),
                    PopupMenuItem(
                      child: Text("Settings"),
                    ),
                  ];
                })
              ],
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [camera(), Chatpage(), statuspage(), callpage()],
          controller: tabController,
        ),
      ),
    );
  }
}
