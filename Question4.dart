void main() {
  Course c1 = new Course();
  c1.setCode = "al2020145";
  c1.setCredits = 3;
  c1.setInstructor = "Sir Ilyas";
  c1.setName = "DBMS";
  print("*****************Your registered course is******************");
  print("Course code is : ${c1.getCode}");
  print("Course name is: ${c1.getname}");
  print("course Instructor is: ${c1.getInstructor}");
  print("Number of credit hours are: ${c1.getCredits}");
  print("Cost of this course is: ${c1.costCalculater(5000)}");
}

class Course {
  late String name;
  late String Code;
  late String Instructor;
  late int Credits;
  set setName(String name) {
    this.name = name;
  }

  set setCode(String Code) {
    this.Code = Code;
  }

  set setInstructor(String Instructor) {
    this.Instructor = Instructor;
  }

  set setCredits(int Credits) {
    this.Credits = Credits;
  }

  String get getname {
    return this.name;
  }

  String get getCode {
    return Code;
  }

  String get getInstructor {
    return Instructor;
  }

  int get getCredits {
    return Credits;
  }

  double costCalculater(double costPerCredit) {
    return costPerCredit * Credits;
  }
}
