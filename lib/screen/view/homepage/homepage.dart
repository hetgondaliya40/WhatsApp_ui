import 'package:flutter/material.dart';

import 'listhome.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
          ),
          backgroundColor: Color(0xff1b5e54),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: IndexedStack(
          index: index,
          children: [
            SingleChildScrollView(
              //chats
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1b5e54),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                          GestureDetector(
                            onTap: () {
                              index = 0;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: (index == 0)
                                        ? Colors.white
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: Text(
                                "CHATS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              index = 1;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: (index == 1)
                                          ? Colors.white
                                          : Colors.transparent),
                                ),
                              ),
                              child: Text(
                                "STATUS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              index = 2;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: (index == 2)
                                        ? Colors.white
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: Text(
                                "CALLS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ...whatsapp.map(
                    (e) => ListTile(
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(e['img']),
                      ),
                      title: Text(e['name']),
                      subtitle: Text(e['sub']),
                      trailing: Text(e['time']),
                    ),
                  ),
                ],
              ),
            ),
            //status
            Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff1b5e54),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 0;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Text(
                              "CHATS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 1;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: (index == 1)
                                        ? Colors.white
                                        : Colors.transparent),
                              ),
                            ),
                            child: Text(
                              "STATUS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 2;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: (index == 2)
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Text(
                              "CALLS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/132036737?v=4"),
                  ),
                  title: Text(
                    "My Status ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text("Tap to Add status updates"),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: Color(0xffe0e0e0),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Muted updates",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_sharp),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                ...whatsappstatus.map(
                  (e) => ListTile(
                    leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(e['img']),
                    ),
                    title: Text(e['name']),
                    subtitle: Text(e['sub']),
                  ),
                ),
              ],
            ),
            //calls
            Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff1b5e54),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 0;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Text(
                              "CHATS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 1;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: (index == 1)
                                        ? Colors.white
                                        : Colors.transparent),
                              ),
                            ),
                            child: Text(
                              "STATUS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            index = 2;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: (index == 2)
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            child: Text(
                              "CALLS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ...calls.map(
                  (e) => ListTile(
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/132036737?v=4"),
                      ),
                      title: Text(
                        e['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      subtitle: Row(
                        children: [
                          e['icon2'],
                          Text(e['sub']),
                        ],
                      ),
                      trailing: e['icon']),
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff1b5e54),
          child: Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.grey,
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
