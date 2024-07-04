import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:introduce_fea/Menu/dashboard.dart';
import 'package:introduce_fea/Menu/logout.dart';
import 'package:introduce_fea/Menu/my_drawer_header.dart';
import '../Menu/about_fea.dart';
import '../Menu/about_teams.dart';
import '../Menu/contacts_crud.dart';
import '../Menu/list_organigram.dart';
import '../Menu/uniform_students.dart';
import '../Notes/real_tim_crud.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.real_tim_crud) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.AboutFeaPage) {
      container = AboutFeaPage();
    } else if (currentPage == DrawerSections.UniformStudents) {
      container = UniformStudents();
    } else if (currentPage == DrawerSections.ListOrganigram) {
      container = ListOrganigram();
    } else if (currentPage == DrawerSections.AboutTeams) {
      container = AboutTeams();
    } else if (currentPage == DrawerSections.logout) {
      container = Logout();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("ຄະນະວິສະວະກຳສາດ"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "ໜ້າຫຼັກ ", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "ລາຍຊື່ຕິດຕໍ່", Icons.people_alt_outlined,
              currentPage == DrawerSections.real_tim_crud ? true : false),
          menuItem(3, "ສະມຸດບັນທືກ", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(4, "ກ່ຽວກັບ ພາກວິຊາ ວິສະວະກຳສາດ", Icons.settings_outlined,
              currentPage == DrawerSections.AboutFeaPage ? true : false),
          menuItem(5, "ເຄືອງແບບນັກສືກສາ", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.UniformStudents ? true : false),
          menuItem(6, "ລາຍຊືຄະນະຈັດຕັ້ງ ຂອງ ຄວສ", Icons.notifications_outlined,
              currentPage == DrawerSections.ListOrganigram ? true : false),
          Divider(),
          menuItem(7, "ປະຫວັດຜູ້ພັດທະນາແອັບ ", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.AboutTeams ? true : false),
          menuItem(8, "ອອກຈາກລະບົບ", Icons.login_outlined,
              currentPage == DrawerSections.logout ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.real_tim_crud;
            } else if (id == 3) {
              currentPage = DrawerSections.notes;
            } else if (id == 4) {
              currentPage = DrawerSections.AboutFeaPage;
            } else if (id == 5) {
              currentPage = DrawerSections.UniformStudents;
            } else if (id == 6) {
              currentPage = DrawerSections.ListOrganigram;
            } else if (id == 7) {
              currentPage = DrawerSections.AboutTeams;
            } else if (id == 8) {
              currentPage = DrawerSections.logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum DrawerSections {
  dashboard,
  real_tim_crud,
  notes,
  UniformStudents,
  logout,
  AboutTeams,
  AboutFeaPage,
  ListOrganigram,
}

