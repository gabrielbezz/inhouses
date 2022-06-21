
import 'package:flutter/material.dart';

class CalendarioViagem extends StatelessWidget{
  const CalendarioViagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          child: Image(image: AssetImage('assets/images/logoInHouses.png'),
          width: 100.0,
          height: 250.0,
          )
        ),
      ),
      body:
        MyStatefulWidgetCalendario(restorationId: 'main',),
      );
     
  }
  
}

  class MyStatefulWidgetCalendario extends StatefulWidget {
  const MyStatefulWidgetCalendario({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;

  @override
  State<MyStatefulWidgetCalendario> createState() => _MyStatefulWidgetStateCalendario();}

/// RestorationProperty objects can be used because of RestorationMixin.
class _MyStatefulWidgetStateCalendario extends State<MyStatefulWidgetCalendario>
    with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime(2022));
  final RestorableDateTimeN _endDate =
      RestorableDateTimeN(DateTime(2022, 1, 5));
  late final RestorableRouteFuture<DateTimeRange?>
      _restorableDateRangePickerRouteFuture =
      RestorableRouteFuture<DateTimeRange?>(
    onComplete: _selectDateRange,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator
          .restorablePush(_dateRangePickerRoute, arguments: <String, dynamic>{
        'initialStartDate': _startDate.value?.millisecondsSinceEpoch,
        'initialEndDate': _endDate.value?.millisecondsSinceEpoch,
      });
    },
  );

  void _selectDateRange(DateTimeRange? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _startDate.value = newSelectedDate.start;
        _endDate.value = newSelectedDate.end;
      });
    }
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_startDate, 'start_date');
    registerForRestoration(_endDate, 'end_date');
    registerForRestoration(
        _restorableDateRangePickerRouteFuture, 'date_picker_route_future');
  }

  static Route<DateTimeRange?> _dateRangePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTimeRange?>(
      context: context,
      builder: (BuildContext context) {
        return DateRangePickerDialog(
          restorationId: 'date_picker_dialog',
          initialDateRange:
              _initialDateTimeRange(arguments! as Map<dynamic, dynamic>),
          firstDate: DateTime(2022),
          currentDate: DateTime(2022, 5, 25),
          lastDate: DateTime(2023),
        );
      },
    );
  }

  static DateTimeRange? _initialDateTimeRange(Map<dynamic, dynamic> arguments) {
    if (arguments['initialStartDate'] != null &&
        arguments['initialEndDate'] != null) {
      return DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialStartDate'] as int),
        end: DateTime.fromMillisecondsSinceEpoch(
            arguments['initialEndDate'] as int),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            child: Text('Local:', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          Card(
            color: Colors.black,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0, 
            ),
            child: Container(
              width: 250.0,
              height: 25.0,
              child: Center(
                child: Text(
                  'Salvador', style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: OutlinedButton(
                  onPressed: () {
                    _restorableDateRangePickerRouteFuture.present();
                  },
                  child: const Text('Selecionar Data',style: TextStyle(color: Colors.black), ),
                ),
            ),
          ),
        ],
  
      ),
      );
  }
}



