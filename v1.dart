import "recology.dart";

void main() {
  print(whereToPut("coffee grounds"));
}

List<String> matchStruct(String itemName, List<Map<String, dynamic>> structs) {
  List<String> matches = [];
  structs.forEach((Map<String, dynamic> c) {
    List<String> terms = c["terms"];
    String desc = c["desc"];
    String matchTerms = terms.firstWhere(
      (String t) => t.toLowerCase().contains(itemName.toLowerCase()),
      orElse: () => null,
    );
    if (matchTerms != null) {
      matches.add(desc);
    }
  });
  return matches;
}

String whereToPut(String itemName) {
  List<String> matchCompost = matchStruct(itemName, compost);

  List<String> matchRecycling = matchStruct(itemName, recycling);

  String response = "";
  if (matchCompost.length == 0 && matchRecycling.length == 0) {
    response = "I don't know if you can recycle or compost ${itemName}.";
  }
  if (matchCompost.length > 0) {
    response += "You can compost ${matchCompost.join(" and ")}. ";
  }
  if (matchRecycling.length > 0) {
    response += "You can recycle ${matchRecycling.join(" and ")}.";
  }
  return response;
}
