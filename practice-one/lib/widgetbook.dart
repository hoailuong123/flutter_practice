import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(
    Widgetbook(
      children: [
        WidgetbookPage(
          name: 'Button Widgets Example',
          builder: (context) => MyButtonWidget(),
        ),
        WidgetbookPage(
          name: 'Text Widgets Example',
          builder: (context) => MyTextWidget(),
        ),
       
      ],
    ),
  );
}
