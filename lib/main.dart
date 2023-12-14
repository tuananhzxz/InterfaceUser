import 'package:flutter/material.dart';
import 'package:interfaceuser/Button/editbutton.dart';
import 'package:interfaceuser/Values/app_color.dart';
import 'package:interfaceuser/Values/app_font.dart';
import 'package:interfaceuser/Values/app_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Interface(),
    );
  }
}

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {

  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: !isChange ? MyColor.BackgroundColor : MyColor.backgroundColorDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 77,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(MyImages.imageAvatar),
                ),
              ),

              Card(
                color: const Color.fromARGB(255, 241, 233, 164),
                margin: const EdgeInsets.all(20),
                child: ListTile(
                  title: const Text("Name : Do Tuan Anh"),
                  leading: const Icon(Icons.account_box),
                  subtitle: const Text("Hello,I'm dev"),
                  titleTextStyle: MyFont.h5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                
                ),
              ),

              ListTile(
                title: const Text("Age : 20"),
                leading: const Icon(Icons.account_balance),
                titleTextStyle: MyFont.h6,
              ),

               ListTile(
                title: const Text("Email : tuananhleonat@gmail.com"),
                leading: const Icon(Icons.email),
                titleTextStyle: MyFont.h6,
              ),

               ListTile(
                title: const Text("Phone : 03440290123"),
                leading: const Icon(Icons.phone),
                titleTextStyle: MyFont.h6,
              ),
               ListTile(
                title: const Text("Job : Student"),
                leading: const Icon(Icons.school),
                titleTextStyle: MyFont.h6,
              ),
              
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                
                children: [
                  Button(press: () { _showMyDialog(); }, text: "Wave"),
                  const SizedBox(width: 90),
                  Switch(
                    value: isChange , 
                    
                    onChanged: (bool value) {
                        setState(() {
                          isChange = !isChange;
                        });
                    },
                  ),
                ],
              ),
            )

            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Hello my friend"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget> [
                Text("What are you doing?"),
                Text("Wish you had a lucky day"),
              ],
            ),
          ),

          actions: <Widget>[
            Button(
              press: (){
                Navigator.of(context).pop();
              }, 
              text: "OK")
          ],
        );
      },
    );
  }
}