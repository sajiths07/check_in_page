import 'package:flutter/material.dart';



class WorkCheckingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Work Checking'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
               Text(
                    'April 16, 2024',
                    style: TextStyle(fontSize: 18),
                  ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => WorkCheckingPage()),
                          (route) => false,
                    );                                    },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(30),
                    primary: Colors.green,
                  ),
                  child: Icon(
                    Icons.touch_app_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: (){},
                  icon: Icon (Icons.location_on_sharp),
                  label: Text(
                    'Kerala,India',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Shift1',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time,color: Colors.green,),
                    SizedBox(width: 10),
                    Text(
                      '09:00 AM',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Check in',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.access_time,color: Colors.red,),
                    SizedBox(width: 10),
                    Text(
                      '05:00 PM',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Check out',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
