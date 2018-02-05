
system"l tick/",(src:first .z.x,enlist"sym"),".q";
date:"D"$first (.z.d-1),.z.x 1;

replayTp:{[src;dt]h:hopen `::8085;neg[h](`relayTp;src;dt;({x~`f}{h())/)};

replayTp[src;date]
