import 'package:flutter/material.dart';
import 'package:whatsappclone/models/callpagemodel.dart';
import 'package:whatsappclone/widgets/utilitywidgets.dart';

class calltile extends StatelessWidget {
  calltile({Key? key, required this.calldata}) : super(key: key);
  Callpagemodel calldata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(calldata.avathar),
          radius: 20,
        ),
        title: Text(calldata.name),
        subtitle: Row(
          children: [
            Icon(
              calldata.isincoming == true
                  ? Icons.arrow_upward
                  : (Icons.arrow_downward),
              size: 15,
              color: Color.fromARGB(255, 5, 124, 17),
            ),
            utilitywidget().Widthspacer(5),
            Text(calldata.timeanddateinfo),
          ],
        ),
        trailing: Icon(
          calldata.isaudiocall == true ? Icons.call : (Icons.video_call),
        ),
      ),
      onTap: () {},
    );
  }
}
