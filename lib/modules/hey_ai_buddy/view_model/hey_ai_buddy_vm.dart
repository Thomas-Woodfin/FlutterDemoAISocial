import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/continue_chatting_item_model.dart';

class HeyAiBuddyViewModel extends GetxController {
  var typedText = ''.obs;
  final textEditingController=TextEditingController();
  final isFiltering=false.obs;
  final selectedCategoryName='AI Dream Men'.obs;
  
  List<ContinueChattingItemModel> continueChatting = [];
  // List<ContinueChattingItemModel> continueChattingSecondRow = [];
  List<ContinueChattingItemModel> continueChattingThirdRow = [];
  List<ContinueChattingItemModel> continueChattingFourthRow = [];

  @override
  void onInit() {
    continueChatting = getContinueChattingItems();
    // continueChattingSecondRow = getContinueChattingSecondRowItems();
    continueChattingThirdRow = getContinueChattingThirdRowItems();
    continueChattingFourthRow = getContinueChattingFourthRowItems();
    super.onInit();
  }

  List<ContinueChattingItemModel> getContinueChattingItems() {
    List<ContinueChattingItemModel> items = [
      ContinueChattingItemModel("assets/images/img_continue_chatting_1.png", "Megumin"),
      ContinueChattingItemModel("assets/images/img_continue_chatting_2.png", "Lion"),
      ContinueChattingItemModel("assets/images/img_continue_chatting_3.png", "Hu Tao"),
      ContinueChattingItemModel("assets/images/img_continue_chatting_4.png", "Anya Forger")
    ];
    return items;
  }

  // List<ContinueChattingItemModel> getContinueChattingSecondRowItems() {
  //   List<ContinueChattingItemModel> items = [
  //     ContinueChattingItemModel("assets/images/ic_featured.png", "Featured"),
  //     ContinueChattingItemModel("assets/images/ic_animals.png", "Animals"),
  //     ContinueChattingItemModel("assets/images/ic_anim.png", "Anime"),
  //     ContinueChattingItemModel("assets/images/ic_games.png", "Games"),
  //     ContinueChattingItemModel("assets/images/ic_discover.png", "Discover"),
  //     ContinueChattingItemModel("assets/images/ic_helpers.png", "Helpers"),
  //     ContinueChattingItemModel("assets/images/ic_img_generating.png", "Image Generating"),
  //     ContinueChattingItemModel("assets/images/ic_vtuber.png", "VTuber"),
  //     ContinueChattingItemModel("assets/images/ic_game_characters.png", "Game Characters"),
  //     ContinueChattingItemModel("assets/images/ic_language_learning.png", "Language Learning"),
  //     ContinueChattingItemModel("assets/images/ic_discussion.png", "Discussion"),
  //     ContinueChattingItemModel("assets/images/ic_religion.png", "Religion"),
  //     ContinueChattingItemModel("assets/images/ic_anim_game_character.png", "Anime Game Characters"),
  //     ContinueChattingItemModel("assets/images/ic_comedy.png", "Comedy"),
  //     ContinueChattingItemModel("assets/images/ic_philosophy.png", "Philosophy"),
  //     ContinueChattingItemModel("assets/images/ic_politics.png", "Politics"),
  //     ContinueChattingItemModel("assets/images/ic_books.png", "Books"),
  //     ContinueChattingItemModel("assets/images/ic_history.png", "History"),
  //   ];
  //   return items;
  // }

  Future<Stream<QuerySnapshot>> getContinueChattingSecondRowItems() async{
    return FirebaseFirestore.instance.collection("AllAIBuddyCategories").snapshots();
  }

  List<ContinueChattingItemModel> getContinueChattingThirdRowItems() {
    List<ContinueChattingItemModel> items = [
      ContinueChattingItemModel("assets/images/img_continue_chatting_third_row_1.png", "Megumin"),
      ContinueChattingItemModel("assets/images/img_continue_chatting_third_row_2.png", "Anya Forger"),
    ];
    return items;
  }

  List<ContinueChattingItemModel> getContinueChattingFourthRowItems() {
    List<ContinueChattingItemModel> items = [
      ContinueChattingItemModel("assets/images/img_continue_chatting_third_row_3.png", "Super School RPG"),
      ContinueChattingItemModel("assets/images/img_continue_chatting_third_row_1.png", "Samurai Robot"),
    ];
    return items;
  }
}
