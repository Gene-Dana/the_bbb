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
              title: 'Essential Bookkeeping Services',
              subtitle:
                  'Providing the foundational financial support every business requires.',
              icon: Image.asset('icon1.png'),
              serviceList: ServiceList(
                color: Colors.blue,
                services: [
                  Services(
                    service: 'Bank & Credit Card Transaction Coding',
                    descript:
                        'Accurate categorization of bank and credit card transactions to ensure your financials are always up to date.',
                  ),
                  Services(
                    service: 'Payroll Processing',
                    descript:
                        'Timely and compliant payroll processing to ensure your team is paid correctly and on time.',
                  ),
                  Services(
                    service: 'Monthly Financial Reports',
                    descript:
                        'Regular insights into your financial health with comprehensive reports.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Advanced Bookkeeping Services',
              subtitle:
                  'Elevate your financial operations with our expanded suite of services.',
              icon: Image.asset('icon2.png'),
              serviceList: ServiceList(
                color: Colors.pink,
                services: [
                  Services(
                    service: 'Weekly Reporting',
                    descript:
                        'Gain more frequent insights with detailed weekly financial summaries.',
                  ),
                  Services(
                    service: 'Statement Reconciliations',
                    descript:
                        'Ensuring all your financial statements match up perfectly with your records.',
                  ),
                  Services(
                    service: 'Month-end Close',
                    descript:
                        'Systematic completion of all accounting tasks to close your books every month.',
                  ),
                  Services(
                    service: 'Advisory Services',
                    descript:
                        'Strategic insights with Key Performance Indicators (KPIs) and in-depth management reporting.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Complete Bookkeeping Services',
              subtitle:
                  'Our most comprehensive package for businesses seeking full financial management.',
              icon: Image.asset('icon3.png'),
              serviceList: ServiceList(
                color: Colors.yellow,
                services: [
                  Services(
                    service: 'Cash Flow Forecasting',
                    descript:
                        'Project your companys cash flow to make informed business decisions.',
                  ),
                  Services(
                    service: 'Job Costing',
                    descript:
                        'Detailed tracking and reporting on the costs associated with specific jobs or projects.',
                  ),
                  Services(
                    service: 'Budgeting',
                    descript:
                        'Assistance in planning your financial budget to align with business goals.',
                  ),
                  Services(
                    service: 'Systems Integration',
                    descript:
                        'Streamlining your accounting systems for maximum efficiency.',
                  ),
                  Services(
                    service: 'Training',
                    descript:
                        'Equip your team with the knowledge to manage and understand your financial systems.',
                  ),
                  Services(
                    service: 'Data Clean up & Catch Up',
                    descript:
                        'Address any backlogs in bookkeeping to bring your accounts up to date.',
                  ),
                ],
              ),
            ),
            ServiceSection(
              title: 'Specialized Support Services',
              subtitle:
                  'Expert services to support unique business needs and compliance.',
              icon: Image.asset('icon4.png'),
              serviceList: ServiceList(
                color: Colors.red,
                services: [
                  Services(
                    service: 'Audit/Tax Support',
                    descript:
                        'Assistance during audits and tax season to ensure compliance and accuracy.',
                  ),
                  Services(
                    service: 'Tax Preparation',
                    descript:
                        'Professional preparation of your business taxes to maximize returns and minimize liabilities.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Text(
                  'For more detailed information on our service packages, please contact Ryan@Web-TaxPro.com or Christy@Web-TaxPro.com, or call us at (971) 708-2045.'),
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
