import 'package:flutter/material.dart';
import 'package:assignment_two_flutter/widgets/action_button.dart';
import 'package:assignment_two_flutter/widgets/transaction_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static const Color primaryPurple = Color(0xFF5B46EB);

  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Reports Page')),
    Center(child: Text('Cards Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20,
        toolbarHeight: 90,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CircleAvatar(
            radius: 24,
            backgroundColor: primaryPurple,
            child: const Text(
              'S',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),


            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Welcome back,',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  'STUDENT NAME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, size: 28),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),



      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A50FF), Color(0xFF5B46EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Total Balance",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    "\$8,945.32",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Savings: \$5,500',
                        style: TextStyle(
                          color: Colors.white70
                        ),
                      ),

                      Row(
                        children: const [
                            Icon(Icons.trending_up,
                            color: Colors.green,
                            size:20),
                          SizedBox(
                            width: 4),
                          Text(
                            'Last 30 days: +\$330',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
                height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                ActionButton(icon: Icons.swap_horiz, label: 'Transfer'),
                ActionButton(icon: Icons.warning_amber, label: 'Pay Bills'),
                ActionButton(icon: Icons.link, label: 'Invest'),
              ],
            ),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recent Transaction',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed:(){} ,
                    child: const Text('View all',
                      style: TextStyle(
                        color: primaryPurple),
                    ),
                ),
              ],
            ),

            const SizedBox(height: 10),

           TransactionTile(
               icon: Icons.local_movies,
               title: 'Netflix Subscription',
               category: 'Entertainment • Today',
               amount: '-\$19.99',
               color: Colors.red),

            TransactionTile(
                icon: Icons.coffee,
                title: 'Coffee Shop',
                category: 'Food & Drink • Today',
                amount: '-\$4.50',
                color: Colors.red),

            TransactionTile(
                icon: Icons.account_balance_wallet,
                title: 'Salary Deposit', category:'Income • Yesterday',
                amount: '+\$3500.00',
                color: Colors.green),

            TransactionTile(
                icon: Icons.local_grocery_store,
                title: 'Grocery Store',
                category: 'Shopping • Yesterday',
                amount: '-\$55.00',
                color: Colors.red),

            TransactionTile(
                icon: Icons.shopping_bag,
                title: 'Amazon Purchase',
                category: 'Shopping • 2 days ago',
                amount: '-\$120.75',
                color: Colors.red)
          ],
        ),
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: primaryPurple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}