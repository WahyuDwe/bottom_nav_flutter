import 'package:btm_navigation_with_fab/pages/dashboard/card_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'list_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Amikom One',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          debugPrint('Refresh');
        },
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  alignment: Alignment.center,
                  height: 110,
                  child: const CardDashboard(),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10.0, 14.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Jadwal Kuliah',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          // fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: ListCard(),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10.0, 14.0, 0.0, 0.0),
                  child: const Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),

                GridView.count(
                    shrinkWrap: true,
                    childAspectRatio: 1.2,
                    crossAxisCount: 3,
                    primary: false,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_khs.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Hasil Studi'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_schedule.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Jadwal'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_transcript.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Transkrip'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_library.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Perpustakaan'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_payment.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Pembayaran'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_ktm.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('KTM'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/ic_support.svg',
                          ),
                          const SizedBox(height: 10.0),
                          const Text('Support'),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
        ),
      ),
    );
  }
}
