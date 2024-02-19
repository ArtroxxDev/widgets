import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = "ButtonScreen";
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity, //definicion de las dimensiones del box
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20), //para que no quede tan pegado a las esquinas
        child: Wrap(
          spacing: 10, //añado espacio entre los iconos
          crossAxisAlignment:
              WrapCrossAlignment.center, //para alinear los iconos
          alignment: WrapAlignment.center, //tambien para alinearlos
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated disabled'),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ad_units),
                label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.wrong_location),
                label: const Text('Outlined Icon')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terminal_sharp),
                label: const Text('Text Icon')),
            const CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.gamepad_sharp)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.window_outlined),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary)),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'hello',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
