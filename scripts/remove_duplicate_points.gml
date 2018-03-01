// takes array replaces duplicates with NIL(-1) macro
var l=len(argument0),
t=0,
nil= point(false,false),
arr = false; 

for(i=0; i<l; ++i) {

    cp = argument0[i]   //cp : current point
    for(j=i; j<l; ++j) {
        
        op = argument0[j] //op : other point
        if i!=j  and is_same_point(cp, op) and op[0]!=false
            {
                argument0[j] = nil;
            }
    }
}

for(i=0; i<l; ++i) {
    if !is_same_point(argument0[i],nil) {
        arr[t] = argument0[i];
        t++;
    }
}
    
//return arr;
return arr;
