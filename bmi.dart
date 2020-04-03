import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'about_me.dart';
import 'bmi_result.dart';




class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int tahunlahir = 0;

  String jeniskelamin;

  var _nama = new TextEditingController();
  var _jeniskelamin = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            //backgroundColor: Colors.blue[50],
            appBar: AppBar(
              //backgroundColor: Colors.blue[900],
              centerTitle: true,
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              title: Text('MENGHITUNG BMI'),
            ),
            
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child:
                    Image.asset('images/BMI.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.yellow[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),

                                  filled: true,
                                  hintText: 'tinggi badan'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('kg'),
                                  filled: true,
                                  hintText: 'berat badan'),
                            ),
                          ),
                        ],
                      )),

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.yellow[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                                controller: _nama,
                              keyboardType: TextInputType.text,
                              maxLength: 20,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('skuy'),

                                  filled: true,
                                  hintText: 'nama lengkap'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(     
                          controller: _jeniskelamin,
                              keyboardType: TextInputType.text,
                              maxLength: 20,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('Pria/Wanita'),
                                  filled: true,
                                  hintText: 'Jenis Kelamin'),
                            ),
                          ),
                        ],
                      )),    

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.yellow[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tahunlahir = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 8,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('born'),

                                  filled: true,
                                  hintText: 'tahun lahir'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )),

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat, nama_pribadi: _nama.text, jenis_kelamin: _jeniskelamin.text, tahun_lahir: tahunlahir)),
                         );
                       },
                       padding: EdgeInsets.only(top: 10, bottom: 10),
                       color: Colors.blue,
                       // textColor: Colors.red,
                       child: Text(
                         'HITUNG BMI',
                         style:
                         TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),


                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => HalamanSatu()),
                         );
                       },
                       
                       color: Colors.blue,
                        textColor: Colors.red,
                       child: Text(
                         'ABOUT',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),


                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparent,
            child: Container(
              height: 60,
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text(
                'Developed by Idham Kholid',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}