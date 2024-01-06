import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/counter_model.dart';
import 'package:provider/provider.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    // consumer will call the provider here in widget and delegates its build implementation to the builder.
    // consumer widget only requires a builder function, which is called whenever the ChangeNotifier changes. 
    // The builder function contains three arguments, which are context, count, and child. The first argument, context, contain in every build() method. 
    // The second argument is the instance of the ChangeNotifier, and the third argument is the child that is used for optimization.
    return Consumer<CounterModel>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              value.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //get acess to counter class
          final counter = context.read<CounterModel>();
          //increment
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
     ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
