import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:room_ye/components/copyright.dart';
import 'package:room_ye/components/fullwidth_button.dart';
import 'package:room_ye/components/text_input.dart';
import 'package:room_ye/screens/login_with_password.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.primary,
          width: double.infinity,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "RoomYe",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                    fontSize: 40,
                  ),
                ),
                Column(
                  children: [
                    FullWidthButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginWithPassword(),
                          ),
                        );
                      },
                      customStyle: ElevatedButton.styleFrom(),
                      child: const Text("Iniciar Sesión"),
                    ),
                    FullWidthButton(
                      onPressed: () {},
                      customStyle: ElevatedButton.styleFrom(),
                      child: const Text("Registrar"),
                    ),
                    FullWidthButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          const Text("Continuar con"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.apple,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 10,),
                              FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const CopyRight(),
              ],
            ),
          )),
    );
  }
}
