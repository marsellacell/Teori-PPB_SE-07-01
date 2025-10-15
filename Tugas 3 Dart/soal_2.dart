import 'dart:math';

void main() {
  cariNilai(2); // Contoh pertama
  print(""); // Spasi antar output
  cariNilai(5); // Contoh kedua
}

void cariNilai(int nilaiDicari) {
  // Membuat list 2D sesuai ketentuan
  List<List<int>> list2D = [
    // baris 1: 3 bilangan kelipatan 5 mulai dari 5
    [for (int i = 1; i <= 3; i++) i * 5],
    // baris 2: 4 bilangan genap mulai dari 2
    [for (int i = 1; i <= 4; i++) i * 2],
    // baris 3: 5 bilangan kuadrat dari 1
    [for (int i = 1; i <= 5; i++) i * i],
    // baris 4: 6 bilangan asli mulai dari 3
    [for (int i = 3; i < 9; i++) i],
  ];

  // Menampilkan isi list
  print("Isi List:");
  for (var row in list2D) {
    print(row.join(" "));
  }

  // Menampilkan nilai yang dicari
  print("\nBilangan yang dicari: $nilaiDicari");

  // Mencari posisi nilai yang dicari
  bool ditemukan = false;
  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == nilaiDicari) {
        print("${nilaiDicari} berada di:");
        print("baris ${i + 1} kolom ${j + 1}");
        ditemukan = true;
      }
    }
  }

  // Jika nilai ditemukan di lebih dari satu tempat
  if (!ditemukan) {
    print("$nilaiDicari tidak ditemukan dalam list.");
  }
}
