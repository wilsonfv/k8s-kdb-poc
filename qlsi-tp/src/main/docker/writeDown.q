
system"l tick/",(src:first .z.x,enlist"sym"),".q";
date:first "D"$first enlist[string[.z.d-1]],.z.x 1;
endFn:{`f}

replayTp:{[src;dt]h:hopen `::8084;neg[h](`relayTp;src;dt);({x~`f}{h()}/)};

replayTp[src;date]
