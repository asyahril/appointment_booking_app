import 'package:appointment_booking_app/doctor.dart';
import 'package:appointment_booking_app/product.dart';
import 'package:appointment_booking_app/treatment.dart';

class DataSet {
  static final List<Doctor> _doctorList = [
    Doctor(name: 'dr. Andi Wicaksono', speciality: 'Cardiology'),
    Doctor(name: 'dr. Amy Murphy', speciality: 'Cardiology'),
    Doctor(name: 'dr. Adi Rambo', speciality: 'Cardiology'),
    Doctor(name: 'dr. Hasan Wicaksono', speciality: 'Neurology'),
    Doctor(name: 'dr. Syifa Murphy', speciality: 'Neurology'),
    Doctor(name: 'dr. Ali Rambo', speciality: 'Neurology'),
    Doctor(name: 'dr. Endro Wicaksono', speciality: 'Urulogist'),
    Doctor(name: 'dr. Lia Murphy', speciality: 'Urulogist'),
    Doctor(name: 'dr. Navy Rambo', speciality: 'Urulogist'),
    Doctor(name: 'dr. Theresa Wicaksono', speciality: 'Dentist'),
    Doctor(name: 'dr. Terry Murphy', speciality: 'Dentist'),
    Doctor(name: 'dr. Army Rambo', speciality: 'Dentist')
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