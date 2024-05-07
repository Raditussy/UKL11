import 'package:flutter/material.dart';
import 'package:ukl_butuhtukang_xir3/pages/homepage.dart';
import 'package:ukl_butuhtukang_xir3/pages/order.dart';
import 'package:ukl_butuhtukang_xir3/pages/profile.dart';
import 'package:ukl_butuhtukang_xir3/pages/transaksi.dart';
import 'package:ukl_butuhtukang_xir3/theme.dart';

class Transaksi extends StatelessWidget {
  Transaksi({Key? key});

  final List<Order> orders = [
    Order(
      name: 'Didit Tekhnik',
      tanggal: '26/04/2023',
      jam: '06.29',
      pt: 'Wijaya Karya',
      status: 'Menunggu konfirmasi',
      image: 'assets/images/Prime devun.jpg',
    ),
    Order(
      name: 'Danish Jaya Teknik',
      tanggal: '26/04/2023',
      jam: '06.29',
      pt: 'Danish Jaya teknik',
      status: 'Menunggu konfirmasi',
      image: 'assets/images/Prime devun.jpg',
    ),
    Order(
      name: 'Free Kuota',
      tanggal: '26/04/2023',
      jam: '06.25',
      pt: '',
      status: 'Menunggu konfirmasi',
      image: 'assets/images/Prime devun.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 16),
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final item = orders[index];
            return InkWell(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            item.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item.name}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text('${item.tanggal} '),
                                Text(' |  ${item.jam}'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${item.pt}  |',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  '  ${item.status}',
                                  style:
                                      TextStyle(color: Colors.deepOrangeAccent),
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
            );
          },
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
