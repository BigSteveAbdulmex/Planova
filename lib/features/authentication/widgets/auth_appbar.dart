import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:planova/features/authentication/widgets/custom_curved_edge.dart';

class CustomAuthAppbar extends StatelessWidget {
  const CustomAuthAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: Container(
        color: Colors.brown,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 250,
          child: Stack(
            children: [
              Positioned(
                top: -130,
                right: -250,
                child: Container(
                  width: 400,
                  height: 250,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: -300,
                child: Container(
                  width: 400,
                  height: 300,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                ),
              ),
              // Add the "Planova" text on top of everything
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Planova",
                    style: GoogleFonts.emblemaOne(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
