import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:app/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion App', style: GoogleFonts.akshar()),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined)))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Profile section
                SizedBox(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        listCustom(
                            "assets/model1.jpeg", "assets/chanellogo.jpg"),
                        listCustom(
                            "assets/model2.jpeg", "assets/louisvuitton.jpg"),
                        listCustom(
                            "assets/model3.jpeg", "assets/chanellogo.jpg"),
                        listCustom(
                            "assets/model1.jpeg", "assets/chanellogo.jpg"),
                        listCustom(
                            "assets/model2.jpeg", "assets/louisvuitton.jpg"),
                        listCustom(
                            "assets/model3.jpeg", "assets/chanellogo.jpg"),
                      ],
                    ),
                  ),
                ),
                // Card section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    // color: Colors.lightGreenAccent.shade100,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/model1.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.70,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Daisy",
                                              style: GoogleFonts.aboreto(
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                "30 min ago",
                                                style: GoogleFonts.aboreto(
                                                    fontSize: 5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 148),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.more_vert)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              " This is a personel fashion page.You wil find the custom design in my app.Enjoy the surfing on my page.Dont forget buy my product",
                              style: GoogleFonts.allan(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Builder(builder: (context) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const DetailPage(
                                          imagePath: "assets/modelgrid1.jpeg",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: "assets/modelgrid1.jpeg",
                                    child: Container(
                                      height: 200,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) -
                                              110,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid1.jpeg"),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                              Column(
                                children: [
                                  Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailPage(
                                                  imagePath:
                                                      "assets/modelgrid2.jpeg"),
                                        ));
                                      },
                                      child: Hero(
                                        tag: "assets/modelgrid2.jpeg",
                                        child: Container(
                                          height: 95,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/modelgrid2.jpeg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                      ),
                                    );
                                  }),
                                  const SizedBox(height: 10),
                                  Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailPage(
                                                    imagePath:
                                                        "assets/modelgrid3.jpeg"),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: "assets/modelgrid3.jpeg",
                                        child: Container(
                                          height: 95,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/modelgrid3.jpeg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " # Pull&Bear",
                                      style: GoogleFonts.allan(
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " # Bershka",
                                      style: GoogleFonts.allan(
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.directions,
                                  color: Colors.brown.withOpacity(0.2),
                                ),
                              ),
                              const SizedBox(width: 3),
                              const Text("1.8k"),
                              const SizedBox(
                                width: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.message_outlined,
                                  color: Colors.brown.withOpacity(0.2),
                                ),
                              ),
                              const SizedBox(width: 3),
                              const Text("345"),
                              const Padding(
                                padding: EdgeInsets.only(left: 85),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("2.3k"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    // color: Colors.lightGreenAccent.shade100,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/model1.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width:
                                  MediaQuery.of(context).size.width * 0.70,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Daisy",
                                              style: GoogleFonts.aboreto(
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                "30 min ago",
                                                style: GoogleFonts.aboreto(
                                                    fontSize: 5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 148),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.more_vert)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              " This is a personel fashion page.You wil find the custom design in my app.Enjoy the surfing on my page.Dont forget buy my product",
                              style: GoogleFonts.allan(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Builder(builder: (context) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const DetailPage(
                                          imagePath: "assets/modelgrid1.jpeg",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: "assets/modelgrid1.jpeg",
                                    child: Container(
                                      height: 200,
                                      width:
                                      (MediaQuery.of(context).size.width -
                                          100) -
                                          110,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid1.jpeg"),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                              Column(
                                children: [
                                  Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                          const DetailPage(
                                              imagePath:
                                              "assets/modelgrid2.jpeg"),
                                        ));
                                      },
                                      child: Hero(
                                        tag: "assets/modelgrid2.jpeg",
                                        child: Container(
                                          height: 95,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.48,
                                          decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/modelgrid2.jpeg"),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                        ),
                                      ),
                                    );
                                  }),
                                  const SizedBox(height: 10),
                                  Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                            const DetailPage(
                                                imagePath:
                                                "assets/modelgrid3.jpeg"),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: "assets/modelgrid3.jpeg",
                                        child: Container(
                                          height: 95,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.48,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/modelgrid3.jpeg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " # Pull&Bear",
                                      style: GoogleFonts.allan(
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " # Bershka",
                                      style: GoogleFonts.allan(
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.directions,
                                  color: Colors.brown.withOpacity(0.2),
                                ),
                              ),
                              const SizedBox(width: 3),
                              const Text("1.8k"),
                              const SizedBox(
                                width: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.message_outlined,
                                  color: Colors.brown.withOpacity(0.2),
                                ),
                              ),
                              const SizedBox(width: 3),
                              const Text("345"),
                              const Padding(
                                padding: EdgeInsets.only(left: 85),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("2.3k"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listCustom(String imagePath, String logoPath) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(logoPath)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.brown.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              "Follow",
              style: GoogleFonts.acme(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
