import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola desde el snackbar'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible:
            false, //Sirve para que la alerta no se pueda cerrar tocando fuera del cuadro
        builder: (context) => AlertDialog(
              title: const Text('Estas seguro?'),
              content: const Text('Oleme el dedo'),
              actions: [
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    context.pop();
                  },
                ),
                FilledButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Hola, soy Mati, puedes mirar las licencias utilizadas en este programa')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('mostrar diálogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackBar(context);
        },
        label: const Text('Mostrar SnackBars'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
