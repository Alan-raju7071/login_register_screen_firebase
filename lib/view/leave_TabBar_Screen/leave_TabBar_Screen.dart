import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/view/Request_leaveDetails_screen/Request_leaveDetails_screen.dart';
import 'package:login_register_screen_firebase/view/leave_explain_screen/leave_explain_screen.dart';
import 'package:login_register_screen_firebase/widgets/leaveTabBar.dart';

class LeaveTabbarScreen extends StatefulWidget {
  const LeaveTabbarScreen({super.key});

  @override
  State<LeaveTabbarScreen> createState() => _LeaveTabbarScreenState();
}

class _LeaveTabbarScreenState extends State<LeaveTabbarScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _searchHistory = [];

  void _openSearchDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Search",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.topCenter,
          child: Material(
            borderRadius: BorderRadius.circular(16),
            child: StatefulBuilder(
              builder: (context, setStateDialog) {
                return Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: const InputDecoration(
                                hintText: "Enter search...",
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                          Card(
                            color: Colorconstant.darkgreen,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: InkWell(
                              onTap: () {
                                final newEntry = _searchController.text.trim();
                                if (newEntry.isNotEmpty) {
                                  setState(() {
                                    _searchHistory.remove(newEntry); 
                                    _searchHistory.insert(0, newEntry);
                                    if (_searchHistory.length > 4) {
                                      _searchHistory.removeLast();
                                    }
                                  });
                                  setStateDialog(() {});
                                  _searchController.clear();
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 2),
                                child: Icon(Icons.send, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Search History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      const SizedBox(height: 10),
                     Column(
                children: _searchHistory.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                         child: Text(item),
                      )).toList(), 
                   ),


                      
                     
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(anim),
          child: child,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(ImageConst.appbarimage),
              ),
            ),
            title: InkWell(
              onTap: () => _openSearchDialog(context),
              child: Material(
                elevation: 2,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.transparent),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colorconstant.lightgrey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(Icons.notifications, color: Colors.white),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(ImageConst.profileimage),
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: Column(
            children: const [
              leaveTabBar(),
              Expanded(
                child: TabBarView(
                  children: [
                    RequestLeavedetailsScreen(),
                    LeaveExplainScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


