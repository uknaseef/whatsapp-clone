import 'package:flutter/material.dart';
import 'package:whatsappclone/models/statusmodel.dart';
import 'package:whatsappclone/pages/camerapage.dart';
import 'package:whatsappclone/widgets/statustile.dart';
import 'package:whatsappclone/widgets/utilitywidgets.dart';

class statuspage extends StatelessWidget {
  statuspage({Key? key}) : super(key: key);
  List statuslist = [
    Statusmodel(
        name: "musthafa",
        updatedinfo: "11 minutes ago",
        avatar:
            "https://th.bing.com/th/id/R.10e45df92f7f63c83d8168d4cde3b634?rik=PXrvDO8FJ2uJyg&riu=http%3a%2f%2fwww.wallpapers13.com%2fwp-content%2fuploads%2f2016%2f01%2fSunset-Background-Images-Hd-Sunset-background-images-hd-07329-1920x1200.jpg&ehk=4ra5RZwmXytaGIl8f4o3aMq2gjJS14dJp1PsbjysjjA%3d&risl=&pid=ImgRaw&r=0"),
    Statusmodel(
        name: "ameen",
        updatedinfo: "40 minutes ago",
        avatar:
            "https://th.bing.com/th/id/R.5b363881406235d4848b5f94b163726b?rik=a%2fw8sd7qAhGSKQ&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f01%2f228364-nature-sunset-landscape.jpg&ehk=%2fFUG91L3wUlELEqB45OcI8utn8LI%2fo%2bk6XXSMPpbHDk%3d&risl=&pid=ImgRaw&r=0"),
    Statusmodel(
        name: "jishnu",
        updatedinfo: "50 minutes ago",
        avatar:
            "https://th.bing.com/th/id/OIP.R8m6H73jEeRkb92k6kOb0gHaEK?w=325&h=183&c=7&r=0&o=5&dpr=1.5&pid=1.7"),
    Statusmodel(
        name: "anshid",
        updatedinfo: "55 minutes ago",
        avatar: "https://images3.alphacoders.com/823/82317.jpg"),
    Statusmodel(
        name: "dinshad",
        updatedinfo: "57 minutes ago",
        avatar:
            "https://www.pixelstalk.net/wp-content/uploads/2016/07/HD-Relaxing-Image.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 45,
            height: 56,
            decoration: BoxDecoration(
                shape: BoxShape.circle, //stack overflow//
                gradient: RadialGradient(
                  radius: .5,
                  colors: [
                    Color(0xFF0187D0),
                    Color(0xFF01579C),
                  ],
                )),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.grey,
              ),
            ),
          ),
          utilitywidget().HeightSpacer(10),
          FloatingActionButton(
            backgroundColor: Color(0xFF00796B),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return camera();
              }));
              // camera();
            },
            child: Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          utilitywidget().HeightSpacer(5),
          InkWell(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dps.jpg"),
                radius: 20,
              ),
              title: Text("My status"),
              subtitle: Text("tap to add status update"),
            ),
            onTap: () {},
          ),
          utilitywidget().HeightSpacer(10),
          Row(
            children: [
              utilitywidget().Widthspacer(20),
              Text(
                "Recent updates",
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemBuilder: (context, intex) {
                return statustile(
                  statusdata: statuslist[intex],
                );
              },
              itemCount: statuslist.length,
            ),
          ),
        ],
      ),
    );
  }
}
