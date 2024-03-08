import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:appkamus/models/model_kosakata.dart';
import 'package:appkamus/views/pageKosakata_detail.dart';

class PageKosakata extends StatefulWidget {
  const PageKosakata({Key? key}) : super(key: key);

  @override
  State<PageKosakata> createState() => _PageKosakataState();
}

class _PageKosakataState extends State<PageKosakata> {
  List<Datum> _kosakataList = [];
  List<Datum> _filteredKosakataList = [];
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

   @override
  void initState() {
    super.initState();
    _fetchKosakata();
  }

  Future<void> _fetchKosakata() async {
    try {
      http.Response res = await http.get(
          Uri.parse('http://192.168.0.103/api_server/getKosakata.php'));
      setState(() {
        _kosakataList = modelKosakataFromJson(res.body).data!;
        _filteredKosakataList = _kosakataList;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  void _filterKosakataList(String query) {
    List<Datum> filteredKosakataList = _kosakataList
        .where((kosakata) =>
            kosakata.kosakata.toLowerCase().contains(query.toLowerCase()) ||
            kosakata.terjemahan.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredKosakataList = filteredKosakataList;
    });
  }

  void _showDetailPage(Datum kosakata) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageKosakataDetail(data: kosakata)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kosakata Bahasa Italia'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
              ),
              onChanged: (value) {
                _filterKosakataList(value);
              },
            ),
            Expanded(
              child: _filteredKosakataList.isNotEmpty
                  ? ListView.builder(
                      itemCount: _filteredKosakataList.length,
                      itemBuilder: (context, index) {
                        Datum kosakata = _filteredKosakataList[index];
                        return GestureDetector(
                          onTap: () {
                            _showDetailPage(kosakata);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Card(
                              child: ListTile(
                                title: Text(
                                  kosakata.kosakata,
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                                  subtitle: Text(
                                  kosakata.terjemahan,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: _isSearching
                          ? Text('No results found')
                          : CircularProgressIndicator(
                              color: Colors.orange,
                            ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
