import 'package:flutter/material.dart';

class ActiveChats extends StatelessWidget {
  const ActiveChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 4),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < 7; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset('images/user.jpg')),
                ),
              )
          ],
        ),
      ),
    );
  }
}
