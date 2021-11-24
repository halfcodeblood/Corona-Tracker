import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataCard extends StatelessWidget {
  final String data;
  final String label;
  final Color color;
  final List<double>? dataList;

  const DataCard({
    Key? key,
    required this.data,
    required this.label,
    required this.color,
    this.dataList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10.0,
          shadowColor: const Color(0xfffde9df),
          child: Column(
            children: [
              // SizedBox(height: 10.0),
              const SizedBox(height: 13.0),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1 - 12.0,
                  vertical: 5.0,
                ),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.harmattan(
                    textStyle: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1 - 30,
                  vertical: 3,
                ),
                child: Text(
                  data == null ? '' : '$data',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.harmattan(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 9.0),
            ],
          ),
        ),
      ),
    );
  }
}
