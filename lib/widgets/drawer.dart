import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  _navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Center(
        child: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bj1.jpg'), fit: BoxFit.cover),
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                  title: Text(
                    "User Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "aerial"),
                  ),
                ),
              ),
              drawerItem(
                  leadingIcon: Icons.house, titleText: 'Dashboard', route: '/'),
              drawerItem(
                  leadingIcon: FontAwesomeIcons.peopleGroup,
                  titleText: 'Guarentors',
                  route: '/guarentors'),
              drawerItem(
                  leadingIcon: FontAwesomeIcons.peopleGroup,
                  titleText: 'Tenants',
                  route: '/tenants'),

              ExpansionTile(
                leading: Icon(Icons.apartment),
                title: Text('Manage apartments'),
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  drawerItem(
                      leadingIcon: Icons.apartment,
                      titleText: 'Apartments',
                      route: '/apartments'),
                  Divider(
                    thickness: 1,
                  ),
                  drawerItem(
                      leadingIcon: Icons.house_siding,
                      titleText: 'Floors',
                      route: '/floors'),
                  Divider(
                    thickness: 1,
                  ),
                  drawerItem(
                      leadingIcon: Icons.house_rounded,
                      titleText: 'Units',
                      route: '/units'),
                ],
                childrenPadding: EdgeInsets.all(16.0),
              ),
              ExpansionTile(
                leading: Icon(Icons.people_rounded),
                title: Text('HRM'),
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  drawerItem(
                      leadingIcon: Icons.people_outline,
                      titleText: 'Employees',
                      route: '/employees'),
                  Divider(
                    thickness: 1,
                  ),
                  drawerItem(
                      leadingIcon: FontAwesomeIcons.barsStaggered,
                      titleText: 'Departments',
                      route: '/departments'),
                ],
                childrenPadding: EdgeInsets.all(16.0),
              ),
              drawerItem(
                  leadingIcon: Icons.person,
                  titleText: 'Users',
                  route: '/users'),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerItem({leadingIcon, titleText, route}) {
    return ListTile(
      leading: FaIcon(leadingIcon),
      title: Text(titleText),
      style: ListTileStyle.list,
      onTap: () {
        _navigate(context, "/${route}");
      },
    );
  }
}