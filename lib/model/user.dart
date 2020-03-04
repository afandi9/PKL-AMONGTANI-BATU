import 'package:json_annotation/json_annotation.dart';

part "user.g.dart";

@JsonSerializable()
class User{
  @JsonKey()
  String user_id;
  @JsonKey()
  String id_pegawai;
  @JsonKey()
  String noreg;
  @JsonKey()
  String badgenumber;
  @JsonKey()
  String email;
  @JsonKey()
  String app_skp;
  @JsonKey()
  String app_sapk;
  @JsonKey()
  String app_absensi;
  @JsonKey()
  String app_info;
  @JsonKey()
  String ka_skpd;
  @JsonKey()
  String nama_pegawai;
  @JsonKey()
  String tempat_lahir;
  @JsonKey()
  String tgl_lahir;
  @JsonKey()
  String pendidikan;
  @JsonKey()
  String gol_akhir;
  @JsonKey()
  String pangkat_akhir;
  @JsonKey()
  String tmt_akhir;
  @JsonKey()
  String jabatan;
  @JsonKey()
  String jenis_jabatan;
  @JsonKey()
  String eselon;
  @JsonKey()
  String unit_kerja;
  @JsonKey()
  String foto;
  @JsonKey()
  String nip;
  @JsonKey()
  String token;

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

//  User({
//      this.user_id,
//      this.id_pegawai,
//      this.noreg,
//      this.badgenumber,
//      this.email,
//      this.app_skp,
//      this.app_sapk,
//      this.app_absensi,
//      this.app_info,
//      this.ka_skpd,
//      this.nama_pegawai,
//      this.tempat_lahir,
//      this.tgl_lahir,
//      this.pendidikan,
//      this.gol_akhir,
//      this.pangkat_akhir,
//      this.tmt_akhir,
//      this.jabatan,
//      this.jenis_jabatan,
//      this.eselon,
//      this.unit_kerja,
//      this.foto,
//      this.nip,
//      this.token
//  });

//
//  factory User.objfromJson(Map<String, dynamic> json){
//    return User.all(
//        json["user_id"],
//        json["id_pegawai"],
//        json["noreg"],
//        json["badgenumber"],
//        json["email"],
//        json["app_skp"],
//        json["app_sapk"],
//        json["app_absensi"],
//        json["app_info"],
//        json["ka_skpd"],
//        json["nama_pegawai"],
//        json["tempat_lahir"],
//        json["tgl_lahir"],
//        json["pendidikan"],
//        json["gol_akhir"],
//        json["pangkat_akhir"],
//        json["tmt_akhir"],
//        json["jabatan"],
//        json["jenis_jabatan"],
//        json["eselon"],
//        json["unit_kerja"],
//        json["foto"],
//        json["nip"],
//        json["token"]
//    );
//  }
//

}