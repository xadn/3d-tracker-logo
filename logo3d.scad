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

cube([800, 120, 20]);
translate([12.5, 0, 0]) trackerLogo(40);





