import 'package:appointment_booking_app/consultation_schedule.dart';
import 'package:appointment_booking_app/doctor.dart';
import 'package:appointment_booking_app/product.dart';
import 'package:appointment_booking_app/treatment.dart';

class DataSet {
  static final List<Doctor> _doctorList = [
    Doctor(name: 'dr. Andi Wicaksono', speciality: 'Cardiology', sip: '101/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.sunday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Adi Rambo', speciality: 'Cardiology', sip: '102/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Hasan Wicaksono', speciality: 'Neurology', sip: '103/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.sunday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Syifa Murphy', speciality: 'Neurology', sip: '104/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Ali Rambo', speciality: 'Neurology', sip: '105/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Endro Wicaksono', speciality: 'Urulogist', sip: '106/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Navy Rambo', speciality: 'Urulogist', sip: '107/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Theresa Wicaksono', speciality: 'Dentist', sip: '108/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Terry Murphy', speciality: 'Dentist', sip: '109/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
    Doctor(name: 'dr. Army Rambo', speciality: 'Dentist', sip: '110/ABC/2020', scheduleList: [
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.monday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.tuesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.wednesday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 AM', endTime: '10.00 AM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '1.30 PM', endTime: '4.00 PM'),
      ConsultationSchedule(day: DateTime.thursday, startTime: '7.30 PM', endTime: '10.00 PM'),
      ConsultationSchedule(day: DateTime.friday, startTime: '7.30 AM', endTime: '10.00 AM'),
    ]),
  ];
  static final List<Product> _productList = [
    Product(
        name: 'Root Canal',
        description: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's "
            "standard dummy text ever since the 1500s, when an unknown printer "
            "took a galley of type and scrambled it to make a type specimen "
            "book.",
        treatmentList: [
          Treatment(name: 'Concultation', price: 100000),
          Treatment(name: 'Trepenansi', price: 100000),
          Treatment(name: 'Medication', price: 100000)
        ]
    ),
    Product(
        name: 'Preventative',
        description: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's "
            "standard dummy text ever since the 1500s, when an unknown printer "
            "took a galley of type and scrambled it to make a type specimen "
            "book.",
        treatmentList: [
          Treatment(name: 'Concultation', price: 100000),
          Treatment(name: 'Trepenansi', price: 100000),
          Treatment(name: 'Medication', price: 100000)
        ]
    ),
    Product(
        name: 'Dental Implants',
        description: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's "
            "standard dummy text ever since the 1500s, when an unknown printer "
            "took a galley of type and scrambled it to make a type specimen "
            "book.",
        treatmentList: [
          Treatment(name: 'Concultation', price: 100000),
          Treatment(name: 'Trepenansi', price: 100000),
          Treatment(name: 'Medication', price: 100000)
        ]
    )
  ];

  static List<String?> specialityList() {
    Set<String?> set = <String>{};

    for (int i = 0; i < _doctorList.length; i++) {
      set.add(_doctorList[i].speciality);
    }

    return set.toList();
  }

  static List<Doctor> get doctorList => _doctorList;
  static List<Product> get productList => _productList;
}