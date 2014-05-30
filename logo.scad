$fn = 100;

module rawLogo() {
  linear_extrude(height = 20, convexity = 5) {
    resize([0, 100, 0], auto=[true,true,true]) {
      import(file = "/Users/andy/Dropbox/Things/tracker-logo/logo.dxf");
    }
  }
}

module trackerLogo() {
  difference() {
    translate([0.5, 0.5, 0.5]) cube([621, 98, 19]);
    rawLogo();
  }
}

module trackerSupports() {
  intersection() {
    translate([0, 32, 0]) cube([620, 20, 20]);

    rawLogo();
  }
}



// hull() {
  trackerLogo();
// }
// trackerSupports();
// trackerLogo

