$fn = 100; 

module trackerLogo(thickness) {
  difference() {
   cube([7.767, 1.2, thickness]);
    translate ([-.01,-.01,-.01]) {
      linear_extrude(height = thickness * 2, convexity = 50) 
      import(file = "/Users/andy/Dropbox/Things/tracker-logo/logo.dxf");
		}
	}
}

cube([8, 1.2, .1]);
translate([.125, 0, 0]) trackerLogo(.3);





