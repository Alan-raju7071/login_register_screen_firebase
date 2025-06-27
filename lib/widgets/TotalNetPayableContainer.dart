import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class TotalNetPayableContainer extends StatelessWidget {
  final String selectedMoney;
  const TotalNetPayableContainer({
    super.key, required this.selectedMoney
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colorconstant.darkgrey)
              
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Net Payable",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text("Gross Earning-Total Deductions")
              ],
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colorconstant.lightgreen,
              borderRadius: BorderRadius.circular(10)
            ),
            
            width: 150,
            padding: EdgeInsets.all(5),
            
            child: Center(child: Text(selectedMoney,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
          )
        ],
      ),
              
    );
  }
}

