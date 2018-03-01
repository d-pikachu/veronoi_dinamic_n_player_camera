
var lin = argument0

//slope
var rise = lin[Y2]-lin[Y1];
var run = lin[X2]-lin[X1]
if run==0 run=0.0001
var m = rise/run;
if m==0 m=0.0001;
m=-1/m;

var p_mid = line_middle_point(argument0)

// y = m(x-x1) + y1
// x = ((y-y1)/m)+x1
var p=-1;
p_[0] = point(0 , (m*(0 - p_mid[X]))+ p_mid[Y])
p_[1] = point(W , (m*(W - p_mid[X]))+ p_mid[Y])
p_[2] = point(((0-p_mid[Y])/m)+ p_mid[X], 0)
p_[3] = point(((H-p_mid[Y])/m)+ p_mid[X], H)


var l_t=0, //local index
e_p=-1; //end points
for(i=0 ; i<=3 ; ++i) {
    c_p = p_[i] //current_point
    if is_between(c_p[X],0,W) and is_between(c_p[Y],0,H) {
        e_p[l_t] = c_p
        l_t++;
    }
}

lin = line(e_p[0], e_p[1])
//draw_line_pika(lin)
return lin
