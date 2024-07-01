import 'package:flutter/material.dart';
import 'package:voletdesign/src/entities/practitioner.dart';
import 'package:voletdesign/src/widgets/details/actions.dart';
import 'package:voletdesign/src/widgets/details/headline.dart';
import 'package:voletdesign/src/widgets/details/overview.dart';
import 'package:voletdesign/src/widgets/details/sub_headline.dart';
import 'package:voletdesign/src/widgets/details/tab_view.dart';

class DetailsPage extends StatefulWidget {
  final Practitioner practitioner;
  const DetailsPage({super.key, required this.practitioner});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
            height: 180,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/gradient.png"), fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                HeadLine(practitioner: widget.practitioner),
                SubHeadeLine(practitioner: widget.practitioner),
                const SizedBox(height: 40),
                const UserActions(),
                const SizedBox(height: 22),
                const MyTabView(),
              ],
            ),
          ),
          Flexible(
            child: Container(
              color: const Color(0xffF5F7F9),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OverView(practitioner: widget.practitioner),
            ),
          ),
        ],
      ),
    );
  }
}
