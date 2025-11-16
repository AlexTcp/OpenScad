
$fn=200;

THICK = 1.5;

CARD_L = 149;
CARD_W = 90;
CARD_STACK = 50;

BOX_W = CARD_W + (THICK * 2);
BOX_L = CARD_L + (THICK * 2);
BOX_H = CARD_STACK + (THICK * 2);

SMALL_DECK_STACK = 7;

difference() {
    
    cube(size = [BOX_W, BOX_L, BOX_H]);

    translate([
        THICK, 
        THICK, 
        BOX_H - CARD_STACK]) {
            
        cube(size = [
            CARD_W,
            CARD_L,
            CARD_STACK + 1]);
    }

    // for ( i = [9 : 2 : CARD_L - 6] ){
    //     translate([1, i, 60])
    //         cube(size = [BOX_W - 2, 1, 40]);
    // }
    
    gap();
}

difference() {
    union() {
        for ( i = [0 : 18.5 : CARD_L - 10] ){
            translate([0, i, 0])
                cube(size = [BOX_W, 1, BOX_H - 5]);
        }


    }

    gap();
}

module gap() {
    translate([
        BOX_W / 2,
        490,
        40]) {

        rotate([90, 90, 0]) {
            cylinder(
                h = 1000,
                r = 25);
        }
    }

    translate([
        (CARD_W / 2) - 23.5, 
        -50, 
        40]) {
            
        cube(size = [
            50,
            550,
            50]);
    }   
}
