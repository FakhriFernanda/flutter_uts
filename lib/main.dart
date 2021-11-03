import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanUtama(),
    routes: <String, WidgetBuilder>{
      'HalamanUtama': (BuildContext context) => new HalamanUtama(),
      'HalamanProfile': (BuildContext context) => new HalamanProfile(),
      'HalamanAlamat': (BuildContext context) => new HalamanAlamat(),
      'HalamanEmail': (BuildContext context) => new HalamanEmail(),
      'HalamanKontak': (BuildContext context) => new HalamanKontak(),
    },
  ));
}

class HalamanUtama extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Halaman Utama"),
      ),
      backgroundColor: Colors.teal,
      body: new Container(
        child: new ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HalamanProfile');
              },
              child: Card(
                elevation: 10,
                color: Colors.teal,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HalamanAlamat');
              },
              child: Card(
                elevation: 10,
                color: Colors.teal,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Text(
                      'Alamat',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HalamanEmail');
              },
              child: Card(
                elevation: 10,
                color: Colors.teal,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKontak');
              },
              child: Card(
                elevation: 10,
                color: Colors.teal,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Text(
                      'Kontak',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: new AppBar(
//           backgroundColor: Colors.teal,
//           title: new Text("Profile"),
//         ),
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             children: [
//               CircleAvatar(
//                 radius: 75.0,
//                 backgroundImage: AssetImage('assets/img/Fakhri.jpg'),
//               ),
//               Text(
//                 'Muhammad Fakhri Fernanda',
//                 style: TextStyle(
//                   fontFamily: 'Hikou Regular',
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//               Text(
//                 'Mahasiswa',
//                 style: TextStyle(
//                   fontSize: 18,
//                   letterSpacing: 2.5,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//                 width: 150,
//                 child: Divider(
//                   color: Colors.teal,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Profile"),
      ),
      body: Container(
          color: Colors.teal,
          child: ListView(children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/img/Fakhri.jpg'),
            ),
            Text(
              'Muhammad Fakhri Fernanda',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Hikou Regular',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              'Mahasiswa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.5,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}

class HalamanAlamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Alamat"),
      ),
      body: Container(
          color: Colors.teal,
          child: ListView(children: [
            Icon(
              Icons.pin_drop,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Jl.Krisna Komp.Barata Sungai Ulin Banjarbaru Utara',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Hikou Regular',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}

class HalamanEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Email"),
      ),
      body: Container(
          color: Colors.teal,
          child: ListView(children: [
            Icon(
              Icons.mail,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'fakhrifernanda@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Hikou Regular',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}

class HalamanKontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Kontak"),
      ),
      body: Container(
          color: Colors.teal,
          child: ListView(children: [
            Icon(
              Icons.phone,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '0812 5181 9893',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Hikou Regular',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}
