import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart

import '../model/expansionPanel.dart';

class EndDrawer extends StatelessWidget {
  EndDrawer({super.key});

  static Widget body = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.grey,
      height: 200,
      width: 200,
      child: Center(
        child: Text('Hello Expnsion'),
      ),
    ),
  );

  final expansionPanel = [
    ExpansionPan(
      header: 'Fabric Category',
      image: SvgPicture.asset('images/buy.svg'),
      body: body,
    ),
    ExpansionPan(
      body: body,
      image: Image.asset('images/guy.png'),
      header: 'Fabric Brands',
    ),
    ExpansionPan(
      header: 'Fabric Color',
      body: body,
      image: Image.asset('images/guy.png'),
    ),
    ExpansionPan(
      image: Image.asset('images/guy.png'),
      header: 'Locations',
      body: body,
    ),
    ExpansionPan(
      image: Image.asset('images/guy.png'),
      header: 'Delivery Time',
      body: body,
    ),
    ExpansionPan(
      image: Image.asset('images/guy.png'),
      header: 'Price',
      body: body,
    ),
    ExpansionPan(
      image: Image.asset('images/guy.png'),
      header: 'Discounts',
      body: body,
    ),
    ExpansionPan(
      image: Image.asset('images/guy.png'),
      header: 'Shop Type',
      body: body,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70, right: 30),
      child: ClipRRect(
        // give it your desired border radius
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
        ),
        // wrap with a sizedbox for a custom width [for more flexibility]
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Drawer(
              backgroundColor: Colors.white,
              // your widgets goes here
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: expansionPanel.length,
                      itemBuilder: (_, index) {
                        final items = expansionPanel[index];
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.white,
                            child: ExpansionTile(
                              // controlAffinity: ,
                              childrenPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 7),
                              leading: items.image,
                              title: Text(
                                items.header,
                                // style: TextStyle(color: Colors.white),
                              ),
                              children: [
                                items.body,
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}



/*  Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 12),
                          child: ExpansionPanelList.radio(
                            children: expansionPanel
                                .map((e) => ExpansionPanelRadio(
                                    // <------
                                    canTapOnHeader: true,
                                    value: e.header,
                                    headerBuilder: (context, isExpanded) {
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Container(
                                              color: Colors.pinkAccent,
                                              child: ListTile(
                                                title: Text(
                                                  e.header,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                        ],
                                      );
                                    },
                                    body: e.body))
                                .toList(),
                          ),
                        ),  */