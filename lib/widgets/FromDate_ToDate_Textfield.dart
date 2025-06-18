import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class FromDateToDateTextField extends StatefulWidget {
  const FromDateToDateTextField({super.key});

  @override
  State<FromDateToDateTextField> createState() => _FromDateToDateTextFieldState();
}

class _FromDateToDateTextFieldState extends State<FromDateToDateTextField> {
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        controller.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("From", style: TextStyle(color: Colorconstant.darkgrey)),
                    const SizedBox(height: 5),
                    Material(
                      elevation: 2,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: fromDateController,
                        readOnly: true,
                        onTap: () => _selectDate(context, fromDateController),
                        decoration: InputDecoration(
                          labelText: 'From Date',
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: Colorconstant.primarygrey,
                            fontWeight: FontWeight.bold,
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.date_range_outlined, color: Colorconstant.primarygrey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_left),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("To", style: TextStyle(color: Colorconstant.darkgrey)),
                    const SizedBox(height: 5),
                    Material(
                      elevation: 2,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: toDateController,
                        readOnly: true,
                        onTap: () => _selectDate(context, toDateController),
                        decoration: InputDecoration(
                          labelText: 'To Date',
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: Colorconstant.primarygrey,
                            fontWeight: FontWeight.bold,
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.date_range_rounded, color: Colorconstant.primarygrey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
