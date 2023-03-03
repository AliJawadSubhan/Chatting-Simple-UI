import 'package:flutter/material.dart';
import 'package:stful_wid/widgets/active_chats.dart';
import 'package:stful_wid/widgets/recent_chats.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = 'Hello WORLD';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    message = 'Choclate World';
  }

  @override
  Widget build(BuildContext context) {
    print("build method called");

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Icon(Icons.notification_add),
          ),
        ],
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: Text(
              'Messages',
              style: TextStyle(
                  color: Color(0xFF113953),
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF113953),
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          ActiveChats(),
          RecentChats(),
          // Expanded(
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: 5,
          //       itemBuilder: (context, index) {
          //         return const Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
          //           child: CircleAvatar(
          //             radius: 50,
          //             backgroundColor: Color(0xFF113953),
          //           ),
          //         );
          //       }),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: 5,
          //       itemBuilder: (context, index) {
          //         return Container(
          //           margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
          //           height: 150,
          //           // width: MediaQuery.of(context).size.width,
          //           color: Color(0xFF113953),
          //         );
          //       }),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF113953),
        child: Icon(Icons.messenger),
      ),
    );
  }
}
