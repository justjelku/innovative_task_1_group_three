import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_three/users.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController tabController;

  List mae = [
    User(
      name: 'Julindo Salazar',
      relationship: 'Father',
      age: 56,
      birthday: 'July 20, 1966',
      occupation: 'N/A',
      icon: 'assets/julindo.jpeg',
    ),
    User(name: 'Churchill Salazar',
      relationship: 'Mother',
      age: 45,
      birthday: 'October 15, 1977',
      occupation: 'Government Employee',
      icon: 'assets/churchill.jpeg',
    ),
    User(name: 'Jay-Ar Salazar',
      relationship: 'Oldest Brother',
      age: 24,
      birthday: 'February 19, 1998',
      occupation: 'N/A',
      icon: 'assets/jay.jpeg',
    ),
    User(name: 'Queenie Sozaila Salazar',
      relationship: 'Oldest Sister',
      age: 22,
      birthday: 'March 23, 2000',
      occupation: 'Student',
      icon: 'assets/queenie.jpeg',
    ),
    User(name: 'Princess Mae Salazar',
      relationship: 'Me',
      age: 21,
      birthday: 'May 19, 2001',
      occupation: 'Student',
      icon: 'assets/mae.jpeg',
    ),
    User(name: 'Julius Salazar',
      relationship: 'Youngest Brother',
      age: 12,
      birthday: 'September 4,2010',
      occupation: 'Pupil',
      icon: 'assets/julius.jpeg',
    ),
    User(name: 'Juliana Salazar',
      relationship: 'Youngest Sister',
      age: 7,
      birthday: 'July 27, 2015',
      occupation: 'Pupil',
      icon: 'assets/juliana.jpeg',
    ),
  ];

  @override
  void initState(){
    tabController = TabController(
        length: 6,
        vsync: this
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.centerRight,
          ),
          title: Row(
              children: const [
                Expanded(
                    child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          'Innovative Task #',
                          style: TextStyle(
                              fontSize: 20,
                              ),
                        ),
                        subtitle: Text(
                          'Group 3',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                    )
                )
              ],
          ),
          bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            labelPadding: const EdgeInsets.symmetric(
                horizontal: 10.0
            ),
            tabs: const [
              Tab(
                  child: Text(
                    'Princess Mae Salazar',
                  )
              ),
            ],
          ),
        ),
      body: TabBarView(
        controller: tabController,
        children: [
        ],
      ),
    );
  }
}