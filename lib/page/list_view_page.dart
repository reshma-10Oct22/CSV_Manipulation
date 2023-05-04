import 'package:csv_file_modelling/model/employee.dart';
import 'package:csv_file_modelling/components/employee_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Employee> employeeList = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: Color.fromARGB(255, 255, 163, 194),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: employeeList.length,
            itemBuilder: (context, index) {
              Employee employee = employeeList[index];
              return EmployeeCard(employee: employee);
            },
          );
        }
      },
    );
  }

  Future<void> fetchList() async {
    final data = await rootBundle.loadString('assets/sample_csv.csv');
    List<String> lines = data.split('\n');
    lines.removeAt(0);
    lines.removeAt(lines.length - 1);
    for (String line in lines) {
      final parts = line.split(',');
      Employee employee = Employee(
        index: parts[0],
        userId: parts[1],
        firstName: parts[2],
        lastName: parts[3],
        sex: parts[4],
        email: parts[5],
        phone: parts[6],
        dateOfBirth: parts[7],
        jobTitle: parts[8],
      );
      employeeList.add(employee);
    }
  }
}
