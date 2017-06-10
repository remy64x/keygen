use <keygen.scad>
include <sc4.gen.scad>

bitting_code = "024689";

cut_locations = [for(i=[.231, .3872, .5434, .6996, .8558, 1.012]) i*25.4];
depth_table = [for(i=[0.335:-0.015:0.199]) i*25.4];

heights = key_code_to_heights(bitting_code, depth_table);

difference() {
    key_blank(outline_points,
              warding_points,
              outline_paths=outline_paths,
              engrave_right_points=engrave_points,
              engrave_right_paths=engrave_paths,
              engrave_left_points=engrave_points,
              engrave_left_paths=engrave_paths,
              offset=-outline_points[187],
              plug_diameter=12.7);
    key_bitting(heights, cut_locations, .7874);
}
