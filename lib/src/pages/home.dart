import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voletdesign/src/pages/details.dart';
import 'package:voletdesign/src/repositories/repository.dart';
import 'package:voletdesign/src/widgets/home/home_app_bar.dart';
import 'package:voletdesign/src/widgets/home/home_filter.dart';
import 'package:voletdesign/src/widgets/home/my_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

var repository = Repository();

class _HomeState extends State<Home> {
  var pratitioners = repository.getAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            const HomeFilter(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: pratitioners.length,
                itemBuilder: (BuildContext context, int index) {
                  var pratitioner = pratitioners[index];
                  String formatedTime =
                      DateFormat('h:mm a').format(pratitioner.schedule);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index != 0
                          ? pratitioner.schedule ==
                                  pratitioners[index - 1].schedule
                              ? Container()
                              : Text(
                                  formatedTime,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                )
                          : Text(
                              formatedTime,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                practitioner: pratitioner,
                              ),
                            ),
                          );
                        },
                        child: MyCard(
                          practitioner: pratitioner,
                        ),
                      ),
                      index != 0
                          ? pratitioner.schedule ==
                                  pratitioners[index - 1].schedule
                              ? const SizedBox(height: 16)
                              : const Divider()
                          : const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
