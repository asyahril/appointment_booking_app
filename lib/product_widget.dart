import 'package:appointment_booking_app/product.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  final Product? product;
  final bool? initialSelection;
  final ValueChanged<bool>? onSelectionChanged;

  const ProductWidget({Key? key, this.product, this.initialSelection, this.onSelectionChanged})
      : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool _selected = false;
  bool _showTreatment = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected = widget.initialSelection ?? false;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> detailWidgetList = [
      Text(widget.product?.description ?? ''),
      TextButton(
        child: Text(_showTreatment ? 'See Treatment List'
            : 'Hide Treatment List'),
        onPressed: () {
          setState(() {
            _showTreatment = !_showTreatment;
          });
        },
      ),
    ];

    if (_showTreatment) {
      widget.product?.treatmentList?.forEach((item) {
        detailWidgetList.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('- ${item.name}'),
            Text('IDR ' + ((item.price ?? 0) / 1000).toStringAsFixed(0) + 'k',
                textAlign: TextAlign.right),
          ],
        ));
      });
    }

    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product?.name ?? ''),
                Text('IDR ' + ((widget.product?.totalPrice() ?? 0) / 1000)
                    .toStringAsFixed(0) + 'k'),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Checkbox(
                value: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value ?? false;
                  });

                  if (widget.onSelectionChanged != null) {
                    widget.onSelectionChanged!(_selected);
                  }
                },
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: detailWidgetList
        ),
      ),
    );
  }
}
