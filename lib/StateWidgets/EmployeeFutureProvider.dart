import 'package:developer_q/models/model.dart';
import 'package:developer_q/widgets/MyDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final employeeFutureProvider = FutureProvider<List<Employee>>((ref) async {
  return fetchEmployees();
});

Future<List<Employee>> fetchEmployees() async {
  List<Employee> tmpList = new List<Employee>();
  for (var i = 1; i <= 10; i++) {
    var dio = Dio();
    final response = await dio.get('https://rickandmortyapi.com/api/character/$i');
    if (response.statusCode == 200) {
      var emp=Employee(response.data['name'], response.data['species'],
        response.data['gender'], response.data['image']);
      tmpList.add(emp);
    }else{
      throw Exception('Couldn\'t load photos');
    }
  }
  return tmpList;
}

class EmployeeFutureProvider extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final employeeProvider = watch(employeeFutureProvider);
    return employeeProvider.when(
        data: (employees) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20.0),
            child: GridView.count(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            children: List.generate(employees.length, (index) {
              return _myCard(employees[index].url,context);
            }),
              ),
          )),
        loading: () => Center(
              child: const CircularProgressIndicator(),
            ),
        error: (err, stack) => Text("Error: $err"));
  }
  Widget _myCard(String _url,context){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: InkWell(
                onTap: () {
                  showDialog(context: context,
                  builder: (context) {
                    return MyDialog();
                  },
                  );
                },
                child: Image.network(_url)
              ),
            ),
        ],
      )
    );
  }
}
