import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/home.dart';
import 'package:provider/provider.dart'; // used to retain the state of the app
import 'package:flutter_provider_demo/counter_model.dart';
void main() {
  runApp(
    // ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
    // It comes from the provider package
    // we have defined a builder who will create a new instance of the Counter model. 
    // ChangeNotifierProvider does not rebuild Counter unless there is a need for this. 
    // It will also automatically call the dispose() method on the Counter model when the instance is no longer needed.
    ChangeNotifierProvider(
    create: (context) => CounterModel(), // instance of change notifier
    child: const MyApp() // descendent 
  ));
}
// state of the app is everthing that exits in the app memeory.
// state are of two types: Ephemeral state and App state.
// app state share state globally across the app. and ephemeral state is local to a widget. 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}