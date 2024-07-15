// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:admin_dashborad/app/data/models/graph_model.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;
  BarGraphModel({
    required this.label,
    required this.color,
    required this.graph,
  });
  
}
