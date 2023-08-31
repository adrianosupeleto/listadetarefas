import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  String selectedValue = "Todas as Listas";
  void popupMenuSelected(String valueSelected) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: DropdownButton(
          value: selectedValue,
          items: [
            "Todas as Listas",
            "Escritório",
            "Casa",
            "Trabalho",
            "Pessoal",
            "Religião",
            "Família",
            "Lazer"
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          underline: const SizedBox(),
          style: const TextStyle(
            color: Colors.white,
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          dropdownColor: Colors.deepPurple,
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue as String;
            });
          },
          elevation: 8,
          isExpanded: false,
        ),
        leading: const Icon(
          Icons.verified,
          color: Color(0xffffffff),
          size: 24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              child:
                  const Icon(Icons.search, color: Color(0xffffffff), size: 24),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PopupMenuButton(
              onSelected: popupMenuSelected,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem(
                  child: Text("Listas de Tarefas",
                      style: TextStyle(color: Colors.white)),
                  value: "Value 0",
                ),
                const PopupMenuItem(
                  child: Text("Configurações",
                      style: TextStyle(color: Colors.white)),
                  value: "Value 1",
                ),
              ],
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 200),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.bed_rounded,
                        color: Color(0xffffffff), size: 100),
                    Icon(Icons.nightlight_round_outlined,
                        color: Color(0xffffffff), size: 80),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Nada agendado...ZZZ",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: (() {}),
          backgroundColor: Colors.white,
          child: const Icon(Icons.add, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
