import 'package:appointment_booking_app/appointment_page.dart';
import 'package:appointment_booking_app/data_set.dart';
import 'package:appointment_booking_app/doctor.dart';
import 'package:flutter/material.dart';

class DoctorSelectionPage extends StatefulWidget {
  final String? speciality;
  const DoctorSelectionPage({Key? key, this.speciality}) : super(key: key);

  @override
  _DoctorSelectionPageState createState() => _DoctorSelectionPageState();
}

class _DoctorSelectionPageState extends State<DoctorSelectionPage> {
  @override
  Widget build(BuildContext context) {
    List<Doctor?> doctorList = [];

    for (var item in DataSet.doctorList) {
      if (widget.speciality == null || item.speciality == widget.speciality) {
        doctorList.add(item);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.speciality ?? 'All Specialities'),
        automaticallyImplyLeading: false,
        leading: TextButton(
          child: const Text('Back'),
          style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(10.0),
          child: Column(
              children: doctorList.map((item) => ListTile(
                leading: const SizedBox.square(
                  dimension: 60.0,
                  child: Card(),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item?.name ?? ''),
                    Text((item?.speciality ?? '') + ' Specialist'),
                    ElevatedButton(
                      child: const Text('Make Appointment'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AppointmentPage(doctor: item),
                        ));
                      },
                    ),
                  ],
                ),
              )).toList(),
          ),
        ),
      ),
    );
  }
}

