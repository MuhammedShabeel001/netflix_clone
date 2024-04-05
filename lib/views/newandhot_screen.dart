
import 'package:flutter/material.dart';
import 'package:netflix_api/services/api_functions.dart';
import 'package:netflix_api/widgets/tabs/appbar_widget.dart';
import 'package:netflix_api/widgets/tabs/first_tab.dart';
import 'package:netflix_api/widgets/tabs/forth_tab.dart';
import 'package:netflix_api/widgets/tabs/second_tab.dart';
import 'package:netflix_api/widgets/tabs/third_tab.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: SafeArea(
            child: Scaffold(
          appBar: appbarWidget(
            title: 'New & Hot',
            context: context,
            notification: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: const EdgeInsets.symmetric(vertical: 6),
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white.withOpacity(.7),
                isScrollable: true,
                tabs: [
                  customTab(text: '🍿 Coming Soon '),
                  customTab(text: '🔥 Everyone\'s watching '),
                  customTab(text: '🔟 Top 10 Tv Shows'),
                  customTab(text: '🔟 Top 10 Movies')
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            Firsttab(future: upcoming()),
            SeccondTab(
              future: getnowplaying(),
            ),
            Thirdttab(future: tvDramas()),
            ForthTab(future: topRatedMovies())
          ]),
        )));
  }

  Padding customTab({required text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Tab(text: text),
    );
  }
}
