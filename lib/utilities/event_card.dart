import 'package:crypto_events/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../main.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EventPage.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          padding: const EdgeInsets.all(6),
          width: 300,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color.fromARGB(26, 53, 40, 40)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    child: const Image(
                      image: AssetImage('lib/images/event1.jpg'),
                      fit: BoxFit.fill,
                      height: 170,
                      width: 280,
                    ).animate().fadeIn(duration: 300.milliseconds),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              //*details of event
              Padding(
                padding: const EdgeInsets.all(2.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Composition in VR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        // const Spacer(),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '12.02.2023, 11.00 AM - Virtual event',
                      style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          color: kColorScheme.primaryContainer,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        FilledButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                kColorScheme.primaryContainer),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(30, 30)),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.currency_bitcoin,
                            size: 16,
                            color: kColorScheme.secondaryContainer,
                          ),
                          label: Text(
                            '0.001 ETH',
                            style: TextStyle(
                                color: kColorScheme.secondaryContainer),
                          ),
                          clipBehavior: Clip.antiAlias,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        FilledButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[200]),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(30, 30)),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.people_rounded,
                            size: 16,
                            color: kColorScheme.primaryContainer,
                          ),
                          label: Text(
                            '182',
                            style:
                                TextStyle(color: kColorScheme.primaryContainer),
                          ),
                          clipBehavior: Clip.antiAlias,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
