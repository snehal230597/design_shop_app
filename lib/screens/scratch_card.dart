import 'package:flutter/material.dart';

class ScratchCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    "https://lh3.googleusercontent.com/W6Ql9LRa9mRZwioCssI-gSmodJhik9235kB4Y8NXnMmv_i6T4IMyipALUpuQCKH_k1c"));
          },
        ),
      ),
    );
  }
}
