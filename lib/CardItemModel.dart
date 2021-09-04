import 'package:flutter/material.dart';

class CardItemModel {
  late String cardTitle;
  late IconData icon;
  late int tasksRemaining;
  late double taskCompletion;

  CardItemModel(this.cardTitle, this.icon, this.tasksRemaining, this.taskCompletion);

}