import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:review_repository/review_repository.dart';

import 'package:the_bbb/bloc_observer.dart';
import 'package:the_bbb/home/view/home_flow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final reviewRepository = const ReviewRepository();

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Bloc.observer = AppBlocObserver();

    return MaterialApp(
        title: 'The Boring Bookkeeping Business',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 58, 62, 183)),
          useMaterial3: true,
          textTheme: TextTheme(
            displayLarge: GoogleFonts.archivoBlack(
              fontSize: 100,
              color: Colors.white,
            ),
            titleMedium: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            titleSmall: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displaySmall: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            titleLarge: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            bodyMedium: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        home: MyProviderPage(reviewRepository: reviewRepository));
  }
}

class MyProviderPage extends StatelessWidget {
  const MyProviderPage({super.key, required ReviewRepository reviewRepository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => const ReviewRepository(),
      child: HomeView(),
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size.width;
//     return size >= 800 ? ServicesPage() : ServicesPage();
//   }
// }
