
.z.zd:(17;2;6);

system"l tick/",(src:first .z.x,enlist"sym"),".q";
dt:"D"$first enlist[.z.x 1],enlist[string[.z.d-1]];
endFn:{show "Writing ",string[count qlsData]," rows of data";.Q.dpft[`:/hdb/qlsDb;dt;`sym;`qlsData];show"Finished running qlsData"};

show"Writing data for date ",string dt;

replayTp:{[src;dt]h:hopen `$":qlsi-tp.test1.svc.cluster.local:8084";neg[h](`relayTp;src;dt)};
upd:insert;

replayTp[src;dt];

