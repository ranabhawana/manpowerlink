import 'package:flutter/material.dart';
import 'package:manpower/Dashboard/DashBoardItem/DecoratedBox.dart';
import 'package:manpower/Dashboard/DashBoardItem/Workerslist.dart';
import 'package:manpower/appsettings/theme.dart';

class ManPower extends StatefulWidget {
  @override
  _ManpowerState createState() => _ManpowerState();
}

class _ManpowerState extends State<ManPower> {
  List<ListType> manpowers = [
    new ListType("General Worker", "Total(20)", Icons.people),
    new ListType("Domestic Worker", "Total(5)", Icons.people),
    new ListType("Accountant", "Total(10)", Icons.people),
    new ListType("Security Guard", "Total(15)", Icons.people),
    new ListType("Waiter", "Total(30)", Icons.people),
    new ListType("Office Boy", "Total(10)", Icons.people),
    new ListType("Labourer", "Total(6)", Icons.people),
    new ListType("Painter", "Total(20)", Icons.people),
    new ListType("Beautician", "Total(20)", Icons.people),
    new ListType("Sales Girl", "Total(20)", Icons.people),
    new ListType("Driver", "Total(20)", Icons.people),
    new ListType("Store Keeper", "Total(20)", Icons.people),
    new ListType("Welder", "Total(20)", Icons.people),
    new ListType("Bartender", "Total(20)", Icons.people),
    new ListType("Plumber", "Total(20)", Icons.people),
    new ListType("Sales Boy", "Total(20)", Icons.people),
    new ListType("Electrician", "Total(20)", Icons.people),
    new ListType("Mechanic", "Total(20)", Icons.people),
    new ListType("Carpenter", "Total(20)", Icons.people),
    new ListType("Nurse", "Total(20)", Icons.people),
    new ListType("Cook", "Total(20)", Icons.people),
    new ListType("Cleaner", "Total(20)", Icons.people),
    new ListType("Gypsum Fitter", "Total(20)", Icons.people),
    new ListType("Mason", "Total(20)", Icons.people),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: GridView.builder(
          physics: ScrollPhysics(),
            itemCount: manpowers.length,
           // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: 3.0,
               mainAxisSpacing: 8.0,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return buildItem(index);
            }),
      ),
    );
  }

  Widget buildItem(int index) {
  
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => new WorkerList(todo: manpowers[index])

        
        ),
        );

      },
          child: Card(
        child: Container(
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Center(
                child: Row(
                  children: [
                    DecoratedboxProfileIcon(iconData: manpowers[index].iconData),
                    SizedBox(width: 8),
                    Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(manpowers[index].workerTitle,
                      style: AppTheme.title
                      
                      ),
                      SizedBox(height: 3),
                      Text
                      (manpowers[index].total,
                      style: AppTheme.title2),
                    ],)
                  ],
                ),
              )
          ],
        
            )),
      ),
    );
  }
}

class ListType {
  String workerTitle, total;
  IconData iconData;

  ListType(this.workerTitle, this.total, this.iconData);
}
