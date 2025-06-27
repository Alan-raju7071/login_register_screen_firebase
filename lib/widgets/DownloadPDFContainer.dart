import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/pdf_generator.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';


class DownloadPDFContainer extends StatelessWidget {
  final String selectedMonth;
  final String selectedMoney;

  const DownloadPDFContainer({
    super.key,
    required this.selectedMonth,
    required this.selectedMoney,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async {
         await generatePrintContainerPDF(
           selectedMonth: selectedMonth,
           selectedMoney: selectedMoney,
       );
        
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colorconstant.primaryblue
        ),
        padding: EdgeInsets.all(10),
        child: Text("Download the sample salary slip format for PDF",style: TextStyle(fontWeight: FontWeight.bold,color: Colorconstant.primarywhite),),
      
      ),
    );
  }
}
