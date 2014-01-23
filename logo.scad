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

armThickness = 8;
armWidth = 22.5;
thickness = 40;
upperCaseTop = 85.7;
lowerCaseTop = 69.5;
baseline = 31;
middleUpper = upperCaseTop - ((upperCaseTop - baseline) / 2);
middleLower = lowerCaseTop - ((lowerCaseTop - baseline) / 2);

module support() {
  union() {
    translate([0, 0, 0]) cube([armThickness, 30, armWidth]);
    translate([0, 28, 0]) rotate([0, 0, 57]) cube([armThickness, 20, armWidth]);
    translate([0, 30, 0]) rotate([0, 0, -57]) cube([armThickness, 20, armWidth]);
  }
}

module arm(length = 20, xSize = armThickness, zSize = armWidth) {
  translate([0, -xSize/2 + 2.5, 0]) 
  cube([length, xSize, zSize]);
}

// Logo
translate([0, 0, (armWidth - thickness)/2]) trackerLogo(thickness);

// Icon Support
translate([60, 112, armWidth]) rotate([180, 0, 0]) support();
translate([60, 10, 0]) support();
// P Support
translate([115, middleLower, 0]) arm(25, 20);
// I Support
translate([168, middleLower+5, 0]) arm(30, 10);
translate([145, middleLower-5, 0]) arm(50, 10);
// Dot Support
translate([198.78, lowerCaseTop, 0]) 
rotate([0, 0, 90]) arm();
// V Support
translate([190, middleLower, 0]) arm(37, 20);
// O Support
translate([245, middleLower, 0]) arm(25, 20);
// T Support
translate([308, middleLower, 0]) arm(20, 20);
// A Support
translate([330, middleLower, 0]) arm(20, 20);
// L Support
translate([397, middleLower, 0]) arm(20, 20);
// T Support
translate([420, middleLower, 0]) arm(40, 20);
// R Support
translate([465, middleLower, 0]) arm(40, 20);
// A Support
translate([505, middleLower, 0]) arm(25, 20);
// C Support
translate([575, middleLower, 0]) arm(20, 20);
// K Support
translate([630, 66.5, 0]) arm();
translate([622, baseline, 0]) arm();
// E Support
translate([650, middleLower, 0]) arm(50, 20);
// R Support
translate([731, middleLower+10, 0]) arm(20, 20);
translate([727, middleLower-19, 0]) arm(20, 8);




