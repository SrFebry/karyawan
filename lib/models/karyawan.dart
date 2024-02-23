class Karyawan {
  final String nama;
  final String umur;
  final Alamat alamat;
  final List<String> hobi;

  Karyawan(
      {required this.nama,
      required this.umur,
      required this.alamat,
      required this.hobi});

  factory Karyawan.fromJson(Map<String, dynamic> json) {
    return Karyawan(
      nama: json['jalan'],
      umur: json['kota'],
      alamat: Alamat.fromJson(json['provinsi']),
      hobi: List<String>.from(json['hobi']),
    );
  }
}

class Alamat {
  final String jalan;
  final String kota;
  final String provinsi;

  Alamat({required this.jalan, required this.kota, required this.provinsi});

  factory Alamat.fromJson(Map<String, dynamic> json) {
    return Alamat(
        jalan: json['jalan'], kota: json['kota'], provinsi: json['provinsi']);
  }
}
