import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/counter_state.dart';
import '../../logic/cubit/counter_cubit.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  final Color color;
  const SecondScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          BlocConsumer<CounterCubit, CounterState>(
            listener: (BuildContext context, state) {
              if (state.isIncremented == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Incremented"),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("decremented"),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              }
            },
            builder: (BuildContext context, state) {
              return Text(state.counterValue.toString());
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: "btn1",
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: "btn2",
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
            child: const Text("Go to third screen"),
          )
        ],
      ),
    );
  }
}
