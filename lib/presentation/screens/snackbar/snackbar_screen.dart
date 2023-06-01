import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnakbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnakbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estás seguro?'),
              content: const Text(
                  'Reprehenderit aliquip et do adipisicing esse duis dolor sunt ad culpa. Laborum ullamco pariatur nisi fugiat nisi Lorem amet deserunt sunt in ipsum consectetur. Velit excepteur exercitation fugiat incididunt occaecat irure enim ipsum labore dolore sint. Adipisicing anim laborum ad ut dolore reprehenderit cupidatat et cillum eu quis dolor occaecat.'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Cancelar'),
                ),
                FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Aceptar'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Aute ullamco id irure dolore in elit ea. Duis amet voluptate dolore ex cupidatat adipisicing est sunt sunt. Ullamco elit consequat do mollit aliqua labore nostrud officia qui qui ea consequat esse. Aute cupidatat deserunt nulla aliquip fugiat.')
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}
