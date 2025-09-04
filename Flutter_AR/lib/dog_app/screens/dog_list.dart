import 'package:flutter/material.dart';
import 'package:login_design/dog_app/services/api_call.dart';

class DogList extends StatefulWidget {
  const DogList({super.key});

  @override
  State<DogList> createState() => _DogListState();
}

class _DogListState extends State<DogList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() {
    ApiCall.fetchDogList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dog App')),
      // body:FutureBuilder(future: , builder: builder)
      body: FutureBuilder<List<String>>(
        future: ApiCall.fetchDogList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == "waiting") {
            return CircularProgressIndicator();
          } else if (snapshot.hasData) {
            List<String> dogs = snapshot.data!;
            return ListView.builder(
              itemCount: dogs.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text('${dogs[index]}')),
            );
          } else if (snapshot.hasError) {
            return Text('Error in response please try after some time');
          } else {
            return Text('No data found');
          }
        },
      ),
    );
  }
}
