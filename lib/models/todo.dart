import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

class Todo {
  Todo({
    this.description,
    this.completed = false,
    String id,
  }) : id = id  ?? _uuid.v4();

  final String id;
  final String description;
  final bool completed;

  @override
  String toString() {
    return 'Todo(description: $description, completed: $completed)';
  }
}