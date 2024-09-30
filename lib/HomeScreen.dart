import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasks = [];
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ToDo App")),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage('assets/floral_background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                const Text(
                  "Add your Tasks",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: taskController,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your Task",
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    setState(() {
                      if (taskController.text != "") {
                        tasks.add(taskController.text);
                      }
                    });
                    taskController.clear();
                  },
                  child: const Text("Add Task"),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(tasks[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              tasks.remove(tasks[index]);
                            });
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      );
                      // return Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 5,
                      //         blurRadius: 7,
                      //         offset: Offset(0, 3),
                      //       ),
                      //     ],
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Text(tasks[index]),
                      //       IconButton(
                      //         onPressed: () {
                      //           setState(() {
                      //             tasks.remove(tasks[index]);
                      //           });
                      //         },
                      //         icon: const Icon(Icons.delete),
                      //       ),
                      //     ],
                      //   ),
                      // );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ListTile(
// title: Text(
// tasks[index],
// style: const TextStyle(fontWeight: FontWeight.bold),
// ),
// trailing: IconButton(
// onPressed: () {
// setState(() {
// tasks.remove(tasks[index]);
// });
// },
// icon: const Icon(Icons.delete),
// ),
// );
