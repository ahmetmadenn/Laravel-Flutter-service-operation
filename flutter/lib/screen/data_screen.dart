import 'package:flutter/material.dart';
import '../model/app_model.dart';
import '../service/app_service.dart';

class DataDisplayScreen extends StatefulWidget {
  const DataDisplayScreen({super.key});

  @override
  _DataDisplayScreenState createState() => _DataDisplayScreenState();
}

class _DataDisplayScreenState extends State<DataDisplayScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Display'),
        ),
        body: FutureBuilder<List<Task>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              List<Task> tasks = snapshot.data!;
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text('Name: ${tasks[index].name}\n'
                            'Surname: ${tasks[index].surname}\n'
                            'Age: ${tasks[index].age}\n'
                            'Gender: ${tasks[index].gender}\n'
                            'Durumu: ${tasks[index].description}\n'
                            'Bölümü: ${tasks[index].title}\n'),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ));
  }
}
