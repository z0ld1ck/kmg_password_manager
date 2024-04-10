import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kmg_password_manager/core/const/app_colors.dart';
import 'package:kmg_password_manager/core/navigation/route_names.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> sources = [
      'Website 1',
      'Website 2',
      'Website 3',
      'Website 4',
      'Website 5',
      'Website 6',
      'Website 7',
      'Website 8',
      'Website 9',
      'Website 10',
      'Website 11',
      'Website 12',
      'Website 13',
      'Website 14',
      'Website 15',
      'Website 16',
      'Website 17',
      'Website 18',
      'Website 19',
      'Website 20',
    ];

    final Map<String, String> passwords = {
      'Website 1': 'password1',
      'Website 2': 'password2',
      'Website 3': 'password3',
      'Website 4': 'password4',
      'Website 5': 'password5',
      'Website 6': 'password6',
      'Website 7': 'password7',
      'Website 8': 'password8',
      'Website 9': 'password9',
      'Website 10': 'password10',
      'Website 11': 'password11',
      'Website 12': 'password12',
      'Website 13': 'password13',
      'Website 14': 'password14',
      'Website 15': 'password15',
      'Website 16': 'password16',
      'Website 17': 'password17',
      'Website 18': 'password18',
      'Website 19': 'password19',
      'Website 20': 'password20',
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2227),
        automaticallyImplyLeading: false,
        actions: [
          const Text(
            'KMG Password Manager',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width:260.w,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(RouteNames.profile.path);
            },
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 35,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.white,
      body: Row(
        children: [
          Container(
            width: size.width * 0.3,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              ),
              color: Color(0xFF1C2227),
            ),
            child: ListView.builder(
              itemCount: sources.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        sources[index],
                        style: const TextStyle(
                            fontSize: 18, color: AppColors.white),
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    // const Divider(height: 1, color: AppColors.white),
                  ],
                );
              },
            ),
          ),
          Container(
            width: size.width * 0.7,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.white),
            ),
            child: Center(
              child: IndexedStack(
                index: selectedIndex,
                children: sources.map((website) {
                  return Text(
                    selectedIndex != -1
                        ? 'Пароль для $website: ${passwords[website]}'
                        : 'Выберите веб-сайт для просмотра пароля',
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(fontSize: 20.0, color: AppColors.black),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
