import 'package:flutter/material.dart';

import 'member_societies_screen.dart';
// Import the next screen

class MemberInfoScreen extends StatefulWidget {
  const MemberInfoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MemberInfoScreenState createState() => _MemberInfoScreenState();
}

class _MemberInfoScreenState extends State<MemberInfoScreen> {
  String? selectedAgeGroup;
  String? selectedGender;
  String? selectedMaritalStatus;

  final List<String> ageGroups = ["Child", "Teen", "Adult", "Senior"];
  final List<String> genders = ["Male", "Female"];
  final List<String> maritalStatuses = [
    "Single",
    "Married",
    "Divorced",
    "Widowed",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Account Creation (Personal Info)")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Icon
            CircleAvatar(radius: 50, backgroundColor: Colors.grey.shade300),
            SizedBox(height: 20),

            // Name Field
            TextField(
              decoration: InputDecoration(
                labelText: "Name (First, Last & Other)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Age Group Selector
            DropdownButtonFormField<String>(
              value: selectedAgeGroup,
              onChanged: (value) => setState(() => selectedAgeGroup = value),
              items:
                  ageGroups.map((age) {
                    return DropdownMenuItem(value: age, child: Text(age));
                  }).toList(),
              decoration: InputDecoration(
                labelText: "Age Group",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Gender Selector
            DropdownButtonFormField<String>(
              value: selectedGender,
              onChanged: (value) => setState(() => selectedGender = value),
              items:
                  genders.map((gender) {
                    return DropdownMenuItem(value: gender, child: Text(gender));
                  }).toList(),
              decoration: InputDecoration(
                labelText: "Gender",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Marital Status Selector
            DropdownButtonFormField<String>(
              value: selectedMaritalStatus,
              onChanged:
                  (value) => setState(() => selectedMaritalStatus = value),
              items:
                  maritalStatuses.map((status) {
                    return DropdownMenuItem(value: status, child: Text(status));
                  }).toList(),
              decoration: InputDecoration(
                labelText: "Marital Status",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Next Button (Navigate to Societies Screen)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MemberSocietiesScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
