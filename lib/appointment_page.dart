import 'package:appointment_booking_app/data_set.dart';
import 'package:appointment_booking_app/doctor.dart';
import 'package:appointment_booking_app/personal_data.dart';
import 'package:appointment_booking_app/product.dart';
import 'package:appointment_booking_app/product_widget.dart';
import 'package:appointment_booking_app/treatment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentPage extends StatefulWidget {
  final Doctor? doctor;
  const AppointmentPage({Key? key, this.doctor}) : super(key: key);

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  int _step = 1;
  final Set<Product> _selectedProductSet = {};
  String? _selectedDate;
  String? _selectedStartTime;
  String? _selectedEndTime;
  final PersonalData _personalData = PersonalData();
  final List<bool> _dateToggleSelection = [];
  final List<String> _dateList = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < 9; i++) {
      DateTime dateTime = DateTime.now().add(Duration(days: i));

      _dateList.add(DateFormat('yyyy-MM-dd').format(dateTime));
      _dateToggleSelection.add(false);
    }
  }

  Widget productSelectionWidget(BuildContext context) {
    List<Product?> productList = DataSet.productList;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Select Product',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text('${_selectedProductSet.length} Product Selected'),
          ],
        ),
        const Text(''),
        Column(
          children: productList.map((item) => ProductWidget(
            product: item,
            initialSelection: _selectedProductSet.contains(item),
            onSelectionChanged: (selected) {
              setState(() {
                if (selected) {
                  _selectedProductSet.add(item!);
                } else {
                  _selectedProductSet.remove(item!);
                }
              });
            },
          )).toList(),
        ),
      ],
    );
  }

  Widget appointmentScheduleWidget(BuildContext context) {
    List<Widget> dateWidgetList = [];
    List<Widget> timeWidgetList = [];

    for (var date in _dateList) {
      DateTime dateTime = DateTime.parse(date);

      dateWidgetList.add(Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateFormat('E').format(dateTime)),
          Text(dateTime.day.toString(),
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ));
    }

    widget.doctor?.scheduleList?.forEach((item) {
      if (_selectedDate != null && DateTime.parse(_selectedDate!).weekday == item.day) {
        timeWidgetList.add(RadioListTile(
          title: Text('${item.startTime} - ${item.endTime}'),
          value: '${item.startTime} - ${item.endTime}',
          groupValue: '$_selectedStartTime - $_selectedEndTime',
          onChanged: (value) {
            setState(() {
              _selectedStartTime = item.startTime;
              _selectedEndTime = item.endTime;
            });
          },
        ));
      }
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Schedule Appointment',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const Text(''),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10.0),
            child: ToggleButtons(
              children: dateWidgetList,
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < _dateToggleSelection.length; i++) {
                    if (i == index) {
                      _dateToggleSelection[i] = true;
                    } else {
                      _dateToggleSelection[i] = false;
                    }
                  }

                  if (_selectedDate != _dateList[index]) {
                    _selectedDate = _dateList[index];
                    _selectedStartTime = null;
                    _selectedEndTime = null;
                  }
                });
              }, isSelected: _dateToggleSelection,
            ),
          ),
        ),
        Column(
          children: timeWidgetList,
        )
      ],
    );
  }

  Widget personalDataWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Personal Data',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const Text(''),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Name:"
                ),
                textCapitalization: TextCapitalization.words,
                initialValue: _personalData.name,
                onChanged: (value) => _personalData.name = value,
                validator: (value) {
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Address:"
                ),
                textCapitalization: TextCapitalization.words,
                initialValue: _personalData.address,
                onChanged: (value) => _personalData.address = value,
                validator: (value) {
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Date of Birth:"
                ),
                keyboardType: TextInputType.datetime,
                initialValue: _personalData.dob,
                onChanged: (value) => _personalData.dob = value,
                validator: (value) {
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                items: ['Male', 'Female'].map((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                )).toList(),
                decoration: const InputDecoration(
                  labelText: "Gender:",
                ),
                value: _personalData.gender,
                onChanged: (value) => _personalData.gender = value,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Email:"
                ),
                keyboardType: TextInputType.emailAddress,
                initialValue: _personalData.email,
                onChanged: (value) => _personalData.email = value,
                validator: (value) {
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Phone:"
                ),
                keyboardType: TextInputType.phone,
                initialValue: _personalData.phone,
                onChanged: (value) => _personalData.phone = value,
                validator: (value) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget appointmentDetailWidget(BuildContext context) {
    String selectedDateView = '';

    if (_selectedDate != null) {
      selectedDateView = DateFormat('d MMM yyyy').format(DateTime.parse(_selectedDate!));
    }

    List<Widget> detailWidgetList = [
      const Text('Personal Data',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      Text(' - Name: ' + (_personalData.name ?? '')),
      Text(' - Address: ' + (_personalData.address ?? '')),
      Text(' - Email: ' + (_personalData.email ?? '')),
      Text(' - Phone: ' + (_personalData.phone ?? '')),
      const Text(''),
      const Text('Doctor Profile',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      Text(' - Name: ' + (widget.doctor?.name ?? '')),
      Text(' - Speciality: ' + (widget.doctor?.speciality ?? '')),
      Text(' - SIP: ' + (widget.doctor?.sip ?? '')),
      const Text(''),
      const Text('Booking Date',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      Text(' - Date ($selectedDateView)'),
      Text(' - Time ($_selectedStartTime - $_selectedEndTime)'),
      const Text(''),
      const Text('Product Details',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ];
    double grandTotal = 0;

    for (var item in _selectedProductSet) {
      detailWidgetList.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(' + ' + (item.name ?? '')),
          Text('IDR ' + (item.totalPrice() / 1000)
              .toStringAsFixed(0) + 'k'),
        ],
      ));

      grandTotal += item.totalPrice();

      for (var treatment in item.treatmentList ?? <Treatment>[]) {
        detailWidgetList.add(Text('  - ' + (treatment.name ?? '')));
      }
    }

    detailWidgetList.add(Table(
      children: [
        TableRow(
          children: [
            const Text(''),
            const Text('Subtotal'),
            Text('IDR ' + (grandTotal / 1000).toStringAsFixed(0) + 'k', textAlign: TextAlign.right),
          ]
        ),
        const TableRow(
          children: [
            Text(''),
            Text('Discount'),
            Text('IDR 0k', textAlign: TextAlign.right),
          ],
        ),
        TableRow(
          children: [
            const Text(''),
            const Text('Grand Total',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text('IDR ' + (grandTotal / 1000).toStringAsFixed(0) + 'k',
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Appointment Details',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const Text(''),
        Card(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: detailWidgetList,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text('Save Appointment and Pay'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextButton leadingButton = TextButton(
      child: const Text('Back'),
      style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
      onPressed: () {
        if (_step > 1) {
          setState(() {
            _step--;
          });
        } else {
          Navigator.pop(context);
        }
      },
    );
    List<TextButton> actionButtonList = [];
    Widget? currentPageWidget;

    if (_step < 4) {
      actionButtonList.add(TextButton(
        child: const Text('Next'),
        style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
        onPressed: () {
          setState(() {
            _step++;
          });
        },
      ));
    }

    switch (_step) {
      case 1:
        currentPageWidget = productSelectionWidget(context);
        break;
      case 2:
        currentPageWidget = appointmentScheduleWidget(context);
        break;
      case 3:
        currentPageWidget = personalDataWidget(context);
        break;
      case 4:
        currentPageWidget = appointmentDetailWidget(context);
        break;
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Step $_step of 4'),
        automaticallyImplyLeading: false,
        leading: leadingButton,
        actions: actionButtonList,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(10.0),
          child: currentPageWidget,
        ),
      ),
    );
  }
}
