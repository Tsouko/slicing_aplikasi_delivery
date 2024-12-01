import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starbhak/Widget/AppBarWidget.dart';
import 'package:starbhak/Widget/AllfoodWidget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<List<dynamic>> fetchData() async {
    final List<Map<String, dynamic>> response =
        await supabase.from('food').select('*');
    return response as List<dynamic>;
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(),
          SizedBox(height: screenHeight * 0.03),
          AllfoodWidget(),
          SizedBox(height: screenHeight * 0.03),
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.02, right: screenWidth * 0.05),
            child: Align(
              alignment: Alignment.center,
            child: Text(
              "All food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.04,
                ),
              ),
            ),
          ),

        SizedBox(height: 15),

          Expanded(
            child: FutureBuilder<List<dynamic>>(
                future: fetchData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<dynamic>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                        child: Text('Tidak ada data ditemukan'));
                  } else {
                    final List<dynamic> data = snapshot.data!;
                return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                      Wrap(
                        spacing: 25.0,
                              runSpacing: 20.0, 
                        children: data.map((item) {
                            final imageUrl = item['image_url'] ??
                              'https://via.placeholder.com/150';
                        return Padding(
                                padding:EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                child: Container(
                                  width: screenWidth * 0.4,
                                  height: screenWidth * 0.53,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          child: Image.network(
                                            imageUrl,
                                            errorBuilder: (context, error,
                                                    stackTrace) =>
                                                const Icon(Icons.broken_image),
                                          ),
                                          height: screenWidth * 0.32,
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          item['name'] ?? 'Tidak ada nama',
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.04,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: screenWidth * 0.001),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Rp. ${item['price'] ?? '0'}',
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.04,
                                                color: Color.fromARGB(
                                                    217, 227, 111, 10),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(
                                              Icons.add_circle,
                                              color: Color.fromARGB(
                                                  217, 227, 111, 10),
                                              size: screenWidth * 0.06,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                        }).toList(),
                      )
                    ],
                  ),

            );
                }
                }
            ),
          ),

        ],
      ),
    );
  }
}