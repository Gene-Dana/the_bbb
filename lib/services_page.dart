import 'dart:convert';

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
              name: 'Services',
              selected: true,
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
              title: 'Accounts Payable Services',
              subtitle: 'Utilizing industry best-practices',
              icon: Image.asset('icon1.png'),
              serviceList: ServiceList(
                color: Colors.blue,
                services: [
                  Services(
                    service: 'Invoice Processing',
                    descript:
                        'Managing and processing incoming invoices from vendors or suppliers',
                  ),
                  Services(
                    service: 'Payment Processing',
                    descript:
                        'Executing payments to suppliers in accordance with agreed terms.',
                  ),
                  Services(
                    service: 'Vendor Management',
                    descript:
                        'Maintaining vendor information, including contact details, payment terms, and tax information.',
                  ),
                  Services(
                    service: 'Expense Reconciliation',
                    descript:
                        'Matching invoices with purchase orders and proof of delivery to ensure accuracy.',
                  ),
                  Services(
                    service: 'Electronic Payments Setup',
                    descript:
                        'Implementing electronic payment systems for efficient transfers.',
                  ),
                  Services(
                    service: 'Cash Flow Management',
                    descript:
                        'Forecasting and managing cash outflows to optimize financial resources.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Accounts Receivable Services',
              subtitle: 'Proactive and punctual',
              icon: Image.asset('icon2.png'),
              serviceList: ServiceList(
                color: Colors.pink,
                services: [
                  Services(
                    service: 'Invoice Generation',
                    descript:
                        'Creating and sending invoices to customers for goods or services delivered.',
                  ),
                  Services(
                    service: 'Payment Tracking',
                    descript:
                        'Monitoring incoming payments and applying them to the corresponding invoices.',
                  ),
                  Services(
                    service: 'Customer Management',
                    descript:
                        'Managing customer accounts and maintaining up-to-date contact and billing information.',
                  ),
                  Services(
                    service: 'Credit Control',
                    descript:
                        'Setting credit limits and terms for customers, and monitoring adherence.',
                  ),
                  Services(
                    service: 'Dispute Resolution',
                    descript:
                        'Managing queries and disputes related to invoices from customers.',
                  ),
                  Services(
                    service: 'Aging Reports',
                    descript:
                        'Preparing reports on outstanding invoices to prioritize collection efforts.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Credit Collections Services',
              subtitle: 'Optional collection services',
              icon: Image.asset('icon3.png'),
              serviceList: ServiceList(
                color: Colors.yellow,
                services: [
                  Services(
                    service: 'Debt Recovery',
                    descript:
                        'Implementing strategies to recover overdue payments from customers.',
                  ),
                  Services(
                    service: 'Legal Proceedings Support',
                    descript:
                        'Assisting with the legal aspects of debt collection, if necessary.',
                  ),
                  Services(
                    service: 'Credit Reporting',
                    descript:
                        'Reporting credit activity to credit bureaus as part of risk management.',
                  ),
                  Services(
                    service: 'Negotiation and Settlement',
                    descript:
                        'Working with debtors to negotiate payment plans or settlements.',
                  ),
                  Services(
                    service: 'Customer Communication',
                    descript:
                        'Managing communications with customers regarding their account status and payment reminders.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Auditing Services',
              subtitle: 'Thorough and accurate auditing',
              icon: Image.asset('icon4.png'),
              serviceList: ServiceList(
                color: Colors.red,
                services: [
                  Services(
                    service: 'Financial Audits',
                    descript:
                        'Examining an organizations financial statements to ensure accuracy and compliance with accounting standards.',
                  ),
                  Services(
                    service: 'Compliance Audits',
                    descript:
                        'Assessing compliance with relevant laws, regulations, and internal policies.',
                  ),
                  Services(
                    service: 'Operational Audits',
                    descript:
                        'Evaluating the efficiency and effectiveness of operational processes.',
                  ),
                  Services(
                    service: 'Risk Assessment',
                    descript:
                        'Identifying and assessing financial risks and recommending mitigation strategies.',
                  ),
                  Services(
                    service: 'Internal Controls Evaluation',
                    descript:
                        'Reviewing and assessing the effectiveness of internal control systems.',
                  ),
                  Services(
                    service: 'Tax Audits',
                    descript:
                        'Assisting with audits by tax authorities, including preparation and support during the process.',
                  ),
                ],
              ),
            ),
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
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
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
  final ServiceList serviceList;

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 100, child: icon),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          child: Text(subtitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontSize: 24)),
                        ),
                      ),
                    ],
                  ),
                  serviceList,
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
    required this.services,
    required this.color,
  });

  final List<Services> services;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...services.map((service) => ServiceTile(
              color: color,
              service: service.service,
              descript: service.descript,
            )),
      ],
    );
  }
}

class ServiceTile extends StatelessWidget {
  final String service;
  final String descript;
  final Color color;

  const ServiceTile(
      {Key? key,
      required this.service,
      required this.descript,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.check_circle_outline, color: color),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 800,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: service + ': ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextSpan(
                  text: descript,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class Services {
  final String service;
  final String descript;
  Services({
    required this.service,
    required this.descript,
  });

  Services copyWith({
    String? service,
    String? descript,
  }) {
    return Services(
      service: service ?? this.service,
      descript: descript ?? this.descript,
    );
  }

  @override
  String toString() => 'Services(service: $service, descript: $descript)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Services &&
        other.service == service &&
        other.descript == descript;
  }

  @override
  int get hashCode => service.hashCode ^ descript.hashCode;
}
