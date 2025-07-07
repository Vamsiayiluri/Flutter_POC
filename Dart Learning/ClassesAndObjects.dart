void main() {
  User user = User('vamsi', 23);
  print(user.name);
  User userTwo = User('krishna', 25);
  print(userTwo.age);
  print(user.getName());
  print(user.login());

  SuperUser userThree = SuperUser("Reddy", 23);
  print(userThree.name);
  userThree.publish();
}

class User {
  String name = "";
  int age = 0;
  User(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String getName() {
    return name;
  }

  String login() {
    return "logged in";
  }
}

class SuperUser extends User {
  SuperUser(String name, int age) : super(name, age);
  void publish() {
    print("user published");
  }
}
