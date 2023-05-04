import 'package:csv_file_modelling/model/employee.dart';
import 'package:csv_file_modelling/components/row_component.dart';
import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  const EmployeeCard({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: const ShapeDecoration(
          color: Color.fromARGB(255, 255, 163, 194),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${employee.firstName} ${employee.lastName}",
              ),
              const SizedBox(height: 5),
              RowComponent(
                icon: Icon(Icons.email_rounded),
                text: employee.email,
              ),
              const SizedBox(height: 5),
              RowComponent(
                icon: Icon(Icons.phone_rounded),
                text: employee.phone,
              ),
              const SizedBox(height: 5),
              RowComponent(
                  icon: Icon(Icons.date_range_rounded),
                  text: employee.dateOfBirth),
              const SizedBox(height: 5),
              RowComponent(
                icon: Icon(Icons.work),
                text: employee.jobTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
