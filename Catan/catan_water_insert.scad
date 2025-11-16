
$fn=200;
THICK = 1;

TILE_L = 9;
TILE_COUNT = 24;

BOX_W = 64;
BOX_L = 188.5;
BOX_H = 32;

difference() {
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        BOX_H]);

    translate([33, -5, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 300, r = 33, $fn=6);

    for (i = [0 : 1 : TILE_COUNT / 2] ) {
        tile_slot(1 + (i * 5.5) + (TILE_L * i));
        tile_slot(1 + (i * 5.5) + (TILE_L * (i + 1)));
    }
}

module tile_slot(y) {
    translate([33, y, 38])
        rotate([0, 90, 90]) 
            cylinder(h = 5.5, r = 37, $fn=6);
}
