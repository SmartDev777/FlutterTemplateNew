import 'package:flutter/material.dart';

showDatePickerApp(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.day,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null )
    {
      // setState(() {
      //   widget.currentDate = picked;
      //   print( widget.currentDate);
      // });  
      }
}


 getCurrentDate()
 {
    return DateTime.now();

 }     

   String getUTCTime(DateTime data,bool isEndDate)
  {
    var date=DateFormat(isEndDate?'yyyy-MM-dd 23:59:59':'yyyy-MM-dd 00:00:00').format(data);

    return DateFormat('yyyy-MM-dd').format(data);

  }
