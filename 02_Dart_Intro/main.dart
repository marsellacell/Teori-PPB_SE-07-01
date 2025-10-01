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

  // Type 1: weakly typed => value menentukan type data
  dynamic number = [
    1,
    2,
    3,
    true,
    "hallo",
    ["coding", "reading"],
  ];
  print(number);
  print(number.runtimeType);

  //type 2: strongly typed => type data menentukan value
  // List<string> number2 = [1, 2, 3, 4, 5.5, true];
  List<bool> isLoadings = [false, false, false, true];
  bool isLoading = false;
  bool isLoadingError = false;
  bool isLoadingProses = false;
  bool isLoadingDataA = false;

  //[1,2,3, true, "halo", ["coding", "reading"]] ? bagaimana saya membuat variabel ini?

  List<dynamic> data = [
    1,
    2,
    3,
    true,
    "hallo",
    ["coding", "reading"],
  ];

  //print(hobi kedua saya adalah $data[5][1]); // salah
  print("hobi kedua saya adalah ${data[5][1]}"); //benar untuk interpolasi

  //1: weak map
  var todo = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "is_completed": false,
  };

  print(todo);
  print(todo.runtimeType);

  //Map<keyTypeData, valueTypeData> var = {Value};
  Map<String, dynamic> todo2 = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "is_completed": false,
  };

  List<Map<String, dynamic>> todos = [
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "is_completed": false,
    },
    {
      "userId": 1,
      "id": 2,
      "title": "quis ut nam facilis et officia qui",
      "is_completed": false,
    },
    {
      "userId": 1,
      "id": 3,
      "title": "fugiat veniam minus",
      "is_completed": false,
    },
    {"userId": 1, "id": 4, "title": "et porro tempora", "is_completed": true},
    {
      "userId": 1,
      "id": 5,
      "title":
          "laboriosam mollitia et enim quasi adipisci quia provident illum",
      "is_completed": false,
    },
  ];
  print(todos[2]["title"]); //manggil data ke 3, title

  bool statusLulus;
  int nilai = 70;

  if (nilai > 75) {
    statusLulus = "Selamat Anda Lulus" as bool;
  } else {
    statusLulus = "Maaf Anda Tidak Lulus" as bool;
  }

  print(statusLulus);

  //tenary operator atau conditional expression
  statusLulus =
      ((nilai > 75) ? "Selamat Anda Lulus" : "Maaf Anda Tidak Lulus") as bool;
  print(statusLulus);
}
