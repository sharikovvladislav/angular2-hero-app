import 'package:angular2/core.dart';
@Component(
    selector: 'my-directive',
    template: '<h1>Hello, I am {{name}}. I am {{age}}</h1>')
class AppComponent {
  String name = 'Vlad';
  int age = 22;
}