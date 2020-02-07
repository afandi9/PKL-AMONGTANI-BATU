import 'package:flutter/material.dart';

class FormCuti extends StatefulWidget {
  createState() {
    return FormCutiState();
  }
}

class FormCutiState extends State<FormCuti> {

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0), //SET MARGIN DARI CONTAINER
      child: Form(
          child: Column(
            //CHILDREN DARI COLUMN BERISI 4 BUAH OBJECT YANG AKAN DI-RENDER, YAKNI
            // TextInput UNTUK NAME, EMAIL, PASSWORD DAN TOMBOL DAFTAR
            children: [
              JenisCuti(),
              TglMulaiCuti(),
              TglAkhirCuti(),
              Alamat(),
              NoTelepon(),
              AlasanCuti(),
              SubmitButton(),
            ],
          )
      ),
    );
  }

  Widget JenisCuti() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Jenis Cuti' //DENGAN LABEL Nama Lengkap
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget TglMulaiCuti() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress, // KEYBOARD TYPENYA ADALAH EMAIL ADDRESS
      //AGAR SYMBOL @ DILETAKKAN DIDEPAN KETIKA KEYBOARD DI TAMPILKAN
      decoration: InputDecoration(
        labelText: 'Tgl Mulai Cuti',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget TglAkhirCuti() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress, // KEYBOARD TYPENYA ADALAH EMAIL ADDRESS
      //AGAR SYMBOL @ DILETAKKAN DIDEPAN KETIKA KEYBOARD DI TAMPILKAN
      decoration: InputDecoration(
        labelText: 'Tgl Akhir Cuti',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget Alamat() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Alamat selama cuti' //DENGAN LABEL Nama Lengkap
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget NoTelepon() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'No Telepon' //DENGAN LABEL Nama Lengkap
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget AlasanCuti() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Alasan Cuti' //DENGAN LABEL Nama Lengkap
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget SubmitButton() {
    //MEMBUAT TOMBOL
    return RaisedButton(
      color: Colors.blueAccent, //MENGATUR WARNA TOMBOL
      onPressed: () {
        //PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
      },
      child: Text('SUBMIT'), //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
    );
  }
}