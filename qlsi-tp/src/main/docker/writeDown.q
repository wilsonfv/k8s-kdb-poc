
system"l tick/",(src:first .z.x,enlist"sym"),".q";
date:first "D"$first enlist[string[.z.d-1]],.z.x 1;
endFn:{show "Writing data"};

show"Writing data for date ",string date;

/replayTp:{[src;dt]h:hopen `::8084;neg[h](`relayTp;src;dt);({x~`f}{h()}/)};
replayTp:{[src;dt]h:hopen `$":qlsi-tp.test1.svc.cluster.local:8084";neg[h](`relayTp;src;dt)};
upd:insert;

replayTp[src;date];

show"Count of table is now",string count qlsData
