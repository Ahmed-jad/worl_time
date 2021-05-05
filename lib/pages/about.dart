
import 'package:flutter/material.dart';

/// This is the stateless widget that the main application instantiates.
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyText2!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,
                text: "Flutter is Google's UI toolkit for building beautiful, "
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),

      body: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50,),
          child: Text('This App is all about world time, it shows the time of the selected country, and display where its day or night, ',
          style: TextStyle(fontSize: 22, letterSpacing: 2),),

        ),
       // child: ElevatedButton(
       //    child: const Text('Show About Example'),
       //    onPressed: () {
       //      showAboutDialog(
       //        context: context,
       //        applicationIcon: const FlutterLogo(),
       //        applicationName: 'Show About Example',
       //        applicationVersion: 'August 2019',
       //        applicationLegalese: '\u{a9} 2014 The Flutter Authors',
       //        children: aboutBoxChildren,
       //      );
       //    },
       //  ),

      );

  }
}
