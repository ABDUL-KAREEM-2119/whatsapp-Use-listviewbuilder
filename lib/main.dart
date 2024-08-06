import 'package:flutter/material.dart';
import 'package:listview_whtsap_1/secondpage.dart';
import 'package:listview_whtsap_1/test_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double height, width;
  PageController kareem = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: height,
                width: width,
                color: Colors.amber,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: kareem,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  children: [
                    Container(
                      height: height,
                      width: width,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.0),
                                Text(
                                  "WhatsApp",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(width: 255),
                                const Icon(Icons.camera_alt),
                                const Icon(Icons.more_vert),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 38,
                              width: width * 0.97,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: const Text("    Search Name"),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: Modeltest.mylist.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 90,
                                  color: Modeltest.mylist[index].color,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                                        child: Container(
                                          height: 45,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(Modeltest.mylist[index].img!),
                                            ),
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: height * 0.023),
                                            Text(
                                              Modeltest.mylist[index].name ?? "",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(Modeltest.mylist[index].msg ?? ""),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10, top: 18),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("     10:00 PM"),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 25, left: 30),
                                              child: Container(
                                                height: 20,
                                                width: 19,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green,
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "2",
                                                    style: TextStyle(color: Colors.white),
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
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                
                                  Text(
                                    "Updates",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 225),
                                  const Icon(Icons.camera_alt),
                                  const Icon(Icons.search),
                                  const Icon(Icons.more_vert),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.02,),
                            Text("Status",style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        
                            Expanded(
                              child: ListView.builder(
                                itemCount: Second.mylist.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: height * 0.1,
                                    width: width,
                                    color: Second.mylist[index].color,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * 0.1,
                                          width: width * 0.1,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(Second.mylist[index].img!),
                                            ),
                                            color: Colors.green,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: height*0.013,),
                                                Text(
                                                  Second.mylist[index].name!,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  Second.mylist[index].msg!,
                                                  
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.08,
              width: width,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        kareem.jumpToPage(0);
                      },
                      child: Column(
                        children: [
                          Icon(Icons.chat,
                              color: index == 0 ? Colors.white : Colors.black),
                          Text("Chats"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        kareem.jumpToPage(1);
                      },
                      child: Column(
                        children: [
                          Icon(Icons.update,
                              color: index == 1 ? Colors.white : Colors.black),
                          Text("Updates"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        kareem.jumpToPage(2);
                      },
                      child: Column(
                        children: [
                          Icon(Icons.diversity_1,
                              color: index == 2 ? Colors.white : Colors.black),
                          Text("Community"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        kareem.jumpToPage(3);
                      },
                      child: Column(
                        children: [
                          Icon(Icons.call,
                              color: index == 3 ? 
                              Colors.white : 
                              Colors.black),
                              Text("Calls"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
