import "package:flutter/material.dart";
import "package:task_2_ui/widgets/bottomsheetimages.dart";
import "package:task_2_ui/widgets/profileimage.dart";
import "package:task_2_ui/widgets/roundedImage.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String selectedValue = "March";
  List<String> dropDownValue = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  @override
  Widget build(BuildContext context) {
    // var w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 210, 53, 42),
          leading: const Icon(Icons.menu),
          actions: [
            _appBarAction(),
          ],
        ),
        body: Column(
          children: [
            _calender(),
            const SizedBox(
              height: 10,
            ),
            _teamMeeting(),
            const SizedBox(
              height: 10,
            ),
            _oneToOne(),
            const SizedBox(
              height: 10,
            ),
            _pmMeeting(),
          ],
        ));
  }

  Widget _appBarAction() {
    return const Padding(
        padding: EdgeInsets.all(10.0),
        child: CircleAvatar(
          child: ProfileImage(),
        ));
  }

  Widget _calender() {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 210, 53, 42),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dropDown(),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedIndex;
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          print("printing index $index");
                          setState(() {
                            selectedIndex = index;
                          });
                          print("printing selected index $selectedIndex");
                        },
                        child: Container(
                          width: 37,
                          decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color.fromARGB(255, 210, 53, 42)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  [
                                    'Sun',
                                    'Mon',
                                    'Tue',
                                    'Wed',
                                    'Thu',
                                    'Fri',
                                    'Sat'
                                  ][index],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                Text(
                                  "${12 + index}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dropDown() {
    return Container(
      // height: 50,
      width: 160.5,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 210, 53, 42),
          border: Border.all(
              color: const Color.fromARGB(255, 210, 53, 42), width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButton(
            value: selectedValue,
            items: dropDownValue.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
              });
            },
            underline: const SizedBox.shrink(),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _teamMeeting() {
    return Container(
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Team Meeting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  "Disscussing the project with the team",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                )
              ],
            ),
            Icon(
              Icons.check_circle,
              color: Colors.black,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget _oneToOne() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "12:00-1:00 PM",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          "One-to-one",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "Repeats every two weeks",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    RoundedImage(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromARGB(180, 255, 255, 255))),
                          child: const Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    const Color.fromARGB(180, 255, 255, 255))),
                            child: const Text(
                              "1 h",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: const Icon(
                        Icons.arrow_outward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pmMeeting() {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            _showBottomSheet();
          },
          child: Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1:00-2:30 PM",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            "PM Meeting",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Disscussion of tasks for\nthe month",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      RoundedImage(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    const Color.fromARGB(180, 255, 255, 255))),
                            child: const Text(
                              "Today",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      const Color.fromARGB(
                                          180, 255, 255, 255))),
                              child: const Text(
                                "1 h 30m",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Icon(
                          Icons.arrow_outward_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        barrierColor: Colors.black,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 600,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            shape: BoxShape.circle),
                        child: const ClipOval(
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            shape: BoxShape.circle),
                        child: const ClipOval(
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.black)),
                    onPressed: () {},
                    child: const Text(
                      "1:00-2:30 PM",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "PM Meeting",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Disscussion of tasks for the month",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const BottomRoundedImage(),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  "Plan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black),
                )),
                _listViewItem(),
              ],
            ),
          );
        });
  }

  Widget _listViewItem() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.5),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 210, 53, 42),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Disscussion of the brief\nfrom the customer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "1:00-1:30",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.5),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Assignment of roles\nin the team",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "1:30-2:00",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.5),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summarising the results\nof the meeting",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "2:00-2:30",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
