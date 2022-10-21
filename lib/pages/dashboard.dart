import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          debugPrint('Refresh');
        },
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  alignment: Alignment.center,
                  height: 110,
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Halo, Wahyu Dwi Hartarto',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '20.11.3356',
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 10.0,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile.jpg',
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
