use <akkum18650.scad>

echo("Работа Ропацкого Евгения!");


fitnes_frame = 4;

w_back = 70;
h_back = 45;
thickness_back = 1;
thickness_walls = 2;
thickness_bottom = 2;
h_walls = 4;
gap_backlight = 1.5;
build_frame();
d_akkum = 19;
h_akkum = 65;



////rotate([90, 0, 0])
//translate([0, 0, 4])
//backlight();
//kit_frame();
//akkum18650();



module kit_frame(){
bottom();
color("blue")
translate([0, 0, h_walls/2+thickness_bottom/2])
walls();
}

module walls(){
    difference(){
        cube([w_back + 2*thickness_walls, h_back+2*thickness_walls+gap_backlight, h_walls],center = true);
        color ("red")
        cube([w_back+gap_backlight, h_back+gap_backlight, h_walls +1],center = true);
    }
}
module bottom(){
cube([w_back + 2*thickness_walls, h_back+2*thickness_walls, thickness_bottom],center = true);
}

module backlight() {
    color("lightgreen")
    cube([w_back, h_back, thickness_back], center = true);
}

