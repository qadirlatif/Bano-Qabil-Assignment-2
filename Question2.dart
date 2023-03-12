void main() {
  Student stu = new Student();
  stu.setAge = 23;
  stu.setGPA = 3.5;
  stu.setMajor = "Software Engineer";
  stu.setName = "ishaq";
  print("*******************Student info********************");
  print("Name of student is : ${stu.getname}");
  print("major of student is : ${stu.getmajor}");
  print("age of student is : ${stu.getage}");
  print("gpa of student is : ${stu.getGPA}");
  print("grade level upon his age is : ${stu.gradeCalculator()}");
}

class Student {
  late String name;
  late int age;
  late String major;
  late double GPA;
  set setName(String name) {
    this.name = name;
  }

  String get getname {
    return this.name;
  }

  set setAge(int age) {
    this.age = age;
  }

  int get getage {
    return this.age;
  }

  set setMajor(String major) {
    this.major = major;
  }

  String get getmajor {
    return this.major;
  }

  set setGPA(double GPA) {
    this.GPA = GPA;
  }

  double get getGPA {
    return this.GPA;
  }

  String gradeCalculator() {
    if (this.age > 0 && this.age <= 10) {
      return "Younger";
    } else if (this.age > 10 && this.age <= 20) {
      return "Teenager";
    } else if (this.age > 20 && this.age <= 35) {
      return "Mature";
    } else if (this.age > 35 && this.age < 50) {
      return "Enperienced";
    } else {
      return "invalid";
    }
  }
}
