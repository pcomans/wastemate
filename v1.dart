import "recology.dart";

void main() {
  print(whereToPut("box"));
}

String whereToPut(String itemName) {
  List<String> matchCompost = compost.where((c) => c.toLowerCase().contains(itemName.toLowerCase()));
  List<String> matchRecycling = recycling.where((c) => c.toLowerCase().contains(itemName.toLowerCase()));

  String response = "";
  if (matchCompost.length == 0 && matchRecycling.length == 0) {
    response = "You can't recycle or compost that.";
  }
  if (matchCompost.length > 0) {
    response += "You can compost ${matchCompost.join(" and ")}. ";
  }
  if (matchRecycling.length > 0) {
    response += "You can recycle ${matchRecycling.join(" and ")}.";
  }
  return response;
}
