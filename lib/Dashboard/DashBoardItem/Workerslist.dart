import 'package:flutter/material.dart';
import 'package:manpower/Dashboard/DashBoardItem/ProfilePicture.dart';
import 'package:manpower/Dashboard/DashBoardItem/manPowers.dart';
import 'package:manpower/appsettings/theme.dart';

class WorkerList extends StatefulWidget {
  final ListType todo;
  WorkerList({Key key, @required this.todo}) : super(key: key);
  @override
  _WrokerListState createState() => _WrokerListState();
}

String formatDateTime(DateTime dateTime) {
  return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
}

class _WrokerListState extends State<WorkerList> {
  List<WorkerDetail> details = [
    new WorkerDetail("Man Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Gopal Mirinching", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Jeevan Rai", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Maya Ghale", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Louis Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Tom Riddle", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Sudip Poudel", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Sudip Rana", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Bhim Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Sonu autam", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Man Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Man Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
    new WorkerDetail("Man Gurung", "Male", "Experienced", "Nepal",
        "repair, maintain, team work", Icons.person, DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.appbar1,
          title: Text(widget.todo.workerTitle),
        ),
        body: Container(
            color: Colors.grey[200],
            child: ListView.builder(
                itemCount: details.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return buildCard(index);
                })));
  }

  Widget buildCard(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/Register');
        },
        child: Card(
          child: Container(
              height: MediaQuery.of(context).size.height / 6.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      ProfilePicture(
                        iconData: details[index].iconData,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              details[index].name,
                              style: AppTheme.blacktext,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Icon(Icons.person_outline),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    details[index].gender,
                                    style: AppTheme.blacktitle2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Icon(
                                    Icons.location_on,
                                    color: AppColors.appbar1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(details[index].address),
                                ),
                              ],
                            ),
                            Text(
                                'Date of birth: ${formatDateTime(details[index].dateofbirth)}'),
                            Text(
                              details[index].experience,
                              style: AppTheme.neontext,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Skills:-' + ' ' + details[index].skills,
                                style: AppTheme.title2,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class WorkerDetail {
  String name, gender, experience, address, skills;
  IconData iconData;
  DateTime dateofbirth;
  WorkerDetail(this.name, this.gender, this.experience, this.address,
      this.skills, this.iconData, this.dateofbirth);
}
