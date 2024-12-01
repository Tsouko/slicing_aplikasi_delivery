import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Future<List<dynamic>> fetchData() async {
    final List<Map<String, dynamic>> response =
        await supabase.from('food').select('*');
    return response as List<dynamic>;
  }

  Future<void> deleteData(int id) async {
    await supabase.from('food').delete().eq('id', id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.chevron_left,
              size: mediaWidth * 0.06, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavbarWidget()),
            );
          },
        ),
        title: Text(
          "Your Cart",
          style: GoogleFonts.inter(
            fontSize: mediaWidth * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.person,
                color: Colors.black, size: mediaWidth * 0.06),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: mediaHeight * 0.02,
            horizontal: mediaWidth * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<List<dynamic>>(
                future: fetchData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<dynamic>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(
                      child: Text(
                        'Your cart is empty!',
                        style: GoogleFonts.inter(
                          fontSize: mediaWidth * 0.05,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  } else {
                    final List<dynamic> data = snapshot.data!;
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: mediaHeight * 0.01),
                      itemBuilder: (context, index) {
                        final item = data[index];
                        final imageUrl = item['image_url'] ??
                            'https://via.placeholder.com/150';
                        return Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(mediaWidth * 0.04),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    imageUrl,
                                    width: mediaWidth * 0.2,
                                    height: mediaWidth * 0.2,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.broken_image),
                                  ),
                                ),
                                SizedBox(width: mediaWidth * 0.04),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['name'] ?? 'No Name',
                                        style: GoogleFonts.inter(
                                          fontSize: mediaWidth * 0.045,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: mediaHeight * 0.005),
                                      Text(
                                        "Rp. ${item['price'] ?? '0'}",
                                        style: GoogleFonts.inter(
                                          fontSize: mediaWidth * 0.04,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(CupertinoIcons.trash,
                                      color: Colors.red),
                                  onPressed: () async {
                                    final id = item['id'];
                                    await deleteData(id);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
              SizedBox(height: mediaHeight * 0.03),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: GoogleFonts.inter(
                      fontSize: mediaWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp.104.000,00",
                    style: GoogleFonts.inter(
                      fontSize: mediaWidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaHeight * 0.02),
              SizedBox(
                width: double.infinity,
                height: mediaHeight * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    // Logika checkout
                  },
                  child: Text(
                    "Checkout",
                    style: GoogleFonts.inter(
                      fontSize: mediaWidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
