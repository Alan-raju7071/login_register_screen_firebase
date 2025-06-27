import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/widgets/EarningAmount_container.dart';
import 'package:login_register_screen_firebase/widgets/EmployeeSummary.dart';
import 'package:login_register_screen_firebase/widgets/TotalNetPayableContainer.dart';
import 'package:login_register_screen_firebase/widgets/employeeAcountDetails.dart';

class print_container extends StatelessWidget {
  const print_container({
    super.key,
    required this.selectedMonth,
    required this.selectedMoney,
  });

  final String selectedMonth;
  final String selectedMoney;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        employeeSummary( selectedMonth: selectedMonth,selectedMoney: selectedMoney,),
     
    Divider(),
    employeeAcountDetails(),
    SizedBox(height: 10,),
    EarningAmount_container(selectedMoney: selectedMoney,),
    SizedBox(height: 5,),
    TotalNetPayableContainer(selectedMoney: selectedMoney,),
     ],
    );
  }
}

