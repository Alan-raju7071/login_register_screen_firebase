import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/Qrverification_screen/Qr_verification_screen.dart';
import 'package:login_register_screen_firebase/view/face_verification_screen/face_verification_screen.dart';

enum PunchInType { onsite, workFromHome }

class PunchController with ChangeNotifier {
  PunchInType? selectedPunchInType;

  bool isOnsite = false;
  bool isWorkFromHome = false;
  bool hasPunchedIn = false;

  void handlePunchIn({
    required BuildContext context,
    required void Function(PunchInType type) onTypeSelected,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Punch-In Type"),
        content: const Text("Are you working from home or on site today?"),
        actions: [
          ElevatedButton(
            onPressed: () {
              _setPunchType(PunchInType.onsite);
              hasPunchedIn = true;
              onTypeSelected(PunchInType.onsite);
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => Qrverificationscreen(white: Colorconstant.primarywhite, green: Colorconstant.primarygreen,text: "punch in successful",)),
              );
            },
            child: const Text("On Site"),
          ),
          ElevatedButton(
            onPressed: () {
              _setPunchType(PunchInType.workFromHome);
              hasPunchedIn = true;
              onTypeSelected(PunchInType.workFromHome);
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  FaceVerificationScreen(white:Colorconstant.primarywhite , green: Colorconstant.primarygreen,text: "punch in successful",)),
              );
            },
            child: const Text("Work From Home"),
          ),
        ],
      ),
    );
  }

  void handlePunchOut(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        
        
        icon: const Icon(Icons.warning_amber, color: Colors.orange,size: 40,),
        title: const Text(
          "Do you really want\nto checkout!",
          style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colorconstant.primaryorange
          ),
          
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              
              
            },
            child: const Text("Update Task"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              if (hasPunchedIn) {
                if (isOnsite) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) =>  Qrverificationscreen(white: Colorconstant.primarywhite, green: Colorconstant.primaryorange,text: "punch out successful",)),
                  );
                } else if (isWorkFromHome) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  FaceVerificationScreen(white:Colorconstant.primarywhite , green: Colorconstant.primaryorange,text: "punch out successful",)),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("You haven't punched in yet.",
                  style: TextStyle(
                    color: Colorconstant.primaryorange
                  ),
                  )),
                );
              }
            },
            child: const Text("punch Out"),
          ),
        ],
      ),
    );
  }

  void _setPunchType(PunchInType type) {
    selectedPunchInType = type;
    isOnsite = type == PunchInType.onsite;
    isWorkFromHome = type == PunchInType.workFromHome;
    notifyListeners();
  }
}