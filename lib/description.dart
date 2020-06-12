import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = Image.asset('images/test.jpg');

    final title = Column(
      children: <Widget>[
        image,
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 0),
          child: Text(
            "Title",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            textAlign: TextAlign.start,
          ),
        ),
        description
      ],
    );

    return title;
  }

  final description = Container(
    margin: EdgeInsets.only(top: 25, right: 25, left: 25, bottom: 0),
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sodales nisi ut egestas commodo. Integer tincidunt sapien cursus varius condimentum. Aenean eget leo commodo leo porta blandit. Aliquam ac pellentesque nisl. Etiam vel condimentum felis, eu pulvinar ipsum. Mauris ullamcorper ornare odio eu dapibus. Nunc dui urna, pretium vitae tincidunt ac, placerat eu arcu. Fusce sed justo sit amet erat accumsan placerat. Nunc eget accumsan mi. Vivamus lobortis nulla velit, quis interdum magna sollicitudin ut.',
      style: TextStyle(fontSize: 12),
      textAlign: TextAlign.justify,
    ),
  );
}
