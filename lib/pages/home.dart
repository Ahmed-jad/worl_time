import 'package:flutter/material.dart';

//import 'loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
   Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    //setting bg images
    String bgImage = data['isDayTime']? 'day.png' : 'night.png';
    Color? bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];
    return Scaffold(
      appBar: AppBar(
        title: Text('World Time'),
        centerTitle: true,
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('Welcome To Global Time App',
                style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded, size: 32, color: Colors.blue,),
              title: Text('About',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue[700]),),
              onTap: () {
                // Update the state of the app
               // Navigator.pushReplacementNamed(context, '/about');
                // Then close the drawer
                //Navigator.pop(context, '/about');
                 Navigator.popAndPushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail_sharp, size: 32, color: Colors.blue,),
              title: Text('Contact',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue[700]),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.popAndPushNamed(context, '/contact_me');
              },
            ),
          ],
        ),
      ),


      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 120),
            child: Column(
              children: [
                TextButton.icon(
              onPressed:() async{
                dynamic result = await Navigator.pushNamed(context, '/location');
                setState(() {
                  data ={
                    'time': result['time'],
                    'location': result['location'],
                    'isDayTime': result['isDayTime'],
                    'flag': result['flag'],
                  };
                });
              },
              icon: Icon(Icons.edit_location, color: Colors.grey[200],),
              label: Text('Edit LOcation',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
