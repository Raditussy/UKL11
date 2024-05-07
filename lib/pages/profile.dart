import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ukl_butuhtukang_xir3/pages/homepage.dart';
import 'package:ukl_butuhtukang_xir3/pages/pfb.dart';
import 'package:ukl_butuhtukang_xir3/pages/transaksi.dart';

void editProfile() {
  // Add logic here to navigate to the edit profile screen or perform other actions
  print('Edit button pressed');
}

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _MyProfileState();
}

class _MyProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 10,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 15,
              ),
              SizedBox(width: 5),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Cari Kebutuhan Servicemu...",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications,
                color: const Color.fromARGB(255, 131, 131, 131)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //PROFILE CONTAINER
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/Prime Ron.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Amba Sipaling Allrole',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'ambataunting@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      ),
                      Text(
                        '+62 813 4335 4120',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: editProfile,
                    child: Text('Edit'),
                  ),
                ],
              ),
            ),
            //TOOLS BOX
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),
            //Ubah Password
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Ubah Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 28,
                    ),
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 20,
            ),
            ProfilButton(icon: Icons.chat, text: 'Ketentuan Layanan'),
            ProfilButton(icon: Icons.privacy_tip, text: 'Kebijakan Privasi'),
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 20,
            ),
            ProfilButton(icon: Icons.call_end_outlined, text: 'Whatsapp Admin'),
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 28,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Keluar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                )),
            //Version Control
            Container(
              color: Color.fromARGB(255, 245, 245, 245),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(child: Text("Version V 1.3.6")),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transaksi()),
                  );
                },
                icon: Icon(Icons.history),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transaksi()),
                  );
                },
                icon: Icon(Icons.store),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transaksi()),
                  );
                },
                icon: Icon(Icons.wallet_outlined),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.person_2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
