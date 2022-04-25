import 'package:flutter/material.dart';
import 'package:uidesigns/screens/statelesswidget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class UiFourWidget extends StatelessWidget {
  UiFourWidget({Key? key}) : super(key: key);
  static String videoID = 'id1E0lqnUtY';

  final _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dukaan Premium'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 270,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 125,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 5,
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(130, 229, 229, 229))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'asset/images/logo.jpg',
                          width: 220,
                        ),
                        const Text(
                          'Get Dukaan Premium for just\n ₹4,999/year',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'All the advanced features for scaling your \nbusiness.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          headtitle(htext: 'Features'),
          featureslist(
              ftitle: 'Custom domain name',
              ficon: Icons.language_outlined,
              fsubtitle:
                  'Get your own custom domain and build \nyour brand on the internet.'),
          featureslist(
              ftitle: 'Verified seller badge',
              ficon: Icons.verified_outlined,
              fsubtitle:
                  'Get green verified badge under your \nstore name and build trust.'),
          featureslist(
              ftitle: 'Dukaan for PC',
              ficon: Icons.laptop_chromebook_outlined,
              fsubtitle:
                  'Access all the exclusive premium \nfeatures on Dukaan for PC.'),
          featureslist(
              ftitle: 'Priority support',
              ficon: Icons.headset_mic_outlined,
              fsubtitle:
                  'Get your questions resolved with our \npriority customer support.'),
          const Divider(height: 30, thickness: 5),
          headtitle(htext: 'What is Dukaan Premium?'),

          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: false,
              ),
            ),
          ),

          //DIVIDER
          const Divider(height: 30, thickness: 5),

          //FEATURES
          headtitle(htext: 'Frequently Asked Questions'),
          FaqExpansionTile(
            faqtitle: "What types of businesses can use Dukaan Premium?",
            faqtext:
                "Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.",
            customTileExpanded: true,
          ),
          FaqExpansionTile(faqtitle: "What is your refund policy?"),
          FaqExpansionTile(
              faqtitle:
                  "Will there be an automatic charge after the paid trial?"),
          FaqExpansionTile(faqtitle: "What payment methods do you offer?"),
          FaqExpansionTile(faqtitle: "What happens when my free trial ends?"),
          FaqExpansionTile(
              faqtitle: "What are the terms for the custom domain?"),

          //DIVIDER
          const Divider(height: 30, thickness: 5),

          //HELP
          headtitle(htext: "Need help? Get in touch"),
          gridviewcontact(),

          const Divider(height: 30, thickness: 2),
          Padding(
            padding: const EdgeInsets.only(bottom: 18, left: 18, right: 18),
            child: Row(
              children: [
                const Expanded(
                    flex: 2,
                    child: Text(
                      "Select Domain",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w700),
                    )),
                Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Get Premium',
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )))),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget gridviewcontact() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: GridView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 50 / 30,
        ),
        children: [
          gridviewcontainer(
              gtext: "Live Chat", gicon: Icons.chat_bubble_outline_rounded),
          gridviewcontainer(gtext: "Phone Call", gicon: Icons.call_outlined),
        ],
      ),
    );
  }

  Widget gridviewcontainer({required gtext, required gicon}) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(210, 229, 229, 229), width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gicon,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              gtext,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

featureslist({ftitle, ficon, fsubtitle}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: ListTile(
      title: Text(
        ftitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        fsubtitle,
        style: const TextStyle(fontSize: 17, height: 1.2),
      ),
      leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            ficon,
            size: 35,
            color: Colors.blue,
          )),
    ),
  );
}

headtitle({required htext}) {
  return Container(
      margin: const EdgeInsets.all(18),
      child: Text(
        htext,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
      ));
}
