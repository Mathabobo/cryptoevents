import 'package:crypto_events/utilities/creators_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../utilities/event_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        // gradient: LinearGradient(
        //   colors: [Colors.orange, Colors.orange.shade900],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        // ),
      ),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Appbar, notification bell & crypto balance
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //*coin symbol & Crypto balance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kColorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black12)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.currency_bitcoin_sharp,
                              size: 22,
                            ),
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '3.278 ETH',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'Balance',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //*notification bell
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.black12)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_outlined,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                            Positioned(
                              left: 1,
                              bottom: 3,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.circle_sharp,
                                  color: Colors.deepOrangeAccent,
                                  size: 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              //*My Events Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'MY EVENTS',
                    style: TextStyle(
                      fontFamily: GoogleFonts.amaranth().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              //*My Events Cards
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    EventCard(),
                    EventCard(),
                    EventCard(),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              //*Creators section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'CREATORS',
                    style: TextStyle(
                      fontFamily: GoogleFonts.amaranth().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5),

              const CreatorsCard(),

              const CreatorsCard(),

              const CreatorsCard(),

              const CreatorsCard(),

              const CreatorsCard(),
              // const Divider(
              //   color: Colors.black12,
              //   thickness: 1,
              //   indent: 65,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
