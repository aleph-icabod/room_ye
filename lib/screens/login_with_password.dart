import 'package:flutter/material.dart';

class LoginWithPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: Colors.deepPurpleAccent,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png"),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: TextField(
                            decoration: createInputDecoration(context, "Nombre de usuario", Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: TextField(
                            decoration: createInputDecoration(context, "Contraseña", Icons.lock_open),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 300,
                          height: 60,
                          child: TextButton(
                              onPressed: () {},
                              child: Text("¿Olvidaste tu contraseña?")),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text("Continuar"),
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
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration createInputDecoration(BuildContext context, String text, IconData icon){

    return InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(icon),
        contentPadding: EdgeInsets.all(20),
        hintText: text,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 20,
        )
    );
  }
}
