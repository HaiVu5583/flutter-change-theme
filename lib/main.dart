import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_theme/blocs/theme/theme_bloc.dart';
import 'package:switch_theme/theme/themes.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: getThemeDataFromAppTheme(
            context: context,
            theme: state.theme,
          ),
          home: const MyHomePage(title: 'Switch theme demo'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return SwitchListTile(
                  title: const Text('Dark theme'),
                  value: state.theme == AppTheme.dark,
                  onChanged: (bool value) {
                    BlocProvider.of<ThemeBloc>(context).add(
                      ChangeThemeEvent(
                        theme: value ? AppTheme.dark : AppTheme.light,
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Press me"),
            ),
            const SizedBox(height: 32),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
