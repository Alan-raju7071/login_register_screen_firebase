import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class totalhiliday_containers extends StatelessWidget {
  const totalhiliday_containers({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Expanded(
            child: Material(
              elevation: 2,
              shape:
                  BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Total \nHolidays",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.receipt_long,
                              color: Colorconstant.primaryblue),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "18 days",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "in a year",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      width: 150,
                      child: LinearProgressIndicator(
                        minHeight: 6,
                        borderRadius: BorderRadius.circular(10),
                        value: 35 / 45,
                        backgroundColor: Colorconstant.lightblue,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Colorconstant.primaryblue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          
          Expanded(
            child: Material(
              elevation: 2,
              shape:
                  BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Upcoming \nHolidays",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.disc_full_outlined,
                              color: Colorconstant.primaryblue),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Text(
                          "4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "(Bakrid - 17 June)",
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "29 days remaining this year",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
