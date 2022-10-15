import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:appart/widgets/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Map<String, double> dataMap = {'Vacants': 5, 'Occupied': 4};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      backgroundColor: Color.fromARGB(255, 255, 249, 231),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              print('Hello');
            },
            color: Colors.amber[100],
            icon: Icon(Icons.notifications_sharp),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: IconButton(
              onPressed: (() {
                print('Hello');
              }),
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 1,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(12)),
            //             child: Column(
            //               children: [
            //                 Expanded(
            //                   flex: 1,
            //                   child: Padding(
            //                     padding: const EdgeInsets.only(bottom: 6.0),
            //                     child: Container(
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(12),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.grey.withOpacity(0.25),
            //                               spreadRadius: 1,
            //                               blurRadius: 14,
            //                               offset: Offset(0,
            //                                   3), // changes position of shadow
            //                             )
            //                           ]),
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                   flex: 1,
            //                   child: Padding(
            //                     padding: const EdgeInsets.only(top: 6.0),
            //                     child: Container(
            //                       decoration: BoxDecoration(
            //                           color: Color.fromARGB(255, 255, 255, 255),
            //                           borderRadius: BorderRadius.circular(12),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.grey.withOpacity(0.25),
            //                               spreadRadius: 1,
            //                               blurRadius: 14,
            //                               offset: Offset(0,
            //                                   3), // changes position of shadow
            //                             )
            //                           ]),
            //                     ),
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 1,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             child: Center(
            //               child: Padding(
            //                 padding: const EdgeInsets.all(16.0),
            //                 child: PieChart(
            //                   dataMap: dataMap,
            //                   animationDuration: Duration(milliseconds: 2000),
            //                   chartLegendSpacing: 32,
            //                   chartRadius:
            //                       MediaQuery.of(context).size.width / 0.3,
            //                   initialAngleInDegree: 0,
            //                   chartType: ChartType.ring,
            //                   ringStrokeWidth: 32,
            //                   colorList: [
            //                     Color.fromARGB(255, 149, 153, 156),
            //                     Colors.blueGrey
            //                   ],
            //                   legendOptions: LegendOptions(
            //                     showLegendsInRow: false,
            //                     legendPosition: LegendPosition.bottom,
            //                     showLegends: true,
            //                     legendTextStyle: TextStyle(fontSize: 15),
            //                   ),
            //                   chartValuesOptions: ChartValuesOptions(
            //                     showChartValueBackground: false,
            //                     showChartValues: true,
            //                     showChartValuesInPercentage: false,
            //                     showChartValuesOutside: false,
            //                     decimalPlaces: 1,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(12),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 5,
            //                     blurRadius: 7,
            //                     offset:
            //                         Offset(0, 3), // changes position of shadow
            //                   )
            //                 ]),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 1,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //                 color: Colors.indigo[100],
            //                 borderRadius: BorderRadius.circular(12)),
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 1,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //                 color: Colors.amber[100],
            //                 borderRadius: BorderRadius.circular(12)),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: Expanded(
            //     flex: 1,
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         decoration: BoxDecoration(
            //             color: Colors.amber[100],
            //             borderRadius: BorderRadius.circular(12)),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushNamed(context, '/add_empolyee');
        }
        ,
        label: Row(
          children: [
            Icon(Icons.add),
            Text('Add Employee'),
          ],
        ),
      ),
    );
  }
}