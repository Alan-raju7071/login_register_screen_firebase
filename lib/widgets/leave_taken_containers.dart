import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leave_taken_containers extends StatelessWidget {
  const leave_taken_containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow([
          _buildLeaveCard(
            title: "Total Leave Taken",
            value: "16 days",
            icon: Icons.receipt_long,
            subtitle: "29 days remaining this year",
            progress: 35 / 45,
          ),
          _buildLeaveCard(
            title: "Approval Rate",
            value: "92%",
            icon: Icons.disc_full_outlined,
            subtitle: "29 days remaining this year",
          ),
        ]),
        const SizedBox(height: 10),
        _buildRow([
          _buildLeaveCard(
            title: "Pending Request",
            value: "1",
            icon: Icons.hourglass_empty_outlined,
            subtitle: "29 days remaining this year",
          ),
          _buildLeaveCard(
            title: "Team Member on Leave",
            value: "2",
            icon: Icons.people_outlined,
            subtitle: "29 days remaining this year",
          ),
        ]),
      ],
    );
  }

  
  Widget _buildRow(List<Widget> cards) {
    return Row(
      children: [
        Expanded(child: cards[0]),
        const SizedBox(width: 10),
        Expanded(child: cards[1]),
      ],
    );
  }

  
  Widget _buildLeaveCard({
    required String title,
    required String value,
    required IconData icon,
    required String subtitle,
    double? progress,
  }) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 140, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Icon(icon, color: Colorconstant.primaryblue),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
            if (progress != null) ...[
              const SizedBox(height: 6),
              LinearProgressIndicator(
                minHeight: 6,
                value: progress,
                backgroundColor: Colorconstant.lightblue,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colorconstant.primaryblue),
                borderRadius: BorderRadius.circular(10),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
