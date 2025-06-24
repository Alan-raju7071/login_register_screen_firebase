import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custom_date_container.dart';

class custom_static_calender extends StatelessWidget {
  const custom_static_calender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryred,),
            custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
             custom_date_container(containercolor: Colorconstant.green,date: "3",datecolor: Colorconstant.primarywhite),
              custom_date_container(containercolor: Colorconstant.primarywhite,date: "4",datecolor: Colorconstant.primaryblack,),
               custom_date_container(containercolor: Colorconstant.primarywhite,date: "5",datecolor: Colorconstant.primaryblack,),
                custom_date_container(containercolor: Colorconstant.primarywhite,date: "6",datecolor: Colorconstant.primaryblack,),
                 custom_date_container(containercolor: Colorconstant.primarywhite,date: "7",datecolor: Colorconstant.primaryblack,),
         ],
                                      ),
     
                                
                                 SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "8",datecolor: Colorconstant.primaryred,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "9",datecolor: Colorconstant.primaryblack,),
       custom_date_container(containercolor: Colorconstant.primarywhite,date: "10",datecolor: Colorconstant.primaryblack,),
        custom_date_container(containercolor: Colorconstant.primarywhite,date: "11",datecolor: Colorconstant.primaryblack,),
         custom_date_container(containercolor: Colorconstant.green,date: "12",datecolor: Colorconstant.primarywhite,),
          custom_date_container(containercolor: Colorconstant.primarywhite,date: "13",datecolor: Colorconstant.primaryblack,),
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "14",datecolor: Colorconstant.primaryblack,),
                                  ],
                                ),
                                 SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "15",datecolor: Colorconstant.primaryred,),
      custom_date_container(containercolor: Colorconstant.primaryblue,date: "16",datecolor: Colorconstant.primarywhite,),
       custom_date_container(containercolor: Colorconstant.primaryblue,date: "17",datecolor: Colorconstant.primarywhite,),
        custom_date_container(containercolor: Colorconstant.primarywhite,date: "18",datecolor: Colorconstant.primaryblack,),
         custom_date_container(containercolor: Colorconstant.primarywhite,date: "19",datecolor: Colorconstant.primaryblack,),
          custom_date_container(containercolor: Colorconstant.primaryyellow,date: "20",datecolor: Colorconstant.primarywhite,),
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "21",datecolor: Colorconstant.primaryblack,),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "22",datecolor: Colorconstant.primaryred,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "23",datecolor: Colorconstant.primaryblack,),
       custom_date_container(containercolor: Colorconstant.primarywhite,date: "24",datecolor: Colorconstant.primaryblack,),
        custom_date_container(containercolor: Colorconstant.primaryblue,date: "25",datecolor: Colorconstant.primarywhite,),
         custom_date_container(containercolor: Colorconstant.primarywhite,date: "26",datecolor: Colorconstant.primaryblack,),
          custom_date_container(containercolor: Colorconstant.primarywhite,date: "27",datecolor: Colorconstant.primaryblack,),
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "28",datecolor: Colorconstant.primaryblack,),
                                  ],
                                ),
                                 SizedBox(height: 20,),
                                Row(
                                  
                                  children: [
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "29",datecolor: Colorconstant.primaryred,),
      SizedBox(width: 25,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "30",datecolor: Colorconstant.primaryblack,),
       
                                  ],
                                ),
                                 ],
    );
  }
}

