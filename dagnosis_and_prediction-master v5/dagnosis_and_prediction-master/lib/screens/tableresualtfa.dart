import 'package:dagnosis_and_prediction/Widget/custom_buttons.dart';
import 'package:dagnosis_and_prediction/screens/login_screen.dart';
import 'package:dagnosis_and_prediction/screens/users_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TableResualtFA());
}

class TableResualtFA extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<TableResualtFA> {
  @override
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Diabetes Reading By Days'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Patient Name : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Fatma Ahmed',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Gender : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                //  defaultColumnWidth: FixedColumnWidth(90.0),
                columnWidths: {
                  0: FlexColumnWidth(5),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(5),
                  3: FlexColumnWidth(4),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Days',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('Glucose',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('Cholesterol',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('Actions',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('14/02/2020')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('107')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('124')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [
                        Text('Normal',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent))
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('20/02/2020')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('101')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('119')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [
                        Text('Normal',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent))
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('26/02/2020')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('130')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('127')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [
                        Text('Normal',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent))
                      ]),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
              width: 300,
            ),
            CustomButtons(
                globalKey: _formkey,
                buttontext: 'Go Back',
                fontWeight: FontWeight.bold,
                function: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => UsresScreen()));
                }),
          ]),
        ),
      ),
    );
  }
}
