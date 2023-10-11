import 'package:flutter/material.dart';
import 'pantallasiguiente.dart';

void main() {
  runApp(
    MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(child: LoginApp()),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          // Handle any necessary logic when navigating back
          return true;
        },
      ),
    ),
  );
}


class LoginApp extends StatelessWidget {
  final Color naranjaColor = Color(0xFFF85E11);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 150, // Ajusta la posición vertical de la primera imagen
                      child: Image.asset(
                        'assets/isotipo_login.png',
                        fit: BoxFit.contain, // Ajusta el tamaño de la imagen para evitar superposición
                      ),
                    ),
                    Positioned(
                      top: 300, // Ajusta la posición vertical de la segunda imagen
                      child: Image.asset(
                        'assets/logotipo.png',
                        fit: BoxFit.contain, // Ajusta el tamaño de la imagen para evitar superposición
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.amber[50],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Correo Electrónico',
                          prefixIcon: Icon(Icons.email, color: naranjaColor),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        style: TextStyle(
                          backgroundColor: Colors.amber[50], // Color de fondo amarillo claro
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.amber[50],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          prefixIcon: Icon(Icons.lock, color: naranjaColor),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        style: TextStyle(
                          backgroundColor: Colors.amber[50], // Color de fondo amarillo claro
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Navegar a la pantalla siguiente cuando se hace clic en el botón
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                              builder: (context) => PantallaSiguiente(),
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        primary: naranjaColor,
                        minimumSize: Size(300, 60),
                      ),
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '¿No tienes cuenta? Regístrate',
                      style: TextStyle(color: naranjaColor),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '--------------------- O inicia sesión con ---------------------',
                      style: TextStyle(color: naranjaColor),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/facebook.png'),
                    SizedBox(width: 20),
                    Image.asset('assets/ios.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}