// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..user_id = json['user_id'] as String
    ..noreg = json['noreg'] as String
    ..nama_pegawai = json['nama_pegawai'] as String
    ..tempat_lahir = json['tempat_lahir'] as String
    ..tgl_lahir = json['tgl_lahir'] as String
    ..pendidikan = json['pendidikan'] as String
    ..gol_akhir = json['gol_akhir'] as String
    ..pangkat_akhir = json['pangkat_akhir'] as String
    ..tmt_akhir = json['tmt_akhir'] as String
    ..jabatan = json['jabatan'] as String
    ..jenis_jabatan = json['jenis_jabatan'] as String
    ..unit_kerja = json['unit_kerja'] as String
    ..foto = json['foto'] as String
    ..nip = json['nip'] as String
    ..token = json['token'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'noreg': instance.noreg,
      'nama_pegawai': instance.nama_pegawai,
      'tempat_lahir': instance.tempat_lahir,
      'tgl_lahir': instance.tgl_lahir,
      'pendidikan': instance.pendidikan,
      'gol_akhir': instance.gol_akhir,
      'pangkat_akhir': instance.pangkat_akhir,
      'tmt_akhir': instance.tmt_akhir,
      'jabatan': instance.jabatan,
      'jenis_jabatan': instance.jenis_jabatan,
      'unit_kerja': instance.unit_kerja,
      'foto': instance.foto,
      'nip': instance.nip,
      'token': instance.token,
    };
