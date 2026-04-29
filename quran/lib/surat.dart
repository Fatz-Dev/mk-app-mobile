class Surat {
  final int nomor;
  final String nama;
  final String latin;
  final int jumlahAyat;
  // tambah sendiri
  final String tafsirSurat;

  Surat({
    required this.nomor,
    required this.nama,
    required this.latin,
    required this.jumlahAyat,
    // tambah sendiri
    required this.tafsirSurat,
  });

  factory Surat.fromJson(Map<String, dynamic> json) {
    // perbaikan nya ada pada bagian nomor dan jumlahAyat harus parse dari int ke string
    // pada dan penamaan data tidak sesuai dengan api
    return Surat(
      nomor: int.tryParse(json['number'].toString()) ?? 0,
      nama: json['name_id'],
      latin: json['name_en'],
      jumlahAyat: int.tryParse(json['number_of_verses'].toString()) ?? 0,
      // tambah sendiri
      tafsirSurat: json['tafsir'],
    );
  }
}
