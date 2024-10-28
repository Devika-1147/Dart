void main() {
  
  //Polymorphism
  print("**Polymorphism**");
  Child child = Child();
  child.getDetails();
  
  //Abstract class
  print("**Abstract class**");
  Rectangle rectangle = Rectangle();
  rectangle.area();
  rectangle.perimeter();
  
  Square square = Square();
  square.area();
  square.perimeter();
  //Interface
  print("**Interface**");
  Login login = Login();
  login.onButtonClick(username: "Techminds",password: "12345");
  //Mixin
  print("**Mixin**");
  Student student = Student();
  student.printCollegeName();
  student.printTeacherName();
  student.printStudentName();
  
 
  
}
/**Polymorphism
 * Implementing polymorphism using method overriding**/
class GrandFather{
  void getDetails(){
    print("Inside class GrandFather");
  }
  
}
class Father extends GrandFather{
  @override
  void getDetails(){
    super.getDetails();
    print("Inside class Father");
  }
}
class Child extends Father{
  @override
  void getDetails(){
    super.getDetails();
    print("Inside class Child\n");
  }
}

/**Abstraction
 * Implementing abstraction using abstract class**/

abstract class Shape{
  void area();
  void perimeter();
}
class Rectangle extends Shape{
  Rectangle(){
    print("Inside class Rectangle");
  }
  @override
  void area(){
    int length = 10;
    int breadth = 20;
    int area = length*breadth;
    print("Area of Rectangle is $area cm");
  }
  @override
  void perimeter(){
    int l=10;
    int b=2;
    int perimeter = 2*(l+b);
    print("Perimeter of rectangle is $perimeter cm\n");
    }
}
class Square extends Shape{
  Square() {print("Inside class Square");}
  @override
  void area() {
    int side = 2;
    int area = side*side;
    print("Area of Square is $area cm");
  }
  @override
  void perimeter() {
    int a=10;
    int perimeter = 4*a;
    print("Perimeter of square is $perimeter\n");
  }
  
}
/**Abstraction
 * Implementing abstraction using interface**/
class ButtonClick{
  void onButtonClick({required String username,required String password}){
    print("Authenticate user here");
  
}
}
class Login implements ButtonClick{
  @override
  void onButtonClick({required String username, required String password}) {
    if(username == "Techminds" && password == "12345"){
      print("Login success\n");
    }
      else{
        print("Invalid login credentials\n");
      }
    }
  }
/**Mixin**/
mixin College{
  void printCollegeName(){
    print("College : Amal Jyothi");
  }
}
mixin Techer{
  void printTeacherName(){
    print("Teacher : Ankitha");
  }
}
class Student with College,Techer{
  void printStudentName(){
    print("Student : Neenu");
  }
}

