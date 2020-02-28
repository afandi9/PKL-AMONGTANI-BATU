class Post{
  String _username;
  String _password;
  int _appversion;

  Post();

  Post.all(this._username,this._password,this._appversion);

  factory Post.fromJson(Map<String, dynamic> json){
    return Post.all(json["username"], json["password"], json["appversion"]);
  }

  int get appversion => _appversion;

  set appversion(int value){
    _appversion = value;
  }

  Map<String, dynamic> toJson(){
    return{
      "username" : _username,
      "password" : _password,
      "appversion" : _appversion
    };
  }

  String get username => _username;

  set username(String value){
    _username = value;
  }

  String get password => _password;

  set password(String value){
    _password = value;
  }

  List<Post> fromJsonList(List<dynamic> parsedJson){
    List<Post> posts = new List<Post>();
    posts = parsedJson.map((f) => Post.fromJson(f)).toList();
    return posts;
  }

}