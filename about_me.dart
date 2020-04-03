import 'package:flutter/material.dart';
import 'bmi.dart';

class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: new AppBar(
        backgroundColor: Colors.grey,
        title: new Center(
          child: new Text("Profil"),
        )
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.asset('images/pp.jpg', 
           width: 100.0,
          height: 90.0,
          fit: BoxFit.cover,
        ),
      ),
              Text(
                  "Idham Kholid ", style: TextStyle(color: Colors.blue, fontSize: 15, height: 2, fontWeight: FontWeight.bold,),),
              Text(
                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.blue, fontSize: 10, height: 1),),

              Container(
                margin: EdgeInsets.only(top:5),
                padding: EdgeInsets.all(10),
                width: 200,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Singaraja",Icons.my_location),
                        ContainIcon(12,"Run",Icons.done),
                      ],),
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Jalak Putih 4",Icons.home),
                        ContainIcon(12,"Undiksha",Icons.location_city),
                      ], ),],  ), ),   ],),  ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);
  @override
  Widget build(BuildContext context) {
    return    Container(
        
        width: 85,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          border: Border.all(width:3,color:Colors.green,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 23,
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top:10),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 10,
          color: Colors.red
      ),
      ),
    );
  }
}