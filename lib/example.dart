import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class example extends StatefulWidget {

   example( {Key key, }) : super(key: key);

  @override
  _exampleState createState() => _exampleState();

}
var v= 12;
var v1="hello";
var v3=4556;
class _exampleState extends State<example> {
  Widget _main(){
    var v= 12;
    var v1="hello";
    var v3=4556;
    print(v);
    print(v1);
    print(v3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple,
        child: Column(
          children: [
            Container(
             child: RaisedButton(
               child: Text("Hello"),
               onPressed:(){setState(() {
                 if(v>v3){
                   print('true');
                 }
                 else{
                   print('false');
                 }
                 _main();
               });
                 }
             ),
            ),
          ],
        ),
      ),

    );
  }
}
