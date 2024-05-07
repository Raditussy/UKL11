import 'package:flutter/material.dart';
import 'package:ukl_butuhtukang_xir3/pages/Jasa.dart';
import 'package:ukl_butuhtukang_xir3/pages/artikel.dart';
import 'package:ukl_butuhtukang_xir3/pages/menu.dart';
import 'package:ukl_butuhtukang_xir3/pages/profile.dart';
import 'package:ukl_butuhtukang_xir3/pages/transaksi.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
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
        child: Center(
          child: Column(
            children: [
              const TopMenu(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Lokasi Saya",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 8),
                          Text("Kedungkandang, Kota Malang")
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.grey, size: 35)
                    ],
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 10))
                    ],
                    // border: Border.all(color: Colors.grey, width: 3)
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  //SET THE HEIGHT
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Aligns the children vertically centered
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Aligns the children horizontally centered
                      children: [
                        Text(
                          "Kategori Jasa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Temukan kebutuhan servismu dibawah ini sesuai yang kamu butuhkan",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/AC.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service AC',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/file (4).png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Cat',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/CCtv.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service CCTV',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/file (5).png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Bangunan',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/file (6).png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Derek',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                //SET THE HEIGHT
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Penyedia Jasa Terdekat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 18),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContainerCard(
                            placeName: 'JASA PEMBERSIH',
                            address: 'Jalan Raya Rongawi No 69 Jawa Timur',
                          ),
                          ContainerCard(
                            placeName: 'TOKO MAINAN',
                            address: 'Jalan Danau Ranau No 10 Jawa Barat',
                          ),
                          ContainerCard(
                            placeName: 'TOKO PLASTIK',
                            address: 'Jalan Kenanga No 5 Bandung',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                //SET THE WIDTH
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artikel Terbaru",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 18),
                    Column(
                      children: [
                        ArticleCard(
                          imagePath: 'assets/images/1.png',
                          title: 'Update Aplikasi perlu Tukang',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ArticleCard(
                          imagePath: 'assets/images/2.png',
                          title: 'Update Aplikasi Perlu Tukang',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ArticleCard(
                          imagePath: 'assets/images/3.png',
                          title: 'Im Only Human After All',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
