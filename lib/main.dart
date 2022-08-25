import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial-12518402018',
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[contenido()],
    ));
  }
}

//WIDGET PERSONALIZADO - titulo
Widget titulo() {
  return Text("Parcial I - ETPS3!",
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30.0));
}

Widget subtitulo() {
  return Text("Fernando - 2518402018",
      style:
          TextStyle(color: Color.fromARGB(255, 120, 120, 120), fontSize: 15.0));
}

Widget subtitulo2() {
  return Text("Daniel - 2504572018",
      style:
          TextStyle(color: Color.fromARGB(255, 120, 120, 120), fontSize: 15.0));
}

//WIDGET PERSONALIZADO -- Carnet
Widget campoCarnet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          hintText: "Ingrese su carnet#",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- NOMBRE
Widget campoNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: "Ingrese su nombre",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- Apellido
Widget campoApellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: "Ingrese su apellido",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- Ubicacion
Widget campoUbicacion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      maxLength: 20,
      decoration: InputDecoration(
          icon: Icon(Icons.gps_fixed),
          hintText: "Ingrese su direccion",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- CONTRASEÑA
Widget campoPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.password_rounded),
          hintText: "Ingrese su contraseña",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- Repetir Contraseña
Widget campoRepassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.password_rounded),
          hintText: "Confirme su contraseña",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- Corrreo
Widget campoCorreo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: "Ingrese su correo",
          fillColor: Color.fromARGB(176, 148, 213, 134),
          filled: true),
    ),
  );
}

//WIDGET PERSONALIZADO -- BOTON
Widget btnIngresar() {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 105, vertical: 16),
      onPressed: () {},
      child: Text(
        "Ingresar",
        style:
            TextStyle(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)),
      ));
}

//WIDGET PERSONALIZADO -- BOTON
Widget btnCancelar() {
  return FlatButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 105, vertical: 16),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 14, 14)),
      ));
}

//WIDGET PERSONALIZADO - FONDO
Widget contenido() {
  //SE CENTRA CON EL WIDGET
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            //define la dimension de la imagen
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/564x/5d/4c/59/5d4c597e7f4ec1e108a74daafddff5a8.jpg"))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titulo(),
          subtitulo(),
          subtitulo2(),
          SizedBox(
            height: 5,
          ),
          campoCarnet(),
          campoNombre(),
          campoApellido(),
          campoUbicacion(),
          campoPassword(),
          campoRepassword(),
          campoCorreo(),
          SizedBox(
            height: 5,
          ),
          btnIngresar(),
          SizedBox(
            height: 5,
          ),
          btnCancelar()
        ],
      ),
    ),
  );
}
