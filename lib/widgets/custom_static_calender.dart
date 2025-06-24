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
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryblack,),
            custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
             custom_date_container(containercolor: Colorconstant.primarywhite,date: "3",datecolor: Colorconstant.primaryblack,),
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
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryblack,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
       custom_date_container(containercolor: Colorconstant.primarywhite,date: "3",datecolor: Colorconstant.primaryblack,),
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
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryblack,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
       custom_date_container(containercolor: Colorconstant.primarywhite,date: "3",datecolor: Colorconstant.primaryblack,),
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
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryblack,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
       custom_date_container(containercolor: Colorconstant.primarywhite,date: "3",datecolor: Colorconstant.primaryblack,),
        custom_date_container(containercolor: Colorconstant.primarywhite,date: "4",datecolor: Colorconstant.primaryblack,),
         custom_date_container(containercolor: Colorconstant.primarywhite,date: "5",datecolor: Colorconstant.primaryblack,),
          custom_date_container(containercolor: Colorconstant.primarywhite,date: "6",datecolor: Colorconstant.primaryblack,),
           custom_date_container(containercolor: Colorconstant.primarywhite,date: "7",datecolor: Colorconstant.primaryblack,),
                                  ],
                                ),
                                 SizedBox(height: 20,),
                                Row(
                                  
                                  children: [
     custom_date_container(containercolor: Colorconstant.primarywhite,date: "1",datecolor: Colorconstant.primaryblack,),
      SizedBox(width: 25,),
      custom_date_container(containercolor: Colorconstant.primarywhite,date: "2",datecolor: Colorconstant.primaryblack,),
       
                                  ],
                                ),
                                 ],
    );
  }
}

