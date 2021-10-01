import 'package:flutter/material.dart';

class PersonalEmergencyContacts extends StatefulWidget {
  const PersonalEmergencyContacts({Key? key}) : super(key: key);

  @override
  _PersonalEmergencyContactsState createState() =>
      _PersonalEmergencyContactsState();
}

class _PersonalEmergencyContactsState extends State<PersonalEmergencyContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Personal Contacts")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
