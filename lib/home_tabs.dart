// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/emergency_contacts_data.dart';
import 'package:flutter_application_1/Components/personal_emergency_contacts.dart';

class HomeScreenTabs extends StatefulWidget {
  const HomeScreenTabs({Key? key}) : super(key: key);

  @override
  _HomeScreenTabsState createState() => _HomeScreenTabsState();
}

class _HomeScreenTabsState extends State<HomeScreenTabs>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      initialIndex: 0,
      length: 2,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1ClickHelp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(text: "Emergency Contacts"),
            Tab(text: "Personal Contacts")
          ],
        ),
      ),
      body: TabBarView(controller: _controller,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[ContactsData(), PersonalEmergencyContacts()]),
    );
  }
}
