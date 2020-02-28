import 'package:among_tani/webservices/api_service.dart';
import 'package:json_annotation/json_annotation.dart';

part "user.g.dart";

@JsonSerializable()
class User{
  @JsonKey()
  String user_id;
  @JsonKey()
  String noreg;
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
}