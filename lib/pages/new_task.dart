import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  TextEditingController _controller = TextEditingController();
  bool isChecked = false; // Checkbox state
  bool isTextEntered = false; // Track if user has typed something

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isTextEntered = _controller.text.isNotEmpty;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              // Close button at the top-right
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close, size: 36, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              SizedBox(height: 30), // Space between close button and text input

              // Text input field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(fontSize: 36, color: Colors.black , fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Write a new task...",
                    hintStyle: TextStyle(fontSize: 36, color: Color(0xffB7B7B7) , fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Subtask Checkbox
              if (isTextEntered) Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      side: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Colors.black,
                    ),
                    //TextField .....

                    Expanded(
                      child: TextField(
                       // controller: _controller,
                        style: TextStyle(fontSize: 17, color: Colors.black , fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: "Add subtask",
                          hintStyle: TextStyle(fontSize: 17, color: Color(0xffB7B7B7) , fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              else SizedBox.shrink() ,

              Spacer(), // Pushes the buttons to the bottom

              // Bottom bar with buttons
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Rounded button on the left
                    Container(
                      width: 62,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffDEDEDE), // Grey background
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.watch_later, color: isTextEntered ? Colors.black : Color(0xff898989), size: 24,),
                        onPressed: () {}, // Add functionality here
                      ),
                    ),

                    SizedBox(width:8), // Space between buttons

                    // Save button (disabled look)
                    Expanded(
                      child: ElevatedButton(
                        onPressed:  isTextEntered ? () {} : null, // Enabled only when text is entered
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16 , horizontal: 21),
                          backgroundColor: isTextEntered ? Color(0xff393433) : Color(0xffDEDEDE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Save",
                          style: TextStyle(color: isTextEntered ? Colors.white : Color(0xff898989), fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
