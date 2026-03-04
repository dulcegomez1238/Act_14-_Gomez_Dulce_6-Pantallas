import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florería App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// PRIMERA PANTALLA - LOGIN
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Círculo en la cabecera con imagen de la web
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGsNduqjkxoZBe32HgJvx40SQbyQGfpdBE48qNdbX46hr2RQSdS_eWk8U&s',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
              SizedBox(height: 20),
              // Icono de persona a la mitad
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              // Texto "Iniciar sesión"
              Text(
                'Iniciar sesión',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              // Botón Google
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductosPage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Center(
                    child: Text(
                      'Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Botón número de teléfono
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductosPage()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Center(
                    child: Text(
                      'número de teléfono',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Texto "Crear Cuenta"
              Text(
                'Crear Cuenta',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              // Flecha hacia la derecha
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductosPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SEGUNDA PANTALLA - PRODUCTOS MÁS VENDIDOS
class ProductosPage extends StatelessWidget {
  final List<Map<String, dynamic>> productos = [
    {
      'nombre': 'Ramo de Rosas',
      'precio': '\$25.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
    {
      'nombre': 'Ramo de Girasoles',
      'precio': '\$19.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
    {
      'nombre': 'Ramo de  50 rosas ',
      'precio': '\$22.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
    {
      'nombre': 'Ramo de 500 rosas',
      'precio': '\$28.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: Column(
        children: [
          // Círculo en la cabecera con imagen de la web
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 40, bottom: 20),
            color: Color(0xFFFFE4E1),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'data:image/jpeg;base64,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',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
            ),
          ),
          // Rectángulo morado en la cabecera
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Text(
              'Conoce nuestros Productos mas Vendidos',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          // Grid de productos
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: productos.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  producto: productos[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuPage()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// TERCERA PANTALLA - MENÚ PRINCIPAL
class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool showOcaciones = false;
  bool showFlores = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: SafeArea(
        child: Column(
          children: [
            // Círculo en la cabecera con imagen de la web
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFFFFE4E1),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            // Cuadradito con 3 líneas (menú)
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                    // Aquí puedes manejar la visibilidad del menú
                  });
                },
              ),
            ),
            // Menú desplegable
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Inicio
                  Text(
                    'INICIO',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Ocaciones con flecha
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showOcaciones = !showOcaciones;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'OCACIONES',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(showOcaciones ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  if (showOcaciones) ...[
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AniversarioPage()),
                              );
                            },
                            child: Text(
                              'ANIVERSARIO',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              // Navegar a cumpleaños
                            },
                            child: Text('CUMPLEAÑOS', style: TextStyle(fontSize: 14)),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              // Navegar a funebres
                            },
                            child: Text('FUNEBRES', style: TextStyle(fontSize: 14)),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              // Navegar a primera cita
                            },
                            child: Text('PRIMERA CITA', style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                  ],
                  SizedBox(height: 10),
                  // Flores con flecha
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showFlores = !showFlores;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'FLORES',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(showFlores ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // Navegar a tienda
                    },
                    child: Text(
                      'TIENDA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CUARTA PANTALLA - ANIVERSARIO
class AniversarioPage extends StatelessWidget {
  final List<Map<String, dynamic>> productosAniversario = [
    {
      'nombre': 'Rosas Rojas',
      'precio': '\$29.99',
      'imagen': 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAygMBEQACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAECBQYHAP/EADoQAAIBAwIEBAMFBwMFAAAAAAECAwAEERIhBTFBUQYTImEycaEUI0KBkQdScrHB0eEzYvEVFiRD8P/EABsBAAIDAQEBAAAAAAAAAAAAAAECAAMEBQYH/8QAMBEAAgIBBAEDAgQGAwEAAAAAAAECEQMEEiExQQUTUSJhcYGx8BQykcHR4TNCofH/2gAMAwEAAhEDEQA/APTaID7NQh9mgQjNQhYVCEMyopZsYAJJPQCoFKzyXjXFDxHidxcE5jY4T+EcqxTlulZ7zRab2MEYeTMYRs4bHLlS2a1wRO4MbjNKyJGcyjOd80pYXlb7qMDoKYlUBBOaBCWNQhAY7b1GQLHvnIznvQQTs/CHFFaM2NzP94D91rPxDt8/6YrRilxR5n1nQy3e9jjx5o6cAZVR1NXHnuxGa6k4Z4v4dHE5FreR+XNED6SxJw2Oh5D3phWrOsxTCkVCHxoEKGoyFulKMRUIVPOoQ+qEGqsKyuagSCaAT7NQhZTRBRkeLb8WHAbmQEeY6+XH7s2w/qfypMkqibvTcDzamK8Ll/keQSXKxLpJA22rEe3c0uwZvV0hgcqRQY0WpKyv2guCNs9qXkdNdAmfeoGyJWIUb1ASdFUbvRAnZbIoDE7VCBIzUCguNW1Qh3ng28mvoGS4bXJAwUN3BG2f0rVilaPI+s6WGDKpY/8AsT4qfRxmwfG8YRs+4kFXnEs7htjRFIqEIoEKmowk9KUJHSoQqahCKhBkmrBCpNAJUmgE+BqEE+M8WtuC8Olv7vUY48AKoyWJOAB8zUbpWPjxvJJRR5b4o8ajxAbeKG3e2jhLEiRgct/x/M1nyS3Ho/TMC07lzy+L+xycj7CRyd9st1zSHQlJJWwbTqmyAnHSooivOor6T6CRxJrfNCURsM3e6QY3G4pdpf7/AMkSSjUuXyT0zU2knkVo+FwAxBobQRz0+Q6uCuQaWqNKlaPg+DUDuDRtmoWRdjURooY2vD/Ff+lXvmOrPC64dVO/sR9f1qzHLac71LRfxeLanTXX7+5qcVu04pxizaEsYpDGqhue71qTtWeKz4J4Mjxz7R6M3OmKCKhCDyqERQ0GEt0oBIqEKtUIVqEDk04pQmgMU1ZqELA/TnQIeZ/tJ8UXP21uCWceiOBleWTZizDcDbkBkHvmqpyt0dTSaNOG+Ss4fXJcyGaUfetzAGxqltLhHX0GleFNt9+AUqSNM2VyNOxoqqNOSM55GmrLmIaV1svQjB596C7GyY1t+p1QnFnU+v0hNwc9DVj4MONu5b+Eg8JSb1bMBgDaldo04XjyO1yiyyKWK0tPsuWWF7QLiNfj3xuCeopkZpxxx/mf3BR3J+0KcMR0ouPBRj1UllT5GJXd12yPc0iSNs8k5Im3nKyKrDbnq6UZRVEwZ5KdSNO2n1sd6qR1MeRTGw5Vc42FFFlHWcEttXivh1tzEEasx/gT+5FbIdI+ea7J7monP5b/AFPRqcyEVCFTUZEVpRiTUIVzUCVJqAIzUCEJpgFCaASpPOgFdnKeNvFz8CeK1sBDJdOupy++gdNu5queRp8HR0GhjnTyZOEeZcY4tLxniz3Nz5QmkA1eWukbCq3b5Z29PHFgawQFmk0ekEYJ3NJVmuU9nRCSGQsByB2HXem6K4ZHNtWWWNNOM/Wltl3tY2qZYRou7AMW5k9althWGEVzyQQGDYXG++B1ou/JKhJNJGcQvntIJFVgd07Vd4ONJxWVy3U/gZto/OUNL6lj+tJJ7ejZpcfvpOfKj/6MmdQ4RNiduVJtb5Nb1GOEtkUL3DsIi4XBU+pT0ox7oo1E37bmvHaADTIjEvseQpq5MtxnG2+BuylJcd6qkjo6TJfBrx5Zd998YpUdLxZ33glPtXiTil6R6YYljQ9ix3+i/Wt8ej5rmf1v8TtqJWRUIQajIihoDH2aASrGhZChNQhGRUIFY09gKE0BjM8Q8Rj4Zwi4uZbjyCEIjbGSW6YHWkm6Rdp8Ty5FGjw+7uXuZ3lk1zSk6mdup96pXdnpskkqjFcIWgDZMpJDE6SpppMpwK7yrhjWVVAXxnG+9VnQioxjclyD1hWbkBjkBvR5ZS5RhJtkRo0j5UE6fxDvREipZHuXNDNwHCBsfF8XXBoRo06hS2pi0SNF8evnkYHOmk7MmNTxv6rEp8G5kK4yW2z1qxdGDPT1EpJeTSaYJCF0+oLkKOvfHeqnC3ydX+IUcSSXJEEayHUodjtjOdj7ZqN8UV48anPerByyB2uU20RxgE+4FT4JPJayxfSVf0MaGcyOqEkDFaJRS5PP4tRLJJQZp8PlHn6QazZFxZ29DmXubUdDZ4M0ZJ2DA/1qqJ3csqxyfwj039ndvo4HLdMCGvLh5d+wOkfQfWuguj5xJ27OmaRF+JgM7DJxmoKRq3okILCgyFC69Tj50KCiplUHHWg0MDMo96FEsgSBjgVCE0Al2NMCiu+aAaPJf2geIxxa4FtbDTbW76QW5u/LV8u3zqqT3M7umwS0+Pe+5HLa2TIAOO9IkmdGUnBVXBEYZAisNwT+dHgEbgkmiTvIDpzpG2dgaHAzbm+uiSnwAj1E7jPWhY3t3tsfMflxgKOfP3NKzoRxqEeCE9SMoOQtGgJpprwuTNR3JeaRvQpIT5d6spUkcqM53LJN8Lr8Pk+SNLu2RmG5zhuqnpUtxZIY4arCpNckQgW4XK6hnbV37+1G9wmPGsVOStff98Fpb5I1K+WcjYbnnQUPuWZNdCCaoTuFl8ho0z5kh1Sbe3KrI1fJztQsjxOMe5cv/Blq2iXJyCNsVa1aOLBvHLnwHs53jmDDqd6WcbVGjT6uWHLvR1dlOJ4tcRwTtjse1ZFFxmkz1/8AFQz6OWSHx/Y9S4feJYcOtrUiRVijVVwuM7Vss8LRC3L3Emtzt0XtQslGha37xYWUlk7nmKKYKNRJFkXUhyO9MKZ15xOOItHAjXE3LTHyHzbp/P2oWFFLJ7p9b3TR+oYVIxsvzJ51OwjBNQJMR9W5pWEPkdxShL0Q0YHjXic3C/D089qSs7sI42GxXJ50s3SNGlxLLlSZ43K4PxbsDjJ71QembhtBavWvmttjOM45U6XBS5fWlN8FwxZwEb4jue1BIslKU39PkhWWRzobUwBGOYFGhVNTk6fJeRiEyMahjAU0Ei2bkofdfHZoK3mW6SD8S5xnr86Vrk3qbyYlJeQMx02zIuUZlIPUgHnUiUT/AONrpsyknhmia3WTBxpAfbIq5xa5ONDU4suN4VKn1yN2+YoxGi5C9V3pWrZ0MD9tbIq6Ek865hICnzMlWFNSRzU8mox/flMYhAX0OgDDfvyoGrHGmozXIaSRI0BlwMtj5UFFtmrJmhjjumJXtmlxD5tuRqTfT3FPGdOmc3XaOGfE8uDtc0ZsOCasZ56MXN1E6jwqrRXMTn98YB5VmnL60el0WleLRZW/+yO/uLwzyrrIUEbDON6us87tdOvAzBOFXb86IhRuJqX8uHMr9Qp2X5moQPDNIwKzSkKfwLsP80bIaMDxBAsYG30qIg2rqHxq3PSmQC5NQhXVUIfZpaCPH35UB+fBwP7UOJRNBbcOVpDOsolkXBA0kHHz3qubXR1fTcUlL3WuOjzmRCsWdyxPblSJ8nXyY9uPcxmz4S/EUmdXULDHk55sxGwFFzUeGc7WZNtRStsXaUwhUCjoM5oVbOjLI8MVGueCjuRr8tSueQA596ZL5Kpt/VtVWVMEwSNfKkZs5J08qbcit4JqMVTuz6Pz4X8vUyxjmKHDVhj72Key6iWuvMEgWMsD1dTvmpGqH1O9NQg/zKzQRqRLoGRljt+n1oqXgry6fHuU9v3f5FbqR1WAJnLAEgbVIqyanLKEYbfKsOTiHUi5dl/SgkXuTjDdBW2BhuWZDIFDerHKi4ozYtXJrdVl7gxyF4xpLJJ6lJ5ZHP6VI3RZneOcnBPlPlfvwWtlQOwQ7FdI9+5+VK3ZZp4RU5JeVX+/wMVEaK7aOQYOeVXy6PPYPpzuLOu8Mfe3ca7YjGusm25nfzar29I4/J1VxALiBv3lBZT1Bq9qzjaTUezlV9eTJj4i9yEje4PljdtOxPzNTHI0+q6LDh+uDq/BqW0wCBYAFXsKZnFqhxW8sBp5MdhQoFmhw4XV7IRFFLDAAczFcfkKK+xLH5Ljh/DgDPOqseWSWZj2wBk1HOMUAcjk8yNX0suoZwwwadOyH1Qln2ahLNAmkLTyP9o8q/8AdMukN6I0DZ6nGdvyIqiX8x39DJxwRvq2c5JKrIWC47FvlS+ToznGUOi0V9JYW00UGSk+N+1NSk+TBmxKLhOPgAZRIo1R7kZznlRa5NLze4qcQtiwYuQ2+xz1/KllZbo3GblzyXeV0lCJk7c/70ElRdkzzhkUI+SzASB4nOpWQ59sVFwFpZE4S6p/v9/AnJdeXGH8vUybMBjA9+9XKFnNy6r24qW22u+f/fkXm4goUMDkkcsc6KgU5fUoxinfJaWUSwxuYyFK7Y5rUSp0Lkye9jUnGkOR3Vv5cYdgj4wB3/Wq3GXg6WLV4NkVN0+gccRd2ETRKqnmvUdyKe12ZsenlOTUKr9+Aq8Ng3ZwzueuaX3H8GqHpmC25u2ysoSxiaVVZ99874/xUX1srzKOhxvIlf7/AEMMtmZX3dmJIA6Voa4o8rjypZN50vhiTHEYwvUEEflVCXJ188lLTnbIwXn2xVhyjno7PS7DIVNZwR1popRRZlnLM7l2Pi4mhj0wW7bfiPWpwUSg12Giv0hCt5LvJ3J5GlZU+As9/wAZntglqzqhOPLU4yPnVc9zVJiPk1uDJa8Ii82+YQ3j81aXzHI6bKD9KEYwhyRUjatLs3Jc/ZriJPwvKoXX8hnP6iroz3eAph80wx9moQ0jjry61WXPo8P8SXNxdeJr5r0t5yTMpB5IAcBR7YxVT8notKsaUYR68iAXzpT6vSKQ3f8AJOl0g2pZVIBwcYP5VLLZKElRnWszsZUZdwBg9zmrWl2cnT5ZScoS+AsEbwv5iqxDbHbcUsmmqNGDFkxS3pdjBurbSHMmrGclRv70u2XRqeq0tb27oBJMkaNg4eUBVA3Ea+9Oo/JklnhCLp/VLj8F9wMSiFmacBVXkSOdO/sZ8UVjb93iikJWNWkSJJCW3B549qj54YmNqCeSMVLn/wAQzIQVwfSGGVx37UhvyU418/uig024aVstIQAXPT2ApnciiChp7yS5l8/2DK0i27OTnWRjeldWaYOaxObdtgrhmWd9OoHzN96ZGbUTksjpu7+RtF1RtG5yDn32x/zVbdSOjCDnjcZvv9KOegbRqVV3Jxr7CtLZ4rHsjOmdJ4Sj1X0kn7qdee+1Kkbc8/pSOrnfSnOiZ4rdKkL2qNAC2jzgf/YvxfoaXk66wQqo8GhFi6TMRyOWx5UUzDq8bxrkKOG5AbOG6U1HJsPENDaZzp7P70tDdmtwyC1i3igRJMfEFGWoxSQKNDIxTBIJqEIzUIOcRvY+H2FxezAvFChYqBkn2/zVb6NMIb5bTwS4uHnu7m6mB8y4lMjMeQJOf50naO3ift39y1mVzIGIGcYztVcrpUdDSSgpyTfY01sdLaCAxGxNKma56eW17e2Kxg20eGTDsdzin/mZix3hx8r6mQQJvvPUAvxIDs1HoWS925Nv7r5LsmHjXR6fYbCpuHcFGUUlwVnRCDDGi6nO2O9RPyTLDHXtwXLLxxQ2hCytrZ+r7j8qluXRIYcGlpZOW/n+37spxG3Wa2MsQ0vGpIK7ZHMipjk06ZXr9NDLheTHw43/AE+P6CkSzSWiMqnVjBZ9sU7aTMeKOeeCMo9/cIx1wlSoDgAadWxoLsun9eOpLkLoubaE64o2Q81Bzj86LpkUdVgVtKvi7LRyxSS6GcFsalcf/fSg01yhtNqNPqJbJcSLXEpSN4rYBpMFnPf5GhCNu2XanJKMJY8P8zX7/MwYZCXCqAAK0M8ljxubo7LwtEVjuJSpBJCj3GP80qaZfnxZMdbuhnid1JqRI+nOi1wNpnU93wXsb440yAj5UtHTWaL7HC8ZIZJDFL0dcjPzobL6Eya6ONVJbl8MYt+L3NsP/ITzo8/6icxU3Sj2Uy02i1XOCe2XwzWivLS+TCMDnmOo/KnTTOXm0+XTy25FX7+SYzNbHMZ1oOnUUOhLNm2ukuI9S4DfiHamRA2ahCM1AmV+0dLhvDx8l8QrIDOAcal/5qibpHU9PUHmqZ5OiCeRFJ3Gf0FL0jr4scJNQighiY3EZ20vzoKXBfLBeWNLhhblpssIhuD+GlSXk06iWVNqC/oDIZoMT7HOMnoaPngotyhWR8i13OkMXl251ySDBxyFWRjbtmPVaqOGOzFy2Sge3hzJK2vpjkpqWm+gqMsOO5yd/oGtbSNJUlDsxznc0JPg06XSY4Tjkuw14isit+7vt896SDaNOswqaUn4KxuBcCIHUpXLZ6H+tFLyUwyXl9rwLRSFFPmYzkkydDTNWjLhyuNuXnz+/wBAbsizMMgtjvy3pknQmTJBZPuaRmWYtyKYwDSPg6cZrLb8GbNOGmmOlWGtAD2wMbflirEm2jz01BZ5Tj0nX+QlkJLglreKQhO5zk8udCX0m3Syea5QT4/+DFpwAxt515KiDOdKnYfM0Jz4pD6b0h43vzy/JHVLbpa8PLxYwcYwc1MVIf1aHuYagun+pjq0hncycm79K0RluXBxcun/AIeahPt+RiNde6jGKAzi4rgaibUhVhvUo5+Z/IYQtjKnI7UfxMjXNoLaBVlGoAN7/wB6Xgd5ctbdzo6Cz5DJGKIi4GjCAwki9Lr+jCiWJjavqUNyoBJzUIX8T2H/AFHgV3aiESuYy0as2n1DcHPtVL6NmCWzImeI2rJC5LHI3BxVTto9JhnDFO5MJdOuhJITqG2n3qJfJbnzcKWPleAqXJuOS6cc87mg1RfHUSzcLgiePz4vLJbY7HsakZUV6jA80NliMavBMkRTZTk7fFVt2rObjxyw5FDbwhto1mXc4BGxY8jVaZ0XCOWPHX3Bl5I2VYo9Shss2RgL7mnpNGeWTJBqMVa8v4QWznaQSFsGMNhaScaNOk1Esm5v+VPgK0kTEqPS3dR/WorSHlPDJtLh/JjPZi2kYmXUDuhq5T3HAyaFYZW5X8FvLXLXKEufx77896l+BZQSfuY+X5GbaaN9at6dS4xStOzdo5x2OMnywSxxqpjlGATkFelM3ZXjwwhHZJGtwe7jto3hIIUIWT3xzFVtN9nS0maOCLxxXFNr8RFLiXiE5aQ/wr0AoTVFOnyZNVkuTN60meKCS3Y+h19OejUkW0zrZsSUd1dCNxcl4g8I0TdQ3I1qxqSdHnvVMuDPp1KL5T4LwcSaNfvVAPtV7imcFZJRVB4b+Jm3IFQzZG5cmtZ3SHGGBoNFNtGnGscq+oAg0tDqQ1DbFR9zKy9gTkVKDZdbi4Riki6vcClHQ7ZSlkYHIxvRQRjWaNAsZ8ScQj4fwi4nlGdQMaqOZJ2rPKVI6OlwSz5VBHiUsRgnEbBSCdnTJB9+QqtPg70ltlUkDxiQDyj7dqPgC4yJJDUcio2kqBnng5pWjbjyRUqaoYZMLlQWONgKQ05U4xuHLF5nCMHYesbDflTxXhGbNNRe9rkWuIY51UtgMTs3LfsaeLcTFqMGPMla58P/ACA0kMIQCEIz+fyp075M2xprGl9P9xizGY5IQcYOTSz+WatJG1LEnz2EgtHQli+cZIGOVBzTHho8kFd3+QDiRDP5IxmNADj3pocclGuqUvZ8xSFH8xLYAH4ugHX3p+GzBOOSGJO+y9jbmEu8p3deR6Z60Mjvou0WneJuU32g3krNICjZK/hzSJtGh4YZpfTLkvLoghOx1dPc+1Rcj5FDDB/IzwW3KRmVuvLIqvI7Zu9IwOEN8jXC53z7UsfB1Zq4OzIa3uVLfZ385dR9J2Irq06PmDklJoCbh86ZIiCejUCXfRUQvq1Y9J7UKBu+TQtYptjG+3vSsV0bFs9+g2QPjsaAtLwatvxCdcGa1kGOoGaFoJowcUt5Dgvj2IxUDZoQssuXiOQRUIGohsw/2kXRMtrZqdlBkY/Qf1rFk+D1fomLieT8jg5ifrSo6mSKFJHKylM+oct6YxynU6CrF5nqz2zQsvWJT+ogzShCIiMb4OOlGkL72XZUSY0MsYEmx70LroOPH7kKn2fSLoVj+FVOPntRXLBlg4/gkwMIWdWBLYHJgAPypnwZ8NZYuMr/AB/sFgiUTFkJBTmM7fKpJtrks0+KKyOSfKDy3Hlhjp+EZ50iVm6epUE210ZMCSNK0ztkvnNXNqqOBgxzlN5W/wCYZaEOFxuq5JH73alUqNksG+mul39/gEGUtufXtkHnv2o0Z45It98+bJlbCNpIbGMHG4zUr5HyzW1pc0UtEe7uERyWI3JPQUJOkV6bHPU5Yxbs6WJAoAHKqEesjFKNI+u5vs9q8mMnko96txQ3TRh9U1C0+lnP54X4mXb3cZcLKDEx5MOVdPcfOdrH9BmUj7uUe/Oo6Yt0BNkzbRsUPZuVKHcfLFdW0gJQkdhy/WlY3DN60F1LGpSEL/EaraQo9DZ8RkZPNjPls2CwcAKPlzqBNiPh1qhy0YcjkX3qBG4wEGF2+VEhbNEhk+PeDzzunErZDIETRKg3IG+Dj86w5E7s9R6RqoQTwy8u/wAzz+ZCeQP86Q7eRWZd8CNLdqtx/Bx9amqmgUFw4lJB0kjGKeSRmw55PJw+xkO9uhcAMT+EnakrcbVOenW5K2/Ays6SRAj0kDJHX5Ck206NbzLJjTjwxZ5riWEBgBvv0J9qekmY5Zs2XGk15Lw6GKlTkDIxyqNssxRhJposFYsChCnHPNSxvbd3Fgb+QgCMEFi2+nlimgr5M2tyyVYr5vn8BeP7tk9eBnqaZ8maH0NcjkCl9YVwcAYA/nSNm3FCU9yT+AjQIxYsBzz70u5o0T08JNuQOXy/KkbBVcbZHxdqNtspyRxxhJ9L9Rvg1r5UHmOuGf6CkyO3Ru9K0zx498uGzXUf5PakOtyatpwRb22V5tYUnIGK36aG2NniPX9X72dYoviH6/6In8JiRdIkVh/vT+1aOzgKzOk8J8SgJNmyuAfgLZx+uDQDwwL23GrL/WsZSB1RdQoBcUWh46Lf7u6s1wf3yUP1FAGw07TitoWDQCWM9V2INKyUdRA/mQRuwwSoNQFFyd81AnwNQhbNQhs6qymsyeK+D7C/+8RGtpiPXJFyJ915UHjT6OlpfU82Jbe19ziOO+ErvhrYlVJYjurjYN+v8qrcZR6O5h1WDVQ4X5dnLXnC1XcKY26DoKZTa7Ks3p+OfON0zOfzYSvm+oLnGKsVPo5k/dxNKfNFvtaYzpIPSjtLHq410EtpgdfmNkH4QOhpJx+CzT5k73u7K3UnmsMHCjbamiuORNRNZJKuEicaFGd8b/M1AuG2PPJYSavVpILHr1qUMpp/VXLEZ2EkgXqOYFOujmZ6nOrNOKdbdDoT1Ab+9V7WzsYsscEKS5Ia5WX2yNqGyg/xUcnASxtjc3HmyHMajC5pZulSLNJpnny+5LpdG3GAFAH6dqqo78VSNjgnDXvpg7A/Z0+InYE9quw4nJnL9V9RjpMVLmb6/wBnZJFjAAAA5VvXHR4STbdsIIR2FQBZYgpJAxnnRAFVNqBCktrDKMSxI4/3KDUIJp4d4UJ0nTh8CyochlXG9Bog1LYhsmMhG+W1CgMSmhkh/wBRNu4O1SgFAR0oEPs1Am9CoMyg8tYrKnyax20Ym4lB5HOatAwXiBEksFjdQyEciKE+i7Sycclo4SfhtoUwYVKnp0rOzsx1GS+zlfE3BbO2gLwh1JPLVsKMXRfkissakcTdfdkqN8HGTWiLs4GdbJbUTExDDfpTNExSaOp8NcNtbqyuLi4TzGWTQqk7AYz+tVs7Pp+KOVPeP3HDbSMgLCuD3FVM7cNPia5iKvZWz6SYhlTkYJFLuaHnosM6bQo/B7TPmDzA38VMskqMGX0nTKe9Xf4idzaIhJ1ufmRRU2ZcukhHpsBFboZFBzjPencnRTDSwc0bkCiNAqgAA4xWRydnpMcIwiopcG/4asIOITXH2kMViAIUHAOT1q/FFSlycr1vXZdHhvF2ztoII40CIoVV2AGwrobVHhHi8uSeSW6bthgoBxUECBRUASqioENHGp71ABVhUnfNQjCLbx+9QFhVtozzB/WoQILOBkYMmocsGoQ5S9iWC8lijzpVgAD70rIV0ilCf//Z',
    },
    {
      'nombre': 'rosas rojas ',
      'precio': '\$34.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
    {
      'nombre': '50 rosas ',
      'precio': '\$24.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
    {
      'nombre': '500 rosas ',
      'precio': '\$19.99',
      'imagen': 'data:image/jpeg;base64,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',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: SafeArea(
        child: Column(
          children: [
            // Círculo en la cabecera con imagen de la web
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFFFFE4E1),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            // Cuadradito con 3 líneas
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            // Textos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'inicio',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    'aniversario',
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Grid de productos
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: productosAniversario.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    producto: productosAniversario[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CarritoPage()),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// QUINTA PANTALLA - CARRITO
class CarritoPage extends StatefulWidget {
  @override
  _CarritoPageState createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {
  int cantidad1 = 1;
  int cantidad2 = 1;
  double precio1 = 29.99;
  double precio2 = 34.99;

  double get total => (precio1 * cantidad1) + (precio2 * cantidad2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: SafeArea(
        child: Column(
          children: [
            // Círculo en la cabecera con imagen de la web
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFFFFE4E1),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            // Cuadradito con 3 líneas
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            // Título Carrito
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Carrito',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Producto 1
            buildCarritoItem(
              nombre: 'Ramo de Rosas Rojas',
              precio: precio1,
              cantidad: cantidad1,
              onIncrement: () {
                setState(() {
                  cantidad1++;
                });
              },
              onDecrement: () {
                setState(() {
                  if (cantidad1 > 1) cantidad1--;
                });
              },
              onDelete: () {
                setState(() {
                  cantidad1 = 0;
                });
              },
            ),
            // Producto 2
            buildCarritoItem(
              nombre: 'Orquídeas',
              precio: precio2,
              cantidad: cantidad2,
              onIncrement: () {
                setState(() {
                  cantidad2++;
                });
              },
              onDecrement: () {
                setState(() {
                  if (cantidad2 > 1) cantidad2--;
                });
              },
              onDelete: () {
                setState(() {
                  cantidad2 = 0;
                });
              },
            ),
            Spacer(),
            // Total
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${total.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // Botón PROCEDER EL PAGO
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinalizarCompraPage()),
                );
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'PROCEDER EL PAGO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCarritoItem({
    required String nombre,
    required double precio,
    required int cantidad,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
    required VoidCallback onDelete,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(nombre, style: TextStyle(fontSize: 16)),
              Text('\$${precio.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: onDecrement,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.remove, size: 20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('$cantidad', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: onIncrement,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.add, size: 20),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onDelete,
                child: Text(
                  'eliminar',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// SEXTA PANTALLA - FINALIZAR COMPRA
class FinalizarCompraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1), // Rosita bajo
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Círculo en la cabecera con imagen de la web
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Color(0xFFFFE4E1),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAtQMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYCBAcDAQj/xAA9EAACAQMDAgQEBAUCBAcBAAABAgMABBEFEiExQQYTUWEicYGRFDKhsQcjQsHwFdFSYnLhJDM0Q2OS8Rb/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQMEAgX/xAAqEQADAAICAgEDAQkAAAAAAAAAAQIDERIhBDEiE0FRYRQjM3GBkaHB4f/aAAwDAQACEQMRAD8A7jSlKAUpSgFK1NRuZbS286OBpgrDeqnkL3I9celbCMGUEHIPSo2DOleVtIZYyzDBDsv2Yj+1etSBSsS2OScCm4EZBGPXNAZUrwiuoJZJI45kd4iA6g8rnpmvDUdTtdOjWW8nWJGbaCx71B0ppvil2fNXDm1ZoiQyENx7HP8Aat1SCAR35rStby11SyM9lOs0LFk3KeDg4Ir0tZMWzSEHgngDnjj+1R99kNNPTNulecT741YZ+IA4NZdq6IMqUFKAUpSgFKUoBSlKAUpSgFKUoCO1ie5t7bdaSQLL285CVb24IwfvWppt7stbiGRAjQgusecYjJO3GP6eOtS0yF0K5XnqGXcDVW1lZbSPy4njzE+4bgRuB48v1GTtIbsR96brj2Cf0SZJbIlWBxLICR67j+vNb+R61B+HLy1TQoZ2kSON5JMbyAfztwff2+1Ql5/EDS2uDb2+7cJPL3yLgE5wcfWunamdsuxePly74TvRbNRujbWzOieY54C46k1yvVPG19pd+6eakaAsvlup+WRitXW/HTw297bQqWuTKf8AxKNkBS/UH1xx9R6VA+HoYtX8S20kySTyLIHZWIAjAzwRj4hx+uKp5vLqV0b/ABYnBkUZ422t9lk8D6wdMW4v3aSWG7IVI1THxB8E/wD1JqT8e3sOqyWMNrKGiQENkZDEj9+1VqS2bQ9cmjt1b8FHI7tag7iB8QBUAdMHgdcipkaNPf7Z8C2tkKMWl434OWIHbP8Amaq/ezvGu2bbcV5DzPqv+EpoXifT7AQ21kqm2ijkkuVRCvlAbn6ZPqK3tO8Tf6jpM17BG8LJOIDDvBCZwcs3GBzVOt0tbBZpwsRF15kLBnJVo8gcd+TkZwcY79Ki4Z72BN8Aht4I5opGV0JUso6nPAPYj4u3auZq0uLPHvG6tsnNW8c6npxjj06WIR4UKrKDwvB+9XbR/GdvqdxZQRW7gzqfMYkAIwznjv0rmd9pA1J7bUWmZl2hZB/zdTk/p9KkvD9zaWMzTI+wbuG3Y2jBHNXbyOUpfZ63leLhyYEsc6pf5OyRSq4OOxxms81RLbxLFNEumWUkkTncGmyCy9yfnyKtOhJdw6dGNRuPOm5JfjpV05N1x0eFcVL7JOlYhgce9fQcjIq04PtKUoBSlKAUpSgFa17JdJCxsoo5ZQeFkcqD9cGtmo+81SztLqKC4mVJJDhQf89qa2TMunpIh7/xBc6cMXdvtdlcRBiPjbIKjjPbIJ9R71B6prlnqKTQyzF2kc+TsYJjjIPGTnsc+3A7Tl9ZpNqslzdSJNHCwaGLurcdf1qteJLi3kuRfiCMTqAm7HKc9QR34rFnb01s0/Q3riym+ILi4k0W2tjKoQSOwTccSAnBPXse/uapxiufjSRW+E8MR+mex4P2q6yJLctG1w6vc3Mn8omcKME5JYe4PT2zUTpuoLb/AIizS2FxJO+xo/N+IAMBtXIIBz0OOjHFZpumtGrxfPyeOlBHWNi92qi5d4IJY8h0TJcBugPQcjv6VNafqAsLhH05QzRgK7MiszEd8kZ9Kx1zwl4h0i1F46K9sc+ZHHJuaEdct7ftVZt5fOvraN7w2cbOA0sY3bM98DGe3cVd80/wcZ/OrLkd0i/31yt251y3kUXsX57R/iaQHgqqjk8ftWMmsz3UCwXrN5LMB5cfwFx6Z7dMe1QX+iXaXEXmXkdxqEKvKUj/ADKingluhDBQcD1rC+1nU59GefU4yjLcLmSYbZZCR1AwMLx746ZNRyye0zh+VdNfoSlzqku944YFitkY7SoG2NT2X51XNUna5LJc3PkWgblFbAcdc+5+I1KyWesRQWsctjNGtywERaM8k9OBntzzj9KgtftL/Rb4R6pZ/h1lizEHIcMo64I4Bz178+9TPO/ZXeWmlsvOlxl7O4t2YoJIhKhidZI9mOpOcjoft0rQ1jyrSzhCpE7MfjdSTlc9B71UrW5ktUjuig8pgSoA/MBjA++andRvWHhtbsTO8wwphETYgD8fE3TPsOuK6Sp5E2bsPlVz509G5oV0LXWmlW5QxumSD8JQE459hg81e9R1ya2mihM8pLRLmNBwy8j9f7VxvTYbm8lkYhnfaRhpPKAzxkn0GOnf2qbsby4/DqReq8YcIqysWc/9OeAPf3qXTim5M81yyuJn2ztVnrwvbdo3kKAAAyRZy2fT06damdLkQW6xQWzwxION3Qnrx3+tcVt9R8u4tSru1pG7yIjKQ6kbdxTqDjcMnPbtXTPDmrXdxBbSTzK8b53s2PTt8iOa6xZW6+RRWB8XaLZX2tO2vFnmZBwVAyD6+3t71uVqT2ZhSlKkChpXw0B8JA61UPE9lF4jBghBWWD4lZ8gMfmOnzqW8QX0UUf4aS1e5R1JkEXLRjjDY+fuKg5IddsFguLKxa6TOHjMu11yD8RHfnHGfWuHaRp8a1jbvemvRD2FvqOlJJZ6i5kkQ5RsjlD0Bx3FQXie8eNBu6Gp+9udeh2pqWgTFG+M3NvJ5nz3DAx+3yqt6te6XepLBLcZdBloipV19iD9q861XN/g2/tU0917Kxc5ECs0yrHLlNrjKnP9PTPXGT9K6B4K8LWF24128urua6jYgK8CwKCAMMFHYD/8qI8Gae765Hr1xPFa6Zah5X85/hwAV4HsWzmrL4j8b2EcEllprR38s6gKdw8o5PIJzkNjJGRg9M1dCmVs4vKsScR7f3/0WCSKYxgOhKkkb8ZGPeqNdeE9OksLmDTCI51nLm4k5MpJ+JWVQNm3HA7DHXJqrm81rzrWO1kuYpLNcLGWKtEcYIOecHGeflU7ca9ff/0OjKo2m7jUXESjhmI2k/TA+gxU/Um1pmb6SpvTK/e3GqaHA9gtl+Hkhdn/ABqxsdqso4DdAMD9T0rZ8Axrqc8VrdiKezt3NwRIm4se3OeACMgdO9X7U1sYpVF3cH8SwXZHu2jkkA/U8VUfD6wWWq6jHBIiieQNuUYAGSpH0Ib/ADiuNKeiMMKq0zocsitC9zJIm0sAgZckkHr9/wBq5p/FCZLmwtY2+KRSsobG3bncp/arTf3rThUU4SPhRmqF48nQ3FsrNliMMvfGeD981MZOVaNuTGpxts2vCWirNZTTaijgwoVRJWPpkHHbJOa17i3tJWMUIijjxiX4OS3PQ56fap5ddhXQvNvpwkcqAjLfHjOduOp71BapLaKpu7W4jniHxskQyy4/4h2HrnitG5fxX9y7FaieKfpH238N3M2lz3dpiS3tSxkycsBjso5NWOy8A3x0d7u7mW31Lyx5UGAwQnruPr8v17en8P8AUnaxnjQEzyfzU3LxnAyAPap6a4vb21eOCQwuf/cYZz9M/wB6rhS+zD+15Jt3L7OWTWUtnqNzp94254Hw5DlwCQDkZ+YNWXQ74Wt9G9uXkLLtEajqD1wPf1/StYaHPLqLm9kYSPIVeUgbX55Izzk8gAA4/Sp0eH5bJY5XGbyefPksAd5Y5/pYEdCepxiqXFU9o6yeYm/XX49HRtH00xxpLKMM3x7Tg7c84zzk+/FTYqv6DrTSWsiapDHZS2xCPunVhn75B78/rU8kqSHCMD8jW6NJdHnmdKUrsCvhr7SgNHUpCkLEJ5meCo9Kr2nX89tqWPNL20iYa26vER3A9PlVpmjU4LDPaoPWtJ0uQvd3riBIlJeUtsHzJzWPPGTlzl+iUb012l/pc02mXIJ2nDr1BHY9xXLNfsvNa9nmtLfygSE3vnc2cjA29evP7Va0hvoLWYaLp/4i1bB2XDh92D8LgMAe3T3FYjXdOu1ZdVtJbG/xiQ7SVc+32HXp79a4p/UXy6ZDOVLLHp7b4ZBHOVLMsZwo7YYke/QetQmo3krrJCFSEL+ZVXJY+59PbGOal9fjltrw28Yt4HnJcFcllB45bueD86g5I/IuAwJR04JQHnjOR9K4xrRY1xXZP6VHHqemw3gb8NJZyCJ2iBzt42sAfy4PbJBwRxUhLq8+jS4jjF3dmRfInucbVLYDEgdsDgVUY7q8tLpLmB9sgztxgB17j696n7rULfUIIL6LKMI/LeE8tGQcfbgHPvXFzSrf2LvGl5six71s3/EdxfTTfjbyeFrmKML5mOmCeFHTHNRmkanvvI5LhUyjDDAcjqfT5/esroG6gAkbJC4Hup5B++aiNxhuIoIod+R8Uo6oTkDj7H5UhVSbZ7vlYseLB61r1+rOkeajW3mocqwyW/4fn6VVNf05tXma+QEIiKgYj3Y85xxyOfStO90dtRSw/wBLt97bSbkEY/mZAGR0wME56dKtlqI7TR7qBwDAYhEZmOFwQQx+WSTn5VZONr5I8vd5ZapaRCaX4G1K+1Gze9aNbZnUTBX/AJgjX049AenSrlJaWkOlzW+iRw2okTaAR1+Z9ajfDGq38VzFaam8bwSKVjeNMbvQFsnt6VteK72PSLNxC0QmQ4Ecp2lhxnHqelaH0ZMkVj6o59ZtqOj39vNCZkuFImQ5+EA9M8kY46HnrXRtO8c2zeXFfxStIc4kRQMgf1Yz39OcVT4nkvLuZILeOO3nfcY5nztJ/NISce+PtW/pVpDd6rexwGQwhH8uSIknJwB07cHH71RyafxM5Y9F019R1WHVZrk2sc3xiISK2G9AP6uCewx1HWujx6ejwoX+OVQV3FicjjPPXnAqseH9Gk05/wCQsb/yAFcr8RGeuOdw6dD+9Sk0N9Kin8W3lc7TEp6+jc5Pp2/tWnGml2DZj0u3S7klt4bcSlNkmAAwxyv+fWpO0tkgUbVCnodvSo3RbPyBgOWPU7hxz14zxz65+ZqbxVqApSldAUpSgFa9zapOCHWNu48xNwVh0OPatilQ1sEJplhPp+oMmHmhkiLy3LsNzy7vT5Z+QAFeutaXb30O6WJPMU5D459qlq+NUKUkF09nB9V0O9imlkvrVpkYsVkiUMEGecnt3qCuUjtLo2k0qMgUKQ4BdR2Oc8fIsf0xXUbazj8S61d2pt4xYQTEsY53Y5HIyuApJODjtXtN/Dq0EbbGWeQsWVpR07dBgcev71k+nTe0XZ81Zq5UjjJspmmSKVEcMRl9uMD1P0Ir2muIdLMCxxJNcRnLSKORGOo4/PwOatnirw1c6Wd4j3RjABIzwOlU6SAvG7q5BQmQEjOw9d2f0+Z+9a2nqihV+CS1/UiXkkSPzGDBv/MIBQgEPx1wMdxwPaoy3ljmn3A70u3AHlnCKCCBgd+Qa1/NllsxEx3X1uC0f/yx5ztz3wDx7HHasNJRyIRDxGl8rR/9JVjj75rtQkjp09eyxnXpLDWIbXcq2K2qmcbeWZsjk+nI49qy8T+IWu9Nms7Ly0SWMbm3AYTpwff0qI8Ux/h7sSBS/wCJQJsPcgn/AHFalhb28jQpJiS43ARxBuM9AB/n6VarfHRcvJvg5f3MLOymt4SVugqyZ3xqxAb6f1ZqzaVAjKlrJDKh8veheMxqoJxwoyccdv7VIW/g+4iHnyWs0uzHmAyLk5G4Z+Hgc9evbGOatR8IzaZavGs7zGQ/mX4OP6SeTyp/p4B7EGuKxuvZRtsaB4BSSKP/AFG5Hkbj/IgwoBI6MDweOfUV0G2063tV2WcawRnnYgxz2x6VSbHTLqa6hTz5UQg7pBk5z2HHPPOeCenGM1f7fPlqCG+EYyw5NX45SXSIR5JalHRhtBBOcDAPuPT/ALCvdYkWRnVcFuuO/vXpSrST4OlfaUoBSlKAUpSgFKUoBUH40uBaeGr2ctMpRQQYZCjZz/xDkD1x2qcpQEdodstvpluizSykJ8Ukm7c57k7ufvUhigAHSvtQlpaBoX2nR3UTRtt8tvzIUBDfPvXJfFvhCXTbmS7sVDWxPTkE5HIwf9zXaMVqaols1lILvyfKb4T54yvJ44PviuMmNWv1Gj8yTQG2kAidonVgyZ4GDx9j+hNZ6KV/EtkYzOrsg/pbB7duT9M1afGGj/h5nUzW5AJMZKFcg9R3B7/c1VbSzljuTNBcWjMwAC+YwLYPGeKr+hlafRa8GRrpG94ujaa3smijZ3MrIQvOcr/2qS8DaJdNqkdwS0Rttss6bwCFB6Zx14GOO49KsXg3w7Fql/bjUm3pEd8kSn4G9ASQCfljt17Hri2luqBBBGFB3AbR19fnXUYml8itw46ZGRWJDYllOx8A7BgY7c9/TtXvFp6IfKlijkixhDjkAdj6ipB0DqVI6jFfVGAM9fWriDUj0uxT8tun15rbSNEAVFCgdABgCsqUApSlAKUpQClKUApSlAKUpQClKUApSlAKhfGNwlp4cvJ3QuECkIOrHcMAfWpqoXxjJHD4Z1GSVcqIWA9ieB+9N67Jl6ezm+parBfwGW3kxGfibK8AgdMjjj3qtxzRtcDYQGP/ACnn7VBRF4dGhvYJChS8lGFOMAhDwfcDH1rb0jUpLbV1jvZXltmO1txxt9/f/DXS8yUtNG+fMlLTR1f+G8KGaaQq2VAwwGBXQa4roWr3nhvWgs8jzrBzKM/+otW58wDpuXr9xXZoJ47iGOaFw8cihkYdCD3qtZZyPox5ciyVtHpSlK6KxSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFUn+L1+LTwXcxjBa4dUAzjODuP7VdTXFv4yapPdahJpycRQRDqPyu5UA/vVeR6WiUUVUA8FeaMhkuw/GOhAx+1eEyma1tpV7jYee4xj9MVIW0Uh8PatbopOxI5Ix68t/uKjrYGbRZoozl441nj99uQf0FZd9v+ZBa9PuDqegQzB1/1LSzlZO4i5JyO4AzkehNdG8Ca1HFZQwMStpNIUQsc/h5+rQt7c5U+hxXHvDd8bHULW7TBjlZdw7HPb68fXNdF06KOxhurraZrFQEvoQeTb9UmH/MgPJ9B7VxFcMmiDqwOa+1paSCunwg3X4obcrNgfGvY8deO9btegu0SKUpUgUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgMXOFJHauM+N7OAwC9kTzLi71nbK7HqqrwOO3+1KVXfpEohLRjJFfwOcxrZqFX0+Ik/qf0FQ2g5FtCuThd4x69etKVhXp/wBB+TKzs4kFpCQXjmEgdW9ASR/t8q6//DtFexuSwy0Er26MeSUByAfufvSlWP8Aiogsnh7TIdKhmt7V5fw5k3xwsQVhz1VOMhfY5qXpStk+gKUpXQFKUoBSlKAUpSgP/9k=',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Título
                    Text(
                      'Finalizar compra',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    // Resumen del pedido
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Resumen del pedido',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$64.98',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Info de contacto
                    Text(
                      'Info de contacto',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Campo correo electrónico
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Correo electrónico'),
                    ),
                    SizedBox(height: 20),
                    // Dirección facturación
                    Text(
                      'Dirección facturación',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Campos de dirección
                    buildTextField('Nombre'),
                    SizedBox(height: 10),
                    buildTextField('Apellido'),
                    SizedBox(height: 10),
                    buildTextField('País'),
                    SizedBox(height: 10),
                    buildTextField('Dirección de la calle'),
                    SizedBox(height: 10),
                    buildTextField('Código postal'),
                    SizedBox(height: 20),
                    // Subtotal y Total
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal', style: TextStyle(fontSize: 16)),
                        Text('\$64.98', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('\$64.98', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Botón Realizar el pedido
                    GestureDetector(
                      onTap: () {
                        // Aquí puedes agregar la lógica para procesar el pedido
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Pedido realizado con éxito')),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Realizar el pedido',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Volver al carrito
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.purple),
                          SizedBox(width: 5),
                          Text(
                            'Volver al carrito',
                            style: TextStyle(color: Colors.purple, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hint) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(hint),
    );
  }
}

// Widget reutilizable para tarjetas de producto
class ProductCard extends StatelessWidget {
  final Map<String, dynamic> producto;
  final VoidCallback onTap;

  const ProductCard({
    Key? key,
    required this.producto,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(producto['imagen']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  producto['nombre'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(producto['precio']),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8),
              color: Colors.purple,
              child: Center(
                child: Text(
                  'Añadir al carrito',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}