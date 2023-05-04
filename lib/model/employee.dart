class Employee {
  String index;
  String userId;
  String firstName;
  String lastName;
  String sex;
  String email;
  String phone;
  String dateOfBirth;
  String jobTitle;
  Employee({
    required this.index,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
    required this.jobTitle,
  });

  @override
  String toString() {
    return 'Person(index: $index, userId: $userId, firstName: $firstName, lastName: $lastName, sex: $sex, email: $email, phone: $phone, dateOfBirth: $dateOfBirth, jobTitle: $jobTitle)';
  }
}
