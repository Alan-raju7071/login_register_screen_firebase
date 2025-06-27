import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class payslipHistoryContainer extends StatelessWidget {
  final Function(String) onMonthSelected;
   final Function(String) onMoney;


  const payslipHistoryContainer({super.key, required this.onMonthSelected,required this.onMoney});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colorconstant.darkgrey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Month"),
            Text("May 2025"),
            Text("April 2025"),
            Text("March 2025"),
          ]),
          
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Net Pay"),
            Text("₹45,000"),
            Text("₹43,000"),
            Text("₹41,000"),
          ]),
          
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Status"),
            _buildStatusRow("May 2025","₹45,000"),
            _buildStatusRow("April 2025","₹43,000"),
            _buildStatusRow("March 2025","₹41,000"),
          ]),
          
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Action"),
            _buildDownloadRow(),
            _buildDownloadRow(),
            _buildDownloadRow(),
          ]),
        ],
      ),
    );
  }

  Widget _buildStatusRow(String month, String money) {
    return InkWell(
     onTap: () {
      onMonthSelected(month);
      onMoney(money);
    },
      child: Row(
        children: [
          Icon(Icons.check_box, color: Colorconstant.green),
          Text("Generated"),
        ],
      ),
    );
  }

  Widget _buildDownloadRow() {
    return Row(
      children: [
        Icon(Icons.arrow_drop_down, color: Colorconstant.primaryblue),
        Text("Download"),
      ],
    );
  }
}
