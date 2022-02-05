import 'package:appointment_booking_app/data_set.dart';
import 'package:appointment_booking_app/doctor_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appointment Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Appointment Booking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String?> _specialityList = DataSet.specialityList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(10.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Mayjen Sungkono', textAlign: TextAlign.center),
                const Text('Surabaya', textAlign: TextAlign.center),
                Text(DateFormat('E, d MMM yyyy').format(DateTime.now())),
                const Text('Hi, Silvina Ratna Putri'),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Specialities'),
                        subtitle: Wrap(
                          alignment: WrapAlignment.center,
                          children: _specialityList.map((item) => Card(
                            child: InkWell(
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                alignment: Alignment.bottomCenter,
                                margin: const EdgeInsets.all(10.0),
                                child: Text(item!),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => DoctorSelectionPage(speciality: item)
                                ));
                              },
                            ),
                          )).toList(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          child: const Text('See All'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const DoctorSelectionPage()
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
