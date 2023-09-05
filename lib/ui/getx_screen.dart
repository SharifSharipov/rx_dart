import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:rx_dart/data/counter_controller/counter_contorller.dart';
class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CounterController controller=Get.put(CounterController());
    print("Ui chiziildi 0k-1");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Controller Screen GETX"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx((){
                print("Ui chiziildiv marta");
                return Center(child: Text("${controller.counter}",style: TextStyle(fontSize: 30),));
              }),
            ],
          ),
        ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
            controller.increment();
          }, child: Icon(Icons.add)),
          FloatingActionButton(onPressed: (){
            controller.decrement();
          }, child:  Icon(Icons.remove)),
          FloatingActionButton(onPressed: (){
            controller.reset();
          }, child: Icon(Icons.restart_alt_rounded)),

        ],
      )
    );
  }
}
