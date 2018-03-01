
//var m = argument0[Y]/argument0[X];
var rise = argument0[Y2]-argument0[Y1];
var run = argument0[X2]-argument0[X1]
if run==0 run=0.0001
var m = rise/run;
if m==0 m=0.0001;
m=-1/m;

var p_mid = line_middle(argument0)

// y = m(x-x1) + y1
// x = ((y-y1)/m)+x1
var p;
p_[0] = point(0 , (m*(0 - p_mid[X]))+ p_mid[Y])
p_[1] = point(W , (m*(W - p_mid[X]))+ p_mid[Y])
p_[2] = point(((0-p_mid[Y])/m)+ p_mid[X], 0)
p_[3] = point(((H-p_mid[Y])/m)+ p_mid[X], H)

var t=0, res;
for(i=0 ; i<=3 ; ++i){
pp_ = p_[i]
if is_between(pp_[X],0,W) and is_between(pp_[Y],0,H){
res[t] = pp_
t++;
}
}

//for(i=0; i<len(res); ++i){
lin = line(res[0], res[1])
draw_line_pika(lin)
draw_point_square(res[0])
draw_point_square(res[1])
//draw_point_pika(res[i])
//}
