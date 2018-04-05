List<String> compost = [
  "Bread, grains and pasta",
  "Coffee grounds with paper filter",
  "Dairy",
  "Eggshells and eggs",
  "Fruit (pits & peels)",
  "Leftovers and spoiled food",
  "Meat (including bones)",
  "Seafood (including shellfish)",
  "Tea and tea bags",
  "Vegetables",
  "Coffee filters",
  "Greasy pizza boxes",
  "Paper plates",
  "Paper bags, napkins, tissues and towels",
  "Paper take-out boxes and containers (metal handle OK)",
  "Tissues",
  "Branches and brush",
  "Flowers and floral trimmings",
  "Grasses and weeds",
  "Leaves",
  "Tree trimmings (less than 6 inches in diameter and 4 feet long)",
  "Cotton balls and cotton swabs",
  "Hair, fur, and feathers (non-synthetic)",
  "Plastic and cutlery clearly labeled “Compostable”",
  "(green stripe or sticker to allow for easy identification)",
  "Vegetable wood crates (metal wire is okay)",
  "Waxed cardboard",
  "Wood – small pieces of lumber or sawdust from clean wood only (no plywood, press board, painted, stained or treated wood)",
  "Wooden chop sticks",
  "Corks – natural (drop in barrels at Whole Foods)",
];

List<String> recycling = [
  "Aluminum cans",
  "Aluminum foil and trays (ball foil up to softball size)",
  "Caps and lids from bottles, jars and steel (tin) cans",
  "Paint cans (must be empty or dry)",
  "Spray cans (must be empty)",
  "Steel (tin) cans",
  "Clean, dry, empty plastic bags inside a clear plastic bag (the size roughly of a basketball)",
  "Bottles (leave caps on)",
  "Buckets (metal handle ok)",
  "CD’s, DVD’s, CDROM & Cases (remove paper insert)",
  "Coffee cup lids",
  "Containers and clamshells",
  "Corks – plastic",
  "Cups and plates (plastic only, no Styrofoam)",
  "Flower pots and trays – plastic",
  "Laundry detergent bottles",
  "Molded plastic packaging",
  "Toys (no electronics, metal or batteries)",
  "Tubs and lids (i.e.,: yogurt containers and Tupperware)",
  "Utensils – plastic",
  "Linens – Clean and placed in clear bag. Towels, curtains okay.",
  "Fabric – Clean and placed in clear bag. Rips, holes, single socks okay. No sneakers, boots, belts, or purses.",
  "Rags – Clean and placed in clear bag. Towels, curtains okay.",
  "Clothes – Rips, holes, single socks okay. Place clean clothes in clear bag. If clothes are in good condition, please donate them to a thrift store.",
  "Empty, clean coffee cups",
  "Empty, clean ice cream containers",
  "Soup cartons and juice boxes",
  "Paper milk, juice and other beverage cartons",
  "Bags (paper only)",
  "Cardboard (non-waxed)",
  "Cereal boxes and Paperboard (remove plastic liner)",
  "Computer and office paper",
  "Egg cartons (paper)",
  "Envelopes (windows okay)",
  "Junk mail and magazines",
  "Newspapers",
  "Packing or Kraft paper",
  "Phonebooks",
  "Sticky notes",
  "Shredded paper (place in sealed paper bag and label “Shredded Paper”)",
  "Wrapping paper (non-metallic)",
  "Glass bottles and jars only (metal caps and lids too)",
];

void main() {
  print(whereToPut("CD"));
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
