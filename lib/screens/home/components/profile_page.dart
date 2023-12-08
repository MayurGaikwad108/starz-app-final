import 'package:flutter/material.dart';
//import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:starz/screens/auth/login/login_page.dart';
import 'package:starz/screens/auth/wabaid_controller.dart';
import 'package:starz/screens/privacy&policy/privacy_and_policy.dart';
import 'package:starz/controllers/theme_controller.dart';
import 'package:provider/provider.dart';

//He
/*class ProfileScreen extends StatelessWidget {
  static const id = "/profile_page";

  const ProfileScreen({super.key});
  //MediaQueryData mediaQueryData = MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    WABAIDController wabaidController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: 20,
          ),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ListView(children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor:
                            const Color.fromARGB(255, 202, 181, 240),
                        child: CircleAvatar(
                          radius: 48,
                          child: SvgPicture.asset(
                            "assets/person.svg",
                            fit: BoxFit.contain,
                            color: const Color.fromARGB(255, 37, 30, 30),
                            height: 54,
                            width: 54,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //children: [
                          FutureBuilder<String>(
                            future:
                                Future.value(wabaidController.enteredWABAID),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text(
                                    'Error loading WABAID: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final enteredWABAID = snapshot.data!;
                                return Text(
                                  "ID:$enteredWABAID",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else {
                                return const Text('No WABAID found');
                              }
                            },
                          ),
                          //],
                          //),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ]),
          )),
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 61, 163, 247),
                          Color.fromARGB(255, 21, 94, 153),
                          Colors.purple
                        ]),
                    //color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: ListView(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        "Theme",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(PrivacyAndPolicyPage.id);
                      },
                      leading: const Icon(
                        (Icons.info_outline),
                      ),
                      title: const Text(
                        "About us",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(LoginPage.id);
                      },
                      leading: const Icon(Icons.logout_outlined),
                      title: const Text(
                        "logout",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]
                      //).toList(),
                      ),
                )),
          ),
        ],
      )),
    );
  }
}*/

//Me
class ProfileScreen extends StatefulWidget {
  static const id = "/profile_page";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ThemeController _themeController;

  @override
  void initState() {
    super.initState();
    _themeController = Provider.of<ThemeController>(context,
        listen: false); // Initialize the ThemeController
  }

  //MediaQueryData mediaQueryData = MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    //ThemeController themeController = Provider.of<ThemeController>(context);
    WABAIDController wabaidController = Get.find();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          const SizedBox(
            height: 20,
          ),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ListView(children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor:
                            const Color.fromARGB(255, 202, 181, 240),
                        child: CircleAvatar(
                          radius: 48,
                          child: SvgPicture.asset(
                            "assets/person.svg",
                            fit: BoxFit.contain,
                            color: const Color.fromARGB(255, 37, 30, 30),
                            height: 54,
                            width: 54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //children: [
                          FutureBuilder<String>(
                            future:
                                Future.value(wabaidController.enteredWABAID),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text(
                                    'Error loading WABAID: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final enteredWABAID = snapshot.data!;
                                return Text(
                                  "ID:$enteredWABAID",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else {
                                return const Text('No WABAID found');
                              }
                            },
                          ),
                          //],
                          //),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ]),
          )),
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 61, 163, 247),
                          Color.fromARGB(255, 21, 94, 153),
                          Colors.purple
                        ]),
                    //color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: ListView(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        "Theme",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.settings),
                            title: Text(
                              "Theme",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _themeController.toggleTheme();
                              });
                            },
                            child: Text(_getButtonText(_themeController)),
                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(PrivacyAndPolicyPage.id);
                      },
                      leading: const Icon(
                        (Icons.info_outline),
                      ),
                      title: const Text(
                        "About us",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(LoginPage.id);
                      },
                      leading: const Icon(Icons.logout_outlined),
                      title: const Text(
                        "logout",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]
                      //).toList(),
                      ),
                )),
          ),
        ],
      )),
    ));
  }

  String _getButtonText(ThemeController themeController) {
    return themeController.currentTheme == ThemeMode.dark
        ? 'Light Mode'
        : 'Dark Mode';
  }
}
