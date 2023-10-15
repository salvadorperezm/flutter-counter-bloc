import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc_counter/counter/bloc/counter_bloc.dart';

void main() => runApp(const CounterPage());

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterView(),
      ),
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
            onPressed: () =>
                context.read<CounterBloc>().add(const ResetCounterPressed()),
            icon: const Icon(Icons.restore),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('${state.counter}',
                style: Theme.of(context).textTheme.displayLarge);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () => context
                  .read<CounterBloc>()
                  .add(const IncrementCounterPressed()),
              child: const Icon(Icons.add)),
          const SizedBox(height: 20),
          FloatingActionButton(
              onPressed: () => context
                  .read<CounterBloc>()
                  .add(const DecrementCounterPressed()),
              child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
