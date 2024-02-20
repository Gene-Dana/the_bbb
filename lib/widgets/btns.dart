import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  const MainBtn(
      {super.key, required this.title, required this.link, this.onPressed});

  final String title;
  final String link;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 200,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 36, 73, 222),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}

class mMainBtn extends StatelessWidget {
  const mMainBtn(
      {super.key, required this.title, required this.link, this.onPressed});

  final String title;
  final String link;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 170,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 36, 73, 222),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 12),
            ),
            onPressed: onPressed,
            child: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 14)),
          ),
        ),
      ),
    );
  }
}

class SecondaryBtn extends StatelessWidget {
  const SecondaryBtn({super.key, required this.title, required this.link});

  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 180,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.black,
              side:
                  BorderSide(color: Color.fromARGB(255, 36, 73, 222), width: 2),
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}

class mSecondaryBtn extends StatelessWidget {
  const mSecondaryBtn({super.key, required this.title, required this.link});

  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: SizedBox(
        width: 170,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.black,
              side:
                  BorderSide(color: Color.fromARGB(255, 36, 73, 222), width: 2),
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
