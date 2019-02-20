// Run features and scenarios (@Win10 and not @LoginForm)
function RunByTag(){
  // Iterate through features
  for(i = 0; i < Features["Count"]; i++) {
    var feature = Features["Item"](i);
    // Call a custom function to check feature tags
    if (checkBDDItem(feature))
      feature["Run"]();
    else
      // Iterate through feature scenarios
      for(j = 0; j < feature["Scenarios"]["Count"]; j++) {
        scenario = feature["Scenarios"]["Item"](j)
        // Call a custom function to check scenario tags
        if (checkBDDItem(scenario))
          scenario["Run"]();
      }
  }
}

// Check feature and scenario tags
function checkBDDItem(BDDItem) {
  return BDDItem["Tags"]["Contains"]("@SmokeTest");
}