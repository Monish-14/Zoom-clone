import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:meeting_app/utils/colors.dart";

class HpMeetingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;
  const HpMeetingButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.06),
                        offset: const Offset(0, 4)),
                  ]),
              width: 60,
              height: 60,
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              )),
          const SizedBox(height: 10),
          Text(text, style: GoogleFonts.poppins(color: Colors.grey)),
        ],
      ),
    );
  }
}
