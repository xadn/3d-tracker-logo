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
armWidth = 25;
thickness = 40;
upperCaseTop = 85.7;
lowerCaseTop = 69.5;
baseline = 31;

module support() {
  union() {
    translate([0, 0, 0]) cube([armThickness, 30, armWidth]);
    translate([0, 28, 0]) rotate([0, 0, 57]) cube([armThickness, 20, armWidth]);
    translate([0, 30, 0]) rotate([0, 0, -57]) cube([armThickness, 20, armWidth]);
  }
}

module arm(xSize = armThickness, zSize = armWidth) {
  translate([0, -xSize/2 + 2.5, 0]) 
  cube([20, xSize, zSize]);
}

// Logo
translate([0, 0, (armWidth - thickness)/2]) trackerLogo(thickness);

// Icon Support
translate([60, 112, armWidth]) rotate([180, 0, 0]) support();
translate([60, 10, 0]) support();
// P Support
translate([110, upperCaseTop, 0]) arm();
translate([110, baseline, 0]) arm();
// I Support
translate([170, lowerCaseTop, 0]) arm();
// Dot Support
translate([198.78, lowerCaseTop, 0]) 
rotate([0, 0, 90]) arm();
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
translate([478, 72.5, -2.5]) arm(3.5, 30);
// translate([472, baseline, 0]) arm();
// A Support
translate([519, lowerCaseTop, 0]) arm();
// C Support
translate([580, lowerCaseTop, 0]) arm();
// translate([580, baseline, 0]) arm();
// K Support
translate([630, 66.5, 0]) arm();
// translate([622, baseline, 0]) arm();
// E Support
translate([685, lowerCaseTop, 0]) arm();
// translate([685, baseline, 0]) arm();
// R Support
translate([725, lowerCaseTop, 0]) arm();
// translate([725, baseline, 0]) arm();




