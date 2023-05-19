class Student {
  static String stdBranch;  // Declaring static variable
  String stdName;
  int roll_num;

  showStdInfo() {
    print("Student's name is: ${empName}");
    print("Student's salary is: ${roll_num}");
    print("Student's branch name is: ${stdBranch}");

  }
}

void main() {

  Student std1 = new Student();  // Creating instances of student class
  Student std2 = new Student();
  Student.stdBranch = "Computer Science";

  std1.stdName = "Leo";
  std1.roll_num = 1
  std1.showStdInfo();

  std2.stdName = "Ana";
  std2.roll_num = 2
  std2.showStdInfo();
}