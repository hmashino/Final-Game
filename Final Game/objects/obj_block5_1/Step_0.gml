
if (!obj_controller.is_shadow) {
    
    visible = false;
    exit;
}
 
if (obj_controller.is_shadow) {
    
    visible = true;
}
if (life <= 0) {
    instance_destroy();
}
if (global.activate5){
solid = false
x += hsp;
y += vsp;

life -= 1;
image_alpha -= 0.03;
}