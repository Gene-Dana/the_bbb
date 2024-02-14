import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_bbb/home/cubit/home_cubit.dart';
import 'package:the_bbb/home/view/my_home_page.dart';
import 'package:the_bbb/services_page.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeFlow(),
    );
  }
}

class HomeFlow extends StatelessWidget {
  const HomeFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<HomeScreenState>(
      state: context.select((HomeCubit cubit) => cubit.state),
      onGeneratePages: (HomeScreenState state, List<Page> pages) {
        switch (state) {
          case HomeScreenState.landing:
            return [MyHomePage.page()];
          case HomeScreenState.services:
          default:
            return [ServicesPage.page()];
        }
      },
    );
  }
}