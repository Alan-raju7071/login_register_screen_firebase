import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leave_overview_container extends StatelessWidget {
  const leave_overview_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: const EdgeInsets.all(10),
        
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Leave Overview",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Text(
              "Your leave distribution for the current year",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(height: 50),
           Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    _buildBar(height: 40, label: "Q1"),
    const SizedBox(width: 10),
    _buildBar(height: 30, label: "Q2"),
    const SizedBox(width: 10),
    _buildBar(height: 20, label: "Q3"),
    const SizedBox(width: 10),
    _buildBar(height: 13, label: "Q4"),
  ],
),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colorconstant.primaryblue,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Leave Days Taken",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 13),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Days",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colorconstant.darkgrey,
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      "20",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Remaining",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colorconstant.darkgrey,
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      "29",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Reusable method to create each vertical bar
  Widget _buildBar({required double height, required String label}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colorconstant.primaryblue,
            ),
          ),
          const SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }
}
