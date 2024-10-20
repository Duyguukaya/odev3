import 'package:flutter/material.dart';

class Denemeee extends StatelessWidget {
  final List<Map<String, String>> companies = [
    {'name': 'Firma Adı', 'discount': '%10'},
    {'name': 'Firma Adı Uzun Firma Adı', 'discount': '%10'},
    {'name': 'Firma Adı', 'discount': '%10'},
    {'name': 'Firma Adı Uzun Firma Adı', 'discount': '%10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firmalar'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Geri gitme işlemi
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.local_hospital, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Sağlık',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Firma Ara',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'İstediğiniz firmada indirim yakalama fırsatı...',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: companies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.business),
                      title: Text(companies[index]['name']!),
                      trailing: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          companies[index]['discount']!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}