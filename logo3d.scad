$fn = 100; 

module trackerLogo(thickness) {
	difference() {
	 cube([7.767, 1.2, thickness]);
		translate ([-.01,-.01,.01]) {
			linear_extrude(file="/Users/andy/Dropbox/Things/tracker-logo/logo.dxf", height = thickness * 2, center = true, convexity = 5);
		}
	}
}

//cube([1, .1, .5]);i

cube([1, .1, .5]);

// translate([0, 0, .125]) 
trackerLogo(.2);





