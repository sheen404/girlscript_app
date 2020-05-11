import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Milestone extends StatefulWidget {
  final String name;
  Milestone({this.name});
  @override
  _MilestoneState createState() => _MilestoneState();
}

class _MilestoneState extends State<Milestone> {
  String name = 'User Name';

  @override
  void initState() {
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: width * 0.13,
            ),
            Text(
              'MILESTONE',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Container(
              width: width * 0.37,
              height: width * 0.023,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                color: Colors.amber[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
            ),
            // SizedBox(height:MediaQuery.of(context).size.width * 0.04),
            SvgPicture.asset(
              'assets/images/custom.svg',
              height: 200.0,
            ),
            Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: width * 0.2,
                      height: height * 0.13,
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 3.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/html.png',
                            height: 30.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Won Hackathon',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$name',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.014,
                        ),
                        Text(
                          'datadatadatadatadatadata',
                          style: TextStyle(
                              fontSize: 13.0, color: Colors.amber[800]),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
