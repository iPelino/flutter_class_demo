import 'package:flutter/cupertino.dart';
import 'package:flutter_class_demo/constants/colors.dart';
import 'package:flutter_class_demo/models/district.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'District',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: textColor,
            ),
          ),
        ),
        Locations(),
      ],
    );
  }
}

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  var districts = District.districtList;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 20.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: districts.length,
          itemBuilder: (context, index) => buildDistrict(index),
        ),
      ),
    );
  }

  Widget buildDistrict(int index) => Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    districts[index].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? primaryDarkColor
                          : accentColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    height: 2.0,
                    width: 40.0,
                    color: selectedIndex == index ? textColor : accentColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
