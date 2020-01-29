import 'dart:convert' as convert;

class Usuario {
  String nome;
  String email;
  String urlFoto;
  String token;

  Usuario({this.nome, this.email, this.urlFoto, this.token});

  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    urlFoto = json['urlFoto'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['urlFoto'] = this.urlFoto;
    data['token'] = this.token;
    return data;
  }

  static void clear() {
   // Prefs.setString("user.prefs", "");
  }

  void save() {
    Map map = toJson();

    String json = convert.json.encode(map);

    //Prefs.setString("user.prefs", json);

  }

  static Future<Usuario> get() async {
    /*String json = await Prefs.getString("user.prefs");
    if (json.isEmpty) {
      return null;z    }
    Map map = convert.json.decode(json);
    Usuario user = Usuario.fromJson(map);
    return user;*/
  }
}

class User {
  static String nome;
  static String email;
  static String urlPhoto;
  static String token;
}
