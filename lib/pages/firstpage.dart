import 'package:flutter/material.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/axact/lib/pages/sizeConfig.dart';
class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    SizeConfig().init(context);
    return Scaffold(

      appBar: AppBar(
        title: Center(
            child: Text('Axact', style: TextStyle(color: Colors.black,))),
        backgroundColor: Colors.white,
      ),
      body:
      Container(
        color: Colors.white38,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlatButton(onPressed: null, child:
            Container(height:data.size.height/10,
              width: data.size.width/2.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/axact (2).png'),fit: BoxFit.cover),
              ),
            )),
            SizedBox(width: 2,),
            FlatButton(onPressed: null, child:
            Container(height:data.size.height/10,
              width:data.size.width/2.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/axact (3).png'),fit: BoxFit.cover),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
