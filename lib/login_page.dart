import 'package:flutter/material.dart';
import 'package:among_tani/contracts/login_contract.dart';
import 'package:among_tani/presenters/login_presenter.dart';
import 'package:toast/toast.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginView{
  LoginPresenter presenter;
  TextEditingController usernameCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  @override
  void initState(){
    super.initState();
    presenter = LoginPresenter(this);
  }

  void doLogin(String username, String password){
    presenter.login(username, password);
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.number,
      controller: usernameCont,
      autofocus: false,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintText: 'NIP',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, -20.0),
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      controller: passCont,
      obscureText: true,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, -20.0),
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        onPressed: () {
//          Map<String,dynamic> body ={
//            'username' : usernameCont.text.trim(),
//            'password' : passCont.text.trim(),
//            'appversion' : '1803'
//          };
          doLogin(usernameCont.text.trim(), passCont.text.trim());
//          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.teal[700],
        child: Text('LOGIN', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lupa password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 40.0, right: 40.0),
          children: <Widget>[

            logo,
            SizedBox(height: 12.0),
            Text('AMONG ABDI PRAJA\nKOTA BATU', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green[700]),textAlign: TextAlign.center,),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }

  @override
  void finish() =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));

  @override
  void toast(String message) => Toast.show(message, context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

}