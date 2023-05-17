import 'package:flutter/material.dart';
import 'package:room_ye/config/constants.dart';
import 'package:room_ye/models/publication_model.dart';

class PublicationCard extends StatelessWidget {

  final PublicationModel publication;

  const PublicationCard({super.key, required this.publication});


  @override
  Widget build(BuildContext context) {

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
                    backgroundImage: NetworkImage(publication.avatar),
                  ),
                  SizedBox(width: 20,),
                  Text(publication.owner,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                        color:Theme.of(context).colorScheme.surfaceVariant,
                    ))
                ],
              ),
              Flexible(
                child:Text(publication.content,
                style: TextStyle(
                  color:Theme.of(context).colorScheme.surfaceVariant,
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${publication.createdAt.year}-${publication.createdAt.month}-${publication.createdAt.day}",style: TextStyle(
                    color:Theme.of(context).colorScheme.surfaceVariant,
                    overflow: TextOverflow.ellipsis,
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
