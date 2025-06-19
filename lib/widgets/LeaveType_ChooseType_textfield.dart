import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class LeaveType_ChooseType_textfield extends StatefulWidget {
  const LeaveType_ChooseType_textfield({super.key});

  @override
  State<LeaveType_ChooseType_textfield> createState() =>
      LeaveType_ChooseType_textfieldState();
}

class LeaveType_ChooseType_textfieldState
    extends State<LeaveType_ChooseType_textfield> {
  String selectedLeaveType = 'Leave Type';
  String selectedChooseType = 'Choose Type';

  void showTypeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back))
              ],
            ),
            buildOption("casual Leave"),
            buildOption("sick leave"),
            buildOption("work from home"),
            buildOption("earned leave"),
          ],
        ),
      ),
    );
  }

  Widget buildOption(String value) {
    return ListTile(
      title: Text(value),
      onTap: () {
        
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              
              Expanded(
                child: SizedBox(
                  height: 60, 
                  child: Material(
                    elevation: 2,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app,
                              color: Colorconstant.primarygrey),
                          const SizedBox(width: 10),
                          Text(
                            selectedLeaveType,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colorconstant.primarygrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),

              
              Expanded(
                child: SizedBox(
                  height: 60, 
                  child: Material(
                    elevation: 2,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: showTypeDialog,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedChooseType,
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedChooseType == 'Choose Type'
                                    ? Colorconstant.primarygrey
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.arrow_drop_up, size: 20),
                                Icon(Icons.arrow_drop_down, size: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
