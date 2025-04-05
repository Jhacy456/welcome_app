import 'package:flutter/material.dart';

class MemberSocietiesScreen extends StatefulWidget {
  const MemberSocietiesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MemberSocietiesScreenState createState() => _MemberSocietiesScreenState();
}

class _MemberSocietiesScreenState extends State<MemberSocietiesScreen> {
  String? selectedSundaySchool;
  String? selectedCarecell;
  List<String> selectedDepartments = [];

  final List<String> sundaySchools = ["Children", "Youth", "Adults"];
  final List<String> carecells = ["Group A", "Group B", "Group C"];
  final List<String> departments = ["Choir", "Media", "Outreach", "Ushering"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Account Creation (Societies & Associations)")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sunday School Selector
            DropdownButtonFormField<String>(
              value: selectedSundaySchool,
              onChanged: (value) => setState(() => selectedSundaySchool = value),
              items: sundaySchools.map((school) {
                return DropdownMenuItem(value: school, child: Text(school));
              }).toList(),
              decoration: InputDecoration(labelText: "Sunday School", border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),

            // Carecell Selector
            DropdownButtonFormField<String>(
              value: selectedCarecell,
              onChanged: (value) => setState(() => selectedCarecell = value),
              items: carecells.map((cell) {
                return DropdownMenuItem(value: cell, child: Text(cell));
              }).toList(),
              decoration: InputDecoration(labelText: "Carecell", border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),

            // Multi-select Departments
            Text(
              "Departments (Multi-selector)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 10,
              children: departments.map((dept) {
                return FilterChip(
                  label: Text(dept),
                  selected: selectedDepartments.contains(dept),
                  onSelected: (isSelected) {
                    setState(() {
                      isSelected ? selectedDepartments.add(dept) : selectedDepartments.remove(dept);
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 25),

            // Submit & Skip Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Skip logic (Maybe navigate to dashboard)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Skipped')),
                    );
                  },
                  child: Text("Skip >>", style: TextStyle(color: Colors.blue, fontSize: 16)),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Submit logic (Save data & navigate to dashboard)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Account Created Successfully!')),
                    );
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
