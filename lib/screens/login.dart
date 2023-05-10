import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print(Theme.of(context).colorScheme.primary);
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "RoomYe",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Iniciar Sesión"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Registrar"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text("Continuar con"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apple),
                              Icon(Icons.facebook),
                              Icon(Icons.g_translate),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RoomYe 2023",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.copyright, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
