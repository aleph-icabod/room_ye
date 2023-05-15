import 'package:flutter/material.dart';
import 'package:room_ye/components/copyright.dart';
import 'package:room_ye/components/fullwidth_button.dart';
import 'package:room_ye/components/fullwidth_wrapper.dart';
import 'package:room_ye/components/text_input.dart';
import 'package:room_ye/config/constants.dart';
import 'package:room_ye/screens/my_home_page.dart';

class LoginWithPassword extends StatefulWidget {
  @override
  State<LoginWithPassword> createState() => _LoginWithPasswordState();
}

class _LoginWithPasswordState extends State<LoginWithPassword> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  late String errorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text("Room Ye"),
        centerTitle: true,
      ),
      body: Container(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: UIConstants.paddingBetweenComponents),
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage:
                                  AssetImage("assets/images/avatar.png"),
                            ),
                          ),
                          TextInput(
                            icon: Icons.person,
                            label: "Nombre de usuario",
                            controller: usernameController,
                          ),
                          TextInput(
                            label: "Contraseña",
                            controller: passwordController,
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                            icon: Icons.lock,
                          ),
                          if (errorText.isNotEmpty)
                            Text(
                              errorText,
                              style:  TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          FullWidthWrapper(
                            child: TextButton(
                                onPressed: () {},
                                child: const Text("¿Olvidaste tu contraseña?")),
                          ),
                          FullWidthButton(
                              onPressed: () {
                                validateAndLogin(context);
                              },
                              child: const Text("Continuar")),
                        ],
                      ),
                      const CopyRight(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void validateAndLogin(BuildContext context) {
    final username = usernameController.value.text;
    final password = passwordController.value.text;
    if (username == "miguel" && password == "12345") {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "title"),
        ),
      );
    } else {
      setState(() {
        errorText = "Contraseña incorrecta";
      });
    }
  }
}
