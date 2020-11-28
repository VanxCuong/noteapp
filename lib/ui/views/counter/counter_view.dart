import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab42/ui/views/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(title: Text(model.title)),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(model.myCounter.imgUrl),
                    IconButton(
                      onPressed: () {
                        model.myCounter.increment();
                        model.notifyListeners();
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                    ),
                    Text("You have pushed the button this many times"),
                    SizedBox(height: 10),
                    Text(model.myCounter.counter.toString(),
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => CounterViewModel());
  }
}
