import 'package:among_tani/model/user.dart';
import 'package:among_tani/contracts/login_contract.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:among_tani/webservices/api_service.dart';
import 'package:dio/dio.dart';


class LoginPresenter implements LoginInteractor{
  LoginView view;
  LoginPresenter(this.view);
  RestClient api = RestClient(Dio());
  var logger = Logger();
  final String absensiapikey = "60c40c20a9049a5916b5bf3a20000007";
  final int appversion = 1803;
  @override
  void succes(String token) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

  @override
  void destroy() => view = null;

  @override
  void login(String username, String password) async {
    await api.login(absensiapikey, username, password, appversion).then((it){
      if(it.status == true){
        User u = User.fromJson(it.data);
        this.succes(u.token);
        view.toast(it.message);
        view?.finish();
      }else{
        view?.toast(it.message);
      }
    }).catchError((Object obj){
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          view.toast("Terjadi Kesalahan");
          logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}" );
          break;
        default:
      }
//      print("Exception $e");
//      view.toast("terjadi kesalahan");
    });
  }

}