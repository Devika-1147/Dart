//Program demonstrating Class,Inheritance,Constructor,Private class
void main() {
  /**Accessing parent class members using child class object**/
  
  //Initializing student object using parameterized constructor
  Student student = Student("Amala Jose",1145,"Btech");
  //calling methods of Teacher class and College class using child class(Student) object
  student.getCollegeAddress(collegeName: "AJCE",location: "Kottayam",regNo: 12345);
  student.getTeacherDetails(teacherName: "Dilu",subject: "System Analysis");
  
  //Accessing a private class member
  print(PrivateClass.demoString);
}
class College{
  void getCollegeAddress({required String collegeName,required int regNo,required String location}){
    print("Name of College : $collegeName\nReg No : $regNo\nLocation : $location\n");
  }
}
class Teacher extends College{
  void getTeacherDetails({required String teacherName,required String subject}){
    print("Name of Teacher : $teacherName\nSubject : $subject\n");
  }
}
class Student extends Teacher{
  String studentName;
  int rollNo;
  String course;
  //Parameterized constructor
  Student(this.studentName,this.rollNo,this.course){
    print("Name of Student : $studentName\nRoll No : $rollNo\nCourse : $course\n");
  }
}
class PrivateClass{
  PrivateClass._();
  static String demoString = "Hello World!!!";
}