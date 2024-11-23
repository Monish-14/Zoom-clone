import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meeting_app/screens/meeting_screen.dart';
import 'package:meeting_app/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    MeetingScreen(),
    Scaffold(
      appBar: AppBar(
        title: Text("Meetings",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: Text("Contacts",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: Text("Settings",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(
          title: Text("Meet & Chat",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
              )),
          centerTitle: true,
        ),
        //bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: footerColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: onPageChanged,
            currentIndex: _page,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.comment_bank,
                ),
                label: 'Meet& chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.lock_clock,
                ),
                label: 'Meetings',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'Contacts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                ),
                label: 'Settings',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(
              //     Icons.comment_bank,
              //   ),
              //   label: 'Meet& chat',
              // )
            ]),
        body: pages[_page]);
  }
}
