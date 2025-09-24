void main() {
  int age = 10;
  double height = 170.5;
  String name = "Marsella Dwi Julianti";
  bool isMarried = false;

  print(age);
  print(height);
  print(name.split(" ")[0]);
  print(name.split(" ")[1]);
  print(isMarried);

  String firstName = name.split(" ")[0];
  String lastName = name.split(" ")[1];

  print("Umur saya adalah $age dan tinggi saya adalah $height"); //interpolasi
  print(
    "Nama depan saya adalah " + firstName + " nama belakang " + lastName,
  ); //Concatenation

  // keyword: var and dynamic

  dynamic a = 10.4; //Runtime process
  print(a.runtimeType);
  a = 10.4;
  a = "Marsella Dwi Julianti";
  print(a.runtimeType);

  var b = 10; //compile time process
  print(b.runtimeType);
  b = 10;
  print(b.runtimeType);

  //Null safety
  int abc; //Non nullable varibale
  abc = 10;
  print(abc);

  int? cba;
  print(cba);

  // name, nim,suggestion
  // dynamic name;
  // dynamic nim;
  // dynamic suggestion;
}
