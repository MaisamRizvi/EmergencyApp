import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
// import 'FruitDataModel.dart';
import 'EmergencyContacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ContactsData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactsData extends StatefulWidget {
  const ContactsData({Key? key}) : super(key: key);
  @override
  _ContactsDataState createState() => _ContactsDataState();
}

class _ContactsDataState extends State<ContactsData> {
  static List<String> emergencyContactsName = [
    "Edhi Ambulance",
    "Civil Hospital",
    "Police Emergency",
    "Rescue Service",
  ];
  static List<String> emergencyContactsInitials = [
    "EA",
    "CH",
    "PE",
    "RS",
  ];
  static List<String> emergencyContactsNo = ["115", "99215960", "15", "1122"];

  final List<EmergencyContacts> emergencyContacts = List.generate(
      emergencyContactsName.length,
      (index) => EmergencyContacts(emergencyContactsInitials[index],
          emergencyContactsName[index], emergencyContactsNo[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Emergency Contacts"),
        ),
        body: Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: <Widget>[
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: emergencyContactsName.length,
                  itemBuilder: (BuildContext context, index) {
                    EmergencyContacts _contacts = emergencyContacts[index];
                    return Card(
                        elevation: 4,
                        child: InkWell(
                            onTap: () {
                              print("Click worked");
                            },
                            child: ListTile(
                                title: Text(_contacts.name),
                                subtitle: Text(_contacts.contactNo),
                                leading: CircleAvatar(
                                    child: Text(_contacts.initials)))));
                  })
            ])));
  }
}   

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   static List<String> fruitname = [
//     'Apple',
//     'Banana',
//     'Mango',
//     'Orange',
//     'pineapple'
//   ];
//   static List url = [
//     'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
//     'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
//     'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
//     'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
//   ];
//   // ignore: non_constant_identifier_names
//   final List<FruitDataModel> Fruitdata = List.generate(
//       fruitname.length,
//       (index) => FruitDataModel(fruitname[index], '${url[index]}',
//           '${fruitname[index]} Description...'));
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Emergency Fruits'),
//         ),
//         body: ListView.builder(
//             itemCount: Fruitdata.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   title: Text(Fruitdata[index].name),
//                   leading: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Image.network(Fruitdata[index].ImageUrl),
//                   ),
//                 ),
//               );
//             }));
//   }
// }
