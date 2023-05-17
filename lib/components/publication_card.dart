import 'package:flutter/material.dart';
import 'package:room_ye/config/constants.dart';

class PublicationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle=TextStyle(
      color: Colors.white,
    );

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: UIConstants.cardWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  SizedBox(width: 20,),
                  Text("Maria robles",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                        color:Theme.of(context).colorScheme.surfaceVariant,
                    ))
                ],
              ),
              Flexible(
                child:Text("Rento departamento ubicación centrica, precio a tratar. Más info DM.",
                style: TextStyle(
                  color:Theme.of(context).colorScheme.surfaceVariant,
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hace 1 hora",style: TextStyle(
                    color:Theme.of(context).colorScheme.surfaceVariant,
                  ),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color:Theme.of(context).colorScheme.surfaceVariant, )),
                  IconButton(onPressed: (){}, icon: Icon(Icons.push_pin, color:Theme.of(context).colorScheme.surfaceVariant,)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
