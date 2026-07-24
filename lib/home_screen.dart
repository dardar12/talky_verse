import 'package:flutter/material.dart';
import 'package:talky_verse/call_screen.dart';

class HomeScreen extends StatefulWidget {
 const  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController callController = TextEditingController();

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    callController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text(
          'Welcome to Talky Verse',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/pngs/img_home.png",
                height: 550,
                width: double.infinity,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextField(style: TextStyle(fontWeight: FontWeight.w700),
                    controller: callController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText:'Enter Meeting ID',hintStyle: TextStyle(fontWeight: FontWeight.w400)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 4, right: 20, left: 20),
                child: SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 84, 171, 242),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CallScreen(callID: callController.text)));
                    },
                    child: const Text(
                      "Join Call",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
