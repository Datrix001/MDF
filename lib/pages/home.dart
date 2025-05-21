import 'package:flutter/material.dart';
import 'package:mdf/components/battle_ui.dart';
import 'package:mdf/utils/font.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<double> progress = ValueNotifier(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MDM", style: CustomFont.title1(context))),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("lib/assets/alarm.png", height: 40),
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
            children: [
              ListTile(
                title: Text("GG", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title: Text("GG", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                title: Text("GG", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      body: Align(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SimpleCircularProgressBar(
                  size: 160,
                  valueNotifier: progress,
                  mergeMode: true,
                  onGetText: (double value) {
                    return Text(
                      '${value.toInt()}%',
                      style: CustomFont.title(context),
                    );
                  },
                ),
                SizedBox(height: 20),
                Text("Attempt Number 1", style: CustomFont.body(context)),
                SizedBox(height: 20),
                Divider(thickness: 1.5, color: Colors.grey[700]),
                Text(
                  "Ongoing Battle",
                  style: CustomFont.title(
                    context,
                  ).copyWith(color: Colors.blueAccent),
                ),
                SizedBox(height: 20),
                BattleUi()
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
