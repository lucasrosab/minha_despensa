import 'package:flutter/material.dart';
import 'package:minha_despensa/categoryTypes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Minha Despensa'),
            backgroundColor: Colors.amber,
          ),
          body: Container(
            color: Colors.black12,
            child: ListView(
              children: const [
                Products("Coca-Cola", CategoryTypes.bebidas, "Geladeira"),
                Products("Sucrilhos", CategoryTypes.cereais, "Armário"),
                Products("Pão", CategoryTypes.paes, "Geladeira"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.amber, onPressed: () {}),
        ));
  }
}

class Products extends StatefulWidget {
  final String title;
  final CategoryTypes category;
  final String location;

  const Products(this.title, this.category, this.location, {super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        color: Colors.white70,
        width: 500,
        height: 100,
        child: Stack(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network(widget.category.url),
                  ),
                  Container(
                    width: 250,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          ),
                          Text(
                            "Local armazenado: ${widget.location}",
                            style: const TextStyle(
                                fontSize: 16, overflow: TextOverflow.ellipsis),
                          ),
                          Text("Categoria: ${widget.category.name}",
                              style: const TextStyle(
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis)),
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
