void main() {
  print('Hello world');
  String name = "Vamsi";
  int age = 23;
  bool married = false;
  String greet = greeting();
  int userAge = getAge();
  List<String> names = ['vamsi', 'krishna', 'reddy'];
  List objects = ['kjvhbh', 88, 11.00, true];
  print(greet);
  print(name);
  print(userAge);
  print(getName());
  names.add('siva');
  names.remove('reddy');
  print(names);
  print(objects);
  Map student = {'name': 'vamsi', 'age': 25};
  print(student['age']);
}

String greeting() {
  return "hello";
}

int getAge() {
  return 23;
}

String getName() => "Vamsi";
