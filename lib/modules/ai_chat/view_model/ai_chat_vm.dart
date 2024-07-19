import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/global_data.dart';

class AiChatViewModel extends GetxController {
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('AIBuddy');
  // final CollectionReference _messagesCollection =
  //     FirebaseFirestore.instance.collection('AIBuddy');
  final textEditingController = TextEditingController();
  final messageSendingTextEditingController = TextEditingController();
  final selectedGPTVersion = 1.obs;
  var typedText = ''.obs;

  // Stream controller to manage the stream
  final _messageStreamController = StreamController<QuerySnapshot>();

  // Stream getter to expose the stream
  Stream<QuerySnapshot> get messageStream => _messageStreamController.stream;

  final isFiltering = false.obs;

  @override
  void onInit() {
    _userCollection.where("name", isEqualTo: userNameGlobalData.value)
        .snapshots().listen((snapshot) {
      _messageStreamController.add(snapshot);
    });
    super.onInit();
  }

  // Function to send a message
  // Future<void> sendMessage(String message) async {
  //   try {
  //     await _messagesCollection.add({
  //       'message': message,
  //       'timestamp': DateTime.now(),
  //     });
  //   } catch (e) {
  //     print('Error sending message: $e');
  //   }
  // }
}
