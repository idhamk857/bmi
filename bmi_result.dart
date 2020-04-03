import 'package:flutter/material.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({@required this.tinggi_badan, @required this.berat_badan, @required this.nama_pribadi, @required this.jenis_kelamin, @required this.tahun_lahir});
  final int tinggi_badan;
  final int berat_badan;
  final String nama_pribadi;
  final String jenis_kelamin;
  final int tahun_lahir;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obese";
    else if (bmi>=23) cBMI="Overweight";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
            
            ),),
            new Text(
            "Nama : ${nama_pribadi}",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blueAccent
            ),
            ),
            SizedBox(height: 10,child: Container(
            
            ),),
            new Text(
            "Umur : ${2020 - tahun_lahir} Tahun",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blueAccent
            ),
            ),
            SizedBox(height: 10,child: Container(
            
            ),),
            new Text(
            "Jenis Kelamin : ${jenis_kelamin} ",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blueAccent
            ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.grey,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.grey,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
              fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}