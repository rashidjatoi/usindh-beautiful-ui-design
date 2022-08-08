import 'package:flutter/material.dart';
import 'package:usindh/util/job_card.dart';
import 'package:usindh/util/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [companyName, jobTitle , logoPath, hourlyRate]
    ['Uber', 'UI Designer', 'assets/uber.png', 45],
    ['Google', 'Prouct Dev', 'assets/google.png', 45],
    ['Apple', 'Software Eng.', 'assets/apple.png', 95],
    ['Nike', 'Product Designer', 'assets/nike.png', 85]
  ];

  final List recentJobs = [
    // [companyName, jobTitle , logoPath, hourlyRate]
    ['Google', 'Prouct Dev', 'assets/google.png', 45],
    ['Apple', 'Software Eng.', 'assets/apple.png', 95],
    ['Uber', 'UI Designer', 'assets/uber.png', 45],
    ['Nike', 'Product Designer', 'assets/nike.png', 85],
    ['Google', 'Software Developer', 'assets/google.png', 65],
    ['Apple', 'Product Designer', 'assets/apple.png', 33],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  height: 50,
                  child: Image.asset(
                    'assets/menu-left.png',
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Discover a New Path',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for a job...',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(12)),
                      height: 45,
                      child: Image.asset(
                        'assets/preferences.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'For You',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 160,
              child: ListView.builder(
                itemCount: jobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return JobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    logoPath: jobsForYou[index][2],
                    hourlyRate: jobsForYou[index][3],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Recently Added',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RecentJobCard(
                      jobTitle: recentJobs[index][0],
                      companyName: recentJobs[index][1],
                      logoPath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
