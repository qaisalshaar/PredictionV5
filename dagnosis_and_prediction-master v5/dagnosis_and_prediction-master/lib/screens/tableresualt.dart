import 'package:dagnosis_and_prediction/Widget/custom_buttons.dart';
import 'package:dagnosis_and_prediction/screens/current_location.dart';
import 'package:dagnosis_and_prediction/screens/location_screen.dart';
import 'package:dagnosis_and_prediction/screens/locationtest.dart';
import 'package:dagnosis_and_prediction/screens/login_screen.dart';
import 'package:dagnosis_and_prediction/screens/users_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TableResualt());
}

class TableResualt extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<TableResualt> {
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
                    'Ahmed Saeed',
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
                    'Male',
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
                      child: Column(children: [Text('10/10/2010')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('260')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('150')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [
                        Text('Emergency Situation',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red))
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('12/10/2010')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('280')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('123')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [
                        Text('Emergency Situation',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red))
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('20/10/2010')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('140')]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(children: [Text('122')]),
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
//             ElevatedButton(
//                 onPressed: () async {
//                   // Position position = await _getGeoLocationPosition();
//                   // location =
//                   //     'Lat: ${position.latitude} , Long: ${position.longitude}';
//                   // GetAddressFromLatLong(position);

//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: (BuildContext context) {
//                     return MyCurrentLocation();
//                   }));

// // MyCurrentLocation
//                 },

//                 child: const Text("Find Patient Location")),

            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyCurrentLocation()),
                  );
                },
                icon: Icon(
                    Icons.add_location_rounded), //icon data for elevated button
                label: Text("Find Patient Location"), //label text
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 68, 255, 93) //elevated btton background color
                    )),
            SizedBox(
              height: 20,
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
