import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:starbhak/Pages/CreatePage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  Future<List<dynamic>> fetcData() async {
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
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavbarWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(Icons.chevron_left, size: 24, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   // context,
                //   // MaterialPageRoute(builder: (context) => AddPage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: mediaWidth * 0.05, horizontal: mediaWidth * 0.03),
          child: Column(
            children: [
              SizedBox(height: mediaWidth * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaWidth * 0.03,
                          vertical: mediaWidth * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color.fromARGB(217, 227, 111, 10),
                      foregroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Add Data",
                          style: TextStyle(fontSize: mediaWidth * 0.03),
                        ),
                        SizedBox(width: mediaWidth * 0.01),
                        Icon(Icons.add, size: mediaWidth * 0.05),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaWidth * 0.04),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Foto",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: mediaWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Nama Produk",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: mediaWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Harga",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: mediaWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Aksi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: mediaWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaWidth * 0.02),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              FutureBuilder<List<dynamic>>(
                future: fetcData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<dynamic>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text('No data found');
                  } else {
                    final List<dynamic> data = snapshot.data!;
                    return Column(
                      children: data.map((item) {
                        final imageUrl = item['image_url'] ??
                            'https://via.placeholder.com/150';
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: mediaWidth * 0.02),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(mediaWidth * 0.02),
                                  child: Image.network(
                                    imageUrl,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.broken_image),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  item['name'] ?? 'Tidak ada nama',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: mediaWidth * 0.03,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Rp. ${item['price'] ?? '0'}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: mediaWidth * 0.03,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: IconButton(
                                  icon: Icon(CupertinoIcons.trash,
                                      size: mediaWidth * 0.06,
                                      color: Colors.red),
                                  onPressed: () async {
                                    final id = item['id'];
                                    await deleteData(id);
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
