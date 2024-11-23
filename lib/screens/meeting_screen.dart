import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:meeting_app/widgets/hp_meeting_button.dart";

class MeetingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HpMeetingButton(
              onPressed: () {},
              icon: Icons.videocam,
              text: "New Meeting",
            ),
            HpMeetingButton(
              onPressed: () {},
              icon: Icons.add_box_rounded,
              text: "Join Meeting",
            ),
            HpMeetingButton(
              onPressed: () {},
              icon: Icons.calendar_month_rounded,
              text: "Schedule",
            ),
            HpMeetingButton(
              onPressed: () {},
              icon: Icons.arrow_upward_rounded,
              text: "Share screen",
            ),
          ],
        ),
        Expanded(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Create / Join meetings with just a click",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )),
      ],
    );
    ();
  }
}
