import 'package:appointment_booking_app/treatment.dart';

class Product {
  String? name;
  String? description;
  List<Treatment>? treatmentList;

  Product({this.name, this.description, this.treatmentList});

  double totalPrice() {
    double result = 0;

    for (int i = 0; i < (treatmentList?.length ?? 0); i++) {
      result += treatmentList?[i].price ?? 0;
    }

    return result;
  }
}
