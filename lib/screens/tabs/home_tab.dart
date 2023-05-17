import 'package:flutter/material.dart';
import 'package:room_ye/config/constants.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
    required this.homeTabKey,
  });

  final GlobalKey homeTabKey;
  @override
  State<HomeTab> createState() => _HomeTabState(homeTabKey);
}

class _HomeTabState extends State<HomeTab> {
  final GlobalKey homeTabKey;

  _HomeTabState(this.homeTabKey);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Navigator(
        key: homeTabKey,
        initialRoute: "/",
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;

          switch (settings.name) {
            case "/":
              builder = (BuildContext c) => const _FeedPage();
              break;
            case "/details":
              final args = settings.arguments as Map<String, dynamic>;
              final int id = args["id"];
              builder = (BuildContext c) => _FeedDetails(
                    publicationID: id,
                  );
              break;
            default:
              builder = (BuildContext c) => const _FeedPage();
              break;
          }

          return MaterialPageRoute(builder: builder);
        },
      ),
    );
  }
}

class _FeedPage extends StatelessWidget {
  const _FeedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hola, Miguel!",
                style: Theme.of(context).textTheme.headlineLarge),
            Text(
              "Ten un buen dia!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: UIConstants.paddingBetweenComponents,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton.icon(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline),
                  label: Text("Crear Nuevo"),
                ),
                FilledButton.icon(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  label: Text("Crear Nuevo"),
                ),
              ],
            ),
            SizedBox(
              height: UIConstants.paddingBetweenComponents,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Publicaciones"),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Anuncios"),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Eventos"),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context, rootNavigator: false)
                                .pushNamed("/details",
                                    arguments: {"id": index});
                          },
                          child: Card(
                            child: Container(
                              width: 300,
                              color: Colors.deepPurpleAccent,
                              child: Text('Entry ${index}'),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FeedDetails extends StatelessWidget {
  final int publicationID;

  const _FeedDetails({
    super.key,
    required this.publicationID,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text("Details $publicationID"),
      ),
    );
  }
}
