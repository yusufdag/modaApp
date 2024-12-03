import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // Başladığın işi bitir initState <-> dispose
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda Uygulaması',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          //Üst taraftaki profil listesi
          SizedBox( //SizedBox
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(width: 30),
              ],
            ),
          ),

          //Card > Container aç Material ile sarmala
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 7,
              //color: Colors.blue.shade300,
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 470,
                width: double.infinity,
                // Card Start
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox( //SizedBox
                          width: MediaQuery.of(context).size.width - 160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is redommended to friends',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Card içindeki resimler
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: 'assets/modelgrid1.jpeg'),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              // Büyük resim
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid2.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  // Küçük resim üst
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid3.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  // Küçük resim alt
                                  height: 95,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) /
                                          2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Etiketler
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Lousi Vuitton',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 10),
                    // Cardın en alt tarafı beğeni, paylaş, yorum
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.brown.withOpacity(0.2),
                          size: 27,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '1.7k',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 30),
                        Icon(
                          Icons.comment_sharp,
                          color: Colors.brown.withOpacity(0.2),
                          size: 27,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '325',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        // Beğeni kısmı
                        SizedBox( //SizedBox
                          width: MediaQuery.of(context).size.width - 215,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 27,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.grey,
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.black,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //Positined() > Container ın pozisyonunu ayarlar
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown,
            ),
            child: const Center(
              child: Text(
                'Follow',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
