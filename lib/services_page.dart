import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_bbb/btns.dart';
import 'package:the_bbb/home/cubit/home_cubit.dart';
import 'package:the_bbb/home/view/my_home_page.dart';

class ServicesPage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: ServicesPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 15, 48, 1),
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 128.0),
          child: InkWell(
              onTap: () {
                context.read<HomeCubit>().setLanding();
              },
              child: Image.asset('icon.png')),
        ),
        leadingWidth: 400,
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          NavElement(
              name: 'Home',
              link: 'link',
              onPressed: () {
                context.read<HomeCubit>().setLanding();
              }),
        ]),
        actions: const [
          MainBtn(title: 'Contact Us', link: ''),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 32),
        child: ListView(
          children: [
            _Opening(),
            _Second(),
            ServiceSection(
              title: 'Bookkeeping Services',
              subtitle:
                  'Expert bookkeeping services delivered with punctuality ',
              icon: Image.asset('icon.png'),
              serviceList: const [
                ServiceList(
                  color: Colors.yellow,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
                ServiceList(
                  color: Colors.yellow,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
              ],
            ),
            ServiceSection(
              title: 'Bookkeeping Services',
              subtitle:
                  'Expert bookkeeping services delivered with punctuality ',
              icon: Image.asset('icon.png'),
              serviceList: const [
                ServiceList(
                  color: Colors.blue,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
                ServiceList(
                  color: Colors.blue,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
              ],
            ),
            ServiceSection(
              title: 'Bookkeeping Services',
              subtitle:
                  'Expert bookkeeping services delivered with punctuality ',
              icon: Image.asset('icon.png'),
              serviceList: const [
                ServiceList(
                  color: Colors.red,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
                ServiceList(
                  color: Colors.red,
                  title: 'Accounts Payable Services',
                  subtitle: 'subtitle',
                  services: [
                    'Invoice Processing',
                    'Vendor Management',
                    'Cash Flow Management',
                    'Expense Reconciliation',
                    'Electronic Payments Setup',
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Opening extends StatelessWidget {
  const _Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Our Services & Expertise',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 36, 73, 222),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Financial & Bookkeeping Services ',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.black, fontSize: 84),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: MainBtn(title: 'Get Started', link: ''),
        )
      ],
    );
  }
}

class _Second extends StatelessWidget {
  const _Second({super.key});

  @override
  Widget build(BuildContext context) {
    final cWidth = MediaQuery.of(context).size.width - 256 / 3 - 60;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Custom-Crafted Bookkeeping',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 48,
                    color: const Color.fromARGB(255, 36, 73, 222),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Ryan is a seasoned bookkeeping professional leading the industry with nearly two decades of unmatched accounting expertise. His career spans across an impressive array of sectors — hospitality, grocery, restaurants, and transportation — where he has masterfully handled accounts payable, accounts receivable, credit collections, and auditing. This broad and diverse background solidifies his standing as the go-to expert in adaptable and custom bookkeeping solutions.',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.black, fontSize: 24),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 250,
                  child: Text(
                      'Ryan and his son enjoy and reside in Portland, Oregon',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ),
              Container(
                width: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/826240853478604840/1206709578222280735/IMG_8212.jpeg?ex=65dcfedf&is=65ca89df&hm=a4a2c84f01e1985fa80bd823c28e28aaf51fa88fadedd36831e28167bde6f740&',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2000),
                            ),
                          ),
                          width: 300,
                          height: 200,
                          child: Image.network(
                              'https://imgs.search.brave.com/PKZxeXMXaJMQ3o1VhdhpjA7riWSutY0vceRLKQ8z7hM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTA5/NzAwMjM0L3Bob3Rv/L3BvcnRsYW5kLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1m/d0szTkFDWnNRRFJQ/N0VEdWRoemJVVmRu/OWo1b1VXQUhtWHlT/Qi1SQkZjPQ',
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.serviceList,
  });

  final String title;
  final Image icon;
  final String subtitle;
  final List<ServiceList> serviceList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(subtitle),
                      icon,
                    ],
                  ),
                  ...serviceList,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ServiceList extends StatelessWidget {
  const ServiceList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.services,
    required this.color,
  });

  final String title;
  final String subtitle;
  final List<String> services;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            subtitle,
            // style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        ...services
            .map((service) => ServiceTile(color: color, service: service)),
      ],
    );
  }
}

class ServiceTile extends StatelessWidget {
  final String service;
  final Color color;

  const ServiceTile({Key? key, required this.service, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.check_circle_outline, color: color),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(service),
      ),
    ]);
  }
}
