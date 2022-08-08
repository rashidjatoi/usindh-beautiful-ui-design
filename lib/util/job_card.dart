import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoPath;
  final int hourlyRate;

  JobCard(
      {required this.companyName,
      required this.hourlyRate,
      required this.jobTitle,
      required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Image.asset(logoPath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Part Time',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    jobTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text('\$' + hourlyRate.toString() + '/hr',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
        ),
      ),
    );
  }
}
