import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CreateJob(),
    );
  }
}

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  final TextEditingController _controllerRefnum = TextEditingController();






  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Scaffold(
          drawer: const Icon(Icons.menu),
          appBar: AppBar(
            title: const Text('Create Job',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xFF1A237E),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Create Job',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Reference Number',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            ),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                      controller: _controllerRefnum,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border:OutlineInputBorder(),
                                        label: Center(
                                          child: Text('Reference Number',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15
                                           ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: const Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text('Branch'),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child:
                                        AutoComplete(),
                                    // child: TextFormField(
                                    //   style: const TextStyle(
                                    //     fontSize: 20,
                                    //   ),
                                    //
                                    //   textAlign: TextAlign.center,
                                    //   decoration: const InputDecoration(
                                    //     border: OutlineInputBorder(),
                                    //     label: Center(
                                    //       child: Text('Branch',
                                    //       style: TextStyle(
                                    //         color: Colors.grey,
                                    //         fontWeight: FontWeight.w400,
                                    //         fontSize: 15
                                    //       ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("Customer"),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Center(
                                          child: Text('Customer',
                                          style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          ),
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Depot/Installation Location'),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20
                                      ),
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Center(
                                          child: Column(
                                            children: [
                                              Text('Installation Location',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Accessories',
                              style: TextStyle(
                                fontSize: 15
                              ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(left: 30, right: 30),
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: CheckboxListTile(
                                        value: isChecked1,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked1 = value!;
                                          });
                                        },
                                      title: const Text('Heating Pad',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 30, right: 30),
                                    decoration: BoxDecoration(
                                      border: Border.all()
                                    ),
                                    child: CheckboxListTile(
                                      value: isChecked2,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked2 = value!;
                                        });
                                      },
                                      title: const Text('Bulging Reduction'),
                                    ),
                                  ),

                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 30, right: 30),
                                    decoration: BoxDecoration(
                                      border: Border.all()
                                    ),
                                    child: CheckboxListTile(
                                        value: isChecked3,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked3 = value!;
                                          });
                                        },
                                      title: const Text('Tub Liner'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 30, right: 30),
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: CheckboxListTile(
                                      value: isChecked4,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked4 = value!;
                                        });
                                      },
                                      title: const Text('ETL liner'),
                                    ),
                                  ),
                                  const SizedBox(height: 20,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 50,
                        margin: const EdgeInsets.all(5),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Total Flexitank'),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20
                                      ),
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Center(
                                          child: Column(
                                            children: [
                                              Text('Total Flexitank',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){},
                child: const Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 170,
                      vertical: 20,
                    ),
                    child: Text(
                      'Create',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


class AutoComplete extends StatefulWidget {
  const AutoComplete({super.key});

  @override
  State<AutoComplete> createState() => _AutoCompleteState();
}

class _AutoCompleteState extends State<AutoComplete> {
  static const List<String> _kOptions = <String>
  [
    'Vietnam',
    'Warehouse',
    'Port',
    'Thailand',
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              debugPrint('You just Selected $selection');
            },
            fieldViewBuilder: (
                BuildContext context,
                TextEditingController textEditingController,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted,
                ) {
              return TextFormField(
                controller: textEditingController,
                focusNode: focusNode,
                decoration: const InputDecoration(
                  labelText: 'Branch',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '';
                  }
                  return null;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}



