import 'package:flutter/material.dart';

void main() => runApp(const CounterPage());

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BLoC Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: const Icon(Icons.restore),
          )
        ],
      ),
      body: Center(
        child: Text('0', style: Theme.of(context).textTheme.displayLarge),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(height: 20),
          FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
