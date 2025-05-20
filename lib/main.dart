
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/FadeAnimation.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    )..addListener(_onScroll);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            image: 'https://raw.githubusercontent.com/VictorAlemanHidalgo/Imagenes-Negocio-VAH/main/ESPACIO1.png',
            title: "Espacio Creactivo 1",
            description:'Un escritorio con una buena posibilidad de adminitracion de elementos, como la ocmputadora.',
            pageNumber: 1,
          ),
          makePage(
            image: 'https://raw.githubusercontent.com/VictorAlemanHidalgo/Imagenes-Negocio-VAH/main/ESPACIO4.png',
            title: "Espacio Creactivo 2",
            description:'Un lugar donde poder trabajar comodamente y con la mejor distribucion de elementos.',
            pageNumber: 2,
            
          ),
          makePage(
            image: 'https://raw.githubusercontent.com/VictorAlemanHidalgo/Imagenes-Negocio-VAH/main/LIBRO.png',
            title: "Libro",
            description:'En este libro encontraras las mejores guias para mantener tu negocio fuerte y estable.',
            pageNumber: 3,
          ),
          makePage(
            image: 'https://raw.githubusercontent.com/VictorAlemanHidalgo/Imagenes-Negocio-VAH/main/CALENDARIO.png',
            title: "Paquete Creativo",
            description:'Un conunto de calendario, cuadernos y lapices para tener una mejor organizacion en tu negocio y tiempos.',
            pageNumber: 4,
          ),
        ],
      ),
    );
  }

  Widget makePage({required String image, required int pageNumber, title, required String description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  FadeAnimation(
      delay: 1.0, // Puedes ajustar este valor para controlar el momento de la animación
      child: Text(
        pageNumber.toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Aquí puedes agregar más widgets si necesitas
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
  delay: 2.0, // El delay debe ser un double y usar nombre de parámetro
  child: Text(
    title,
    style: TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontWeight: FontWeight.bold,
    ),
  ),
),
                    SizedBox(height: 20),
                    FadeAnimation(delay: 1.5, child:
                    Row(

                      children: <Widget>[
                        
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                      '4.0',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        
                      ),
                    ),
                    Text(
                      '(2300)',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        
                      ),
                    ),
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(delay: 2 , child:
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(description, style: TextStyle(color: Colors.white.withOpacity(.7),height: 1.9, fontSize: 15),),
                    )),
                    SizedBox(height: 20,),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:191689610.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3450377488.
                    FadeAnimation(delay: 2.2, child:

                    Text('READ MORE', style: TextStyle(color: Colors.white),)),
                    SizedBox(height: 30,),
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}