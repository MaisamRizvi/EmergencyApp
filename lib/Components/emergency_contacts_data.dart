import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_application_1/Components/emergency_contacts.dart';

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

  static List<dynamic> icons = [
    Icons.home_mini_rounded,
    Icons.call_made_rounded,
    Icons.alarm_rounded,
    Icons.run_circle_rounded,
  ];
  static List<String> emergencyContactsNo = [
    "tel: 115",
    "tel: 99215960",
    "tel: 15",
    "tel: 1122",
  ];

  final List<EmergencyContacts> emergencyContacts = List.generate(
      emergencyContactsName.length,
      (index) => EmergencyContacts(emergencyContactsInitials[index],
          emergencyContactsName[index], emergencyContactsNo[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: <Widget>[
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: emergencyContactsName.length,
                  itemBuilder: (BuildContext context, index) {
                    EmergencyContacts _contacts = emergencyContacts[index];
                    return SizedBox(
                        height: 100,
                        child: Card(
                            elevation: 4,
                            child: InkWell(
                                onTap: () async {
                                  var phoneNo = _contacts.contactNo;
                                  await FlutterPhoneDirectCaller.callNumber(
                                      phoneNo);
                                },
                                child: ListTile(
                                    title: Text(_contacts.name),
                                    subtitle: Text(_contacts.contactNo),
                                    dense: true,
                                    leading: CircleAvatar(
                                        child: Icon(icons[index]))))));
                  })
            ])));
  }
}
