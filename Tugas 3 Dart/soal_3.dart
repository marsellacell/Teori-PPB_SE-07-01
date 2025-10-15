import 'dart:math';

void main() {
  hitungKPK(12, 8);
}

void hitungKPK(int a, int b) {
  // Menampilkan bilangan
  print("Bilangan 1: $a");
  print("Bilangan 2: $b");

  // Menghitung FPB terlebih dahulu
  int fpb = cariFPB(a, b);

  // Rumus KPK: (a * b) / FPB
  int kpk = (a * b) ~/ fpb;

  // Menampilkan hasil
  print("KPK $a dan $b = $kpk");
}

// Fungsi bantu untuk mencari FPB (Faktor Persekutuan Terbesar)
int cariFPB(int x, int y) {
  while (y != 0) {
    int sisa = x % y;
    x = y;
    y = sisa;
  }
  return x;
}
