import 'dart:math';

void main() {
  buatMatriks(3, 2);
}

void buatMatriks(int A, int B) {
  int counter = 1;

  // Membuat matriks A x B dengan nilai berurutan
  List<List<int>> matrix = List.generate(
    A,
    (_) => List.generate(B, (_) => counter++),
  );

  // Menampilkan informasi matriks
  print("Matriks AxB");
  print("A: $A");
  print("B: $B");
  print("Isi matrix:");
  for (var row in matrix) {
    print(row.join(" "));
  }

  // Membuat matriks transpose
  List<List<int>> transpose = List.generate(
    B,
    (i) => List.generate(A, (j) => matrix[j][i]),
  );

  // Menampilkan hasil transpose
  print("Hasil transpose:");
  for (var row in transpose) {
    print(row.join(" "));
  }
}
