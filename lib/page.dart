import 'package:flutter/material.dart';

class SPage extends StatefulWidget {
  const SPage({super.key});

  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    String emailAddress;
    String password;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30.0, left: 20, right: 20),
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/app_launcher_icon.png',
                height: 80,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Embrace Sustainable Living',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login to access your account below',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
            cursorColor: Colors.red,
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                fillColor: Color(0xffffffff),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0x00000000), width: 1.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0x00000000), width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0x00000000), width: 1.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0x00000000), width: 1.0),
                ),
                contentPadding: EdgeInsets.only(top: 20, left: 15, right: 15)),
            onChanged: (value) {
              // Store the entered email address in the 'emailAddress' variable
              setState(() {
                emailAddress = value;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                  obscureText: isHide,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                      ),
                      labelText: 'Email',
                      hintText: 'Enter your baby email',
                      fillColor: Color(0xffffffff),
                      filled: true,
                      border: const OutlineInputBorder(
borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0x00000000), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0x00000000), width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0x00000000), width: 1.0),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 20, left: 15, right: 15)),
                  onChanged: (value) {
                    // Store the entered email address in the 'emailAddress' variable
                    setState(() {
                      emailAddress = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
