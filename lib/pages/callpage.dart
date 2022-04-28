import 'package:flutter/material.dart';
import 'package:whatsappclone/models/callpagemodel.dart';
import 'package:whatsappclone/widgets/calltile.dart';

class callpage extends StatelessWidget {
  callpage({Key? key}) : super(key: key);
  List calllist = [
    Callpagemodel(
        name: "musthafa",
        avathar:
            "https://pickaface.net/gallery/avatar/investmentsiao5575c4d899b7a.png",
        timeanddateinfo: "22 April,6:03pm",
        isaudiocall: true,
        isvedio: false,
        isincoming: true,
        isoutgoing: false),
    Callpagemodel(
        name: "ajmal",
        avathar:
            "https://th.bing.com/th/id/OIP.zs9g3emlEhLN16b1z5_CzwHaHa?w=178&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        timeanddateinfo: "22 April,6:10pm",
        isaudiocall: false,
        isvedio: false,
        isincoming: false,
        isoutgoing: false),
    Callpagemodel(
        name: "fasal",
        avathar:
            "https://th.bing.com/th/id/OIP.i_bpSvfG5T2Ekf3xGuqQMwHaH_?w=204&h=220&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        timeanddateinfo: "22 April,7:15pm",
        isaudiocall: true,
        isvedio: false,
        isincoming: true,
        isoutgoing: false),
    Callpagemodel(
        name: "ameen",
        avathar:
            "https://th.bing.com/th/id/OIP.5c5xaFOoOAekZhQaWPLy4gHaFj?w=268&h=201&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        timeanddateinfo: "22 April,8:30pm",
        isaudiocall: false,
        isvedio: false,
        isincoming: false,
        isoutgoing: false),
    Callpagemodel(
        name: "fahis",
        avathar:
            "https://th.bing.com/th/id/OIP.ndmzWlDy0P6s6JxKVyJUfAHaHa?w=220&h=220&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        timeanddateinfo: "22 April,9:10pm",
        isaudiocall: true,
        isvedio: false,
        isincoming: true,
        isoutgoing: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00796B),
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: ListView.builder(
        itemBuilder: (context, intex) {
          return calltile(calldata: calllist[intex]);
        },
        itemCount: calllist.length,
      ),
    );
  }
}
