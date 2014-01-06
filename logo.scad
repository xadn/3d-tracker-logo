$fn = 100; 

module trackerLogo(thickness) {
  dxfScale = 100;
  difference() {
   cube([7.767 * dxfScale, 1.2 * dxfScale, thickness]);
    translate ([-.01,-.01,-.01]) {
      linear_extrude(height = thickness * 2, convexity = 5) 
      import(file = "/Users/andy/Dropbox/Things/tracker-logo/logo.dxf");
		}
	}
}

armThickness = 7.5;
// armThickness = 10;
thickness = 40;
upperCaseTop = 85.7;
lowerCaseTop = 69.5;
baseline = 31;

module support() {
  union() {
    translate([0, 0, 0]) cube([5, 30, 5]);
    translate([0, 28, 0]) rotate([0, 0, 57]) cube([5, 20, 5]);
    translate([0, 30, 0]) rotate([0, 0, -57]) cube([5, 20, 5]);
  }
}

module arm() {
  translate([0, -armThickness/2 + 2.5, 0]) 
  cube([20, armThickness, armThickness]);
}

// Logo
translate([0, 0, (armThickness - thickness)/2]) trackerLogo(thickness);

// Icon Support
translate([60, 112, 0]) rotate([180, 0, 0]) support();
translate([60, 10, 0]) support();
// P Support
translate([110, upperCaseTop, 0]) arm();
translate([110, baseline, 0]) arm();
// I Support
translate([170, lowerCaseTop, 0]) arm();
// V Support
translate([190, lowerCaseTop, 0]) arm();
// O Support
translate([260, lowerCaseTop, 0]) arm();
// T Support
translate([300, lowerCaseTop, 0]) arm();
// A Support
translate([340, lowerCaseTop, 0]) arm();
// L Support
translate([400, baseline, 0]) arm();
// T Support
translate([420, upperCaseTop, 0]) arm();
// R Support
translate([472, baseline, 0]) arm();
// A Support
translate([519, lowerCaseTop, 0]) arm();
// C Support
translate([580, baseline, 0]) arm();
// K Support
translate([630, 66.5, 0]) arm();
// E Support
translate([685, lowerCaseTop, 0]) arm();
// R Support
translate([725, lowerCaseTop, 0]) arm();




