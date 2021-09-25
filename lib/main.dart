import 'package:flutter/material.dart';
import 'FruitDataModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> fruitname = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple'
  ];
  static List url = [
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
  ];
  // ignore: non_constant_identifier_names
  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(fruitname[index], '${url[index]}',
          '${fruitname[index]} Description...'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Emergency Fruits'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          children: List.generate(fruitname.length, (index) {
            return Center(
                child: Card(
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        print("Click worked");
                      },
                      child: ListTile(
                        title: Text(Fruitdata[index].name),
                        leading: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.network(Fruitdata[index].ImageUrl)),
                      ),
                    )));
          }),
        ));
  }
}
