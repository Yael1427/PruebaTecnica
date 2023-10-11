import 'package:flutter/material.dart';

class PantallaSiguiente extends StatefulWidget {
  @override
  _PantallaSiguienteState createState() => _PantallaSiguienteState();
}

class _PantallaSiguienteState extends State<PantallaSiguiente> {
  final List<String> nombresVerduras = [
    "Limón sin semilla",
    "Plátano",
    "Granada roja",
    "Naranja",
  ];

  @override
  Widget build(BuildContext context) {
    double scaleFactor = MediaQuery.of(context).platformBrightness == Brightness.light
        ? 0.7 // Factor de escala para iOS o temas claros
        : 1.2; // Factor de escala para Android o temas oscuros

    bool mostrarControlador = false; // Variable para controlar la visualización del controlador de unidades
    int cantidad = 1; // Cantidad inicial

    return Scaffold(
      extendBody: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos a la izquierda
            children: [
              Padding(
                padding: EdgeInsets.all(8.0 * scaleFactor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25 * scaleFactor,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0 * scaleFactor),
                        border: Border.all(color: Color(0xFF94BE2C)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 8 * scaleFactor),
                          Text(
                            "Cambiar sucursal",
                            style: TextStyle(
                              color: Color(0xFF94BE2C),
                              fontSize: 12 * scaleFactor,
                            ),
                          ),
                          SizedBox(width: 10 * scaleFactor),
                          Image.asset('assets/icono cambiar sucursal.png', width: 10 * scaleFactor, height: 10 * scaleFactor),
                          SizedBox(width: 8 * scaleFactor),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos a la izquierda
                children: [
                  SizedBox(width: 8 * scaleFactor),
                  Image.asset('assets/icono maps.png', width: 18 * scaleFactor, height: 18 * scaleFactor),
                  Padding(
                    padding: EdgeInsets.only(left: 3 * scaleFactor), // Agrega un poco de espacio a la izquierda
                    child: Text("Sucursal Norte", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset('assets/lupa naranja.png', width: 24 * scaleFactor, height: 24 * scaleFactor),
                        hintText: "Buscar productos...",
                        suffixIcon: Image.asset('assets/icono filtro.png', width: 24 * scaleFactor, height: 24 * scaleFactor),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                height: 230 * scaleFactor,
                padding: EdgeInsets.all(16 * scaleFactor),
                decoration: BoxDecoration(
                  color: Colors.white, // Cambia el fondo a blanco
                  borderRadius: BorderRadius.circular(10.0 * scaleFactor),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                    width: 1.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: Offset(4 * scaleFactor, 4 * scaleFactor),
                    ),
                  ],
                ),
                child: Stack( // Utiliza un Stack para superponer la imagen en la parte inferior derecha
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15 * scaleFactor),
                        Text(
                          "Hasta 35% off en frutas y",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26 * scaleFactor),
                        ),
                        Text("verduras seleccionadas",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26 * scaleFactor)),
                        SizedBox(height: 20 * scaleFactor),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0 * scaleFactor),
                            ),
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            // Acción al presionar el botón "Ver oferta"
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10 * scaleFactor),
                            child: Text(
                              "Ver oferta",
                              style: TextStyle(
                                color: Color(0xFF94BE2C),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned( // Posiciona la imagen en la parte inferior derecha
                      bottom: 0,
                      right: 0,
                      child: Image.asset('assets/banner.png'), // Añade la imagen llamada "banner.png"
                    ),
                  ],
                ),
              ),


              Row(
                children: [
                  // Botón para la sección "Todo"
                  ElevatedButton(
                    onPressed: () {
                      // Aquí puedes agregar la lógica para cambiar a la sección "Todo"
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 4; // Elevación del borde inferior cuando se presiona
                        }
                        return 0; // Sin elevación en otros estados
                      }),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12.0 * scaleFactor)), // Ajusta el tamaño del botón
                    ),
                    child: Text(
                      "Todo",
                      style: TextStyle(
                        color: Color(0xFF94BE2C), // Color del texto
                      ),
                    ),
                  ),

                  // Botón para la sección "Frutas y verduras"
                  ElevatedButton(
                    onPressed: () {
                      // Aquí puedes agregar la lógica para cambiar a la sección "Frutas y verduras"
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 4; // Elevación del borde inferior cuando se presiona
                        }
                        return 0; // Sin elevación en otros estados
                      }),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12.0 * scaleFactor)), // Ajusta el tamaño del botón
                    ),
                    child: Text(
                      "Frutas y verduras",
                      style: TextStyle(
                        color: Color(0xFF94BE2C), // Color del texto
                      ),
                    ),
                  ),

                  // Botón para la sección "Carnes"
                  ElevatedButton(
                    onPressed: () {
                      // Aquí puedes agregar la lógica para cambiar a la sección "Carnes"
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 4; // Elevación del borde inferior cuando se presiona
                        }
                        return 0; // Sin elevación en otros estados
                      }),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12.0 * scaleFactor)), // Ajusta el tamaño del botón
                    ),
                    child: Text(
                      "Carnes",
                      style: TextStyle(
                        color: Color(0xFF94BE2C), // Color del texto
                      ),
                    ),
                  ),

                  // Botón para la sección "Abarrotes"
                  ElevatedButton(
                    onPressed: () {
                      // Aquí puedes agregar la lógica para cambiar a la sección "Abarrotes"
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Fondo transparente
                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 4; // Elevación del borde inferior cuando se presiona
                        }
                        return 0; // Sin elevación en otros estados
                      }),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12.0 * scaleFactor)), // Ajusta el tamaño del botón
                    ),
                    child: Text(
                      "Abarrotes",
                      style: TextStyle(
                        color: Color(0xFF94BE2C), // Color del texto
                      ),
                    ),
                  ),
                ],
              ),



              // Cuadrícula de verduras
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: nombresVerduras.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset(
                                  'assets/verdura$index.png',
                                  width: 130 * scaleFactor,
                                  height: 130 * scaleFactor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8.0 * scaleFactor, 0.0, 8.0 * scaleFactor, 8.0 * scaleFactor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        nombresVerduras[index],
                                        style: TextStyle(fontSize: 18 * scaleFactor, fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 20 * scaleFactor),
                                      Text(
                                        "1kg",
                                        style: TextStyle(
                                          fontSize: 16 * scaleFactor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$25.90",
                                        style: TextStyle(
                                          fontSize: 16 * scaleFactor,
                                          color: Color(0xFF94BE2C),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 10 * scaleFactor),
                                      SizedBox(width: 5 * scaleFactor), // Ajusta el espacio entre el texto y el botón
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mostrarControlador = !mostrarControlador; // Cambiar el estado del controlador
                                          });
                                        },
                                        child: mostrarControlador
                                          ? Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    if (cantidad > 1) {
                                                      setState(() {
                                                        cantidad--;
                                                      });
                                                    }
                                                  },
                                                  child: Image.asset(
                                                    'assets/icono menos.png', // Reemplaza con la ruta correcta
                                                    width: 40 * scaleFactor,
                                                    height: 40 * scaleFactor,
                                                  ),
                                                ),
                                                Text(
                                                  cantidad.toString(), // Mostrar la cantidad actual
                                                  style: TextStyle(
                                                    fontSize: 16 * scaleFactor,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      cantidad++;
                                                    });
                                                  },
                                                  child: Image.asset(
                                                    'assets/icono mas.png', // Reemplaza con la ruta correcta
                                                    width: 40 * scaleFactor,
                                                    height: 40 * scaleFactor,
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Image.asset(
                                              'assets/icono mas.png',
                                              width: 40 * scaleFactor,
                                              height: 40 * scaleFactor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              // Acción al presionar el botón Wishlist
                            },
                            child: Image.asset('assets/icono wishlist.png', width: 60 * scaleFactor, height: 60 * scaleFactor),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),


            ],
          ),
        ),
      ),


      bottomNavigationBar: Container(
        height: 100 * scaleFactor,
        decoration: BoxDecoration(
          color: Colors.white, // Color de fondo
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20 * scaleFactor), // Radio en la esquina superior izquierda
            topRight: Radius.circular(20 * scaleFactor), // Radio en la esquina superior derecha
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Color y opacidad de la sombra
              spreadRadius: 1, // Extensión de la sombra
              blurRadius: 4, // Difuminado de la sombra
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16 * scaleFactor), // Añade espacio en los lados
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribuye uniformemente los elementos
          children: [
            InkWell(
              onTap: () {
                // Acción al presionar "Inicio"
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/home.png', width: 35 * scaleFactor, height: 35 * scaleFactor),
                  SizedBox(height: 4 * scaleFactor), // Espacio entre el icono y el texto
                  Text('Inicio', style: TextStyle(fontSize: 14 * scaleFactor)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Acción al presionar "Descuentos"
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/Ofertas.png', width: 35 * scaleFactor, height: 35 * scaleFactor),
                  SizedBox(height: 4 * scaleFactor),
                  Text('Descuentos', style: TextStyle(fontSize: 14 * scaleFactor)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Acción al presionar "Descuentos"
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icono carrito.png', width: 35 * scaleFactor, height: 35 * scaleFactor),
                  SizedBox(height: 4 * scaleFactor),
                  Text('Carrito', style: TextStyle(fontSize: 14 * scaleFactor)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Acción al presionar "Descuentos"
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icono wishlist.png', width: 35 * scaleFactor, height: 35 * scaleFactor),
                  SizedBox(height: 4 * scaleFactor),
                  Text('Wishlits', style: TextStyle(fontSize: 14 * scaleFactor)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Acción al presionar "Descuentos"
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/usuario.png', width: 35 * scaleFactor, height: 35 * scaleFactor),
                  SizedBox(height: 4 * scaleFactor),
                  Text('Mi Cuenta', style: TextStyle(fontSize: 14 * scaleFactor)),
                ],
              ),
            ),
          ],
        ),
      ),
  
    );
  }
}