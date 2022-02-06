import 'package:appointment_booking_app/consultation_schedule.dart';

class Doctor {
  String? name;
  String? speciality;
  String? sip;
  List<ConsultationSchedule>? scheduleList;

  Doctor({this.name, this.speciality, this.sip, this.scheduleList});
}
