
gcpConfig:.j.k first read0 hsym `$"/config/gcp-env.conf";
.z.zd:(17;2;6);

maxSize:100000;
system"l tick/",(src:first .z.x,enlist"sym"),".q";
dt:"D"$first (1_.z.x),enlist[string[.z.d-1]];
writeData:{[t]show"Writing ",string[count value t]," rows of data";(` sv (`:/hdb/qlsDb;`$string dt;t;`))upsert .Q.en[`:/hdb/qlsDb]value t};
endFn:{writeData[`qlsData];show"Finished running qlsData";exit 0};

show"Writing data for date ",string dt;

replayTp:{[src;dt]h:hopen `$":qlsi-tp.",gcpConfig[`k8sNamespace],".svc.cluster.local:8084";neg[h](`relayTp;src;dt)};
/upd:insert;

upd:{[t;x]
    t insert x;
    if[(maxSize<>0)&count[value t]>maxSize;
        writeData[t];
        delete from t
     ];
 };

replayTp[src;dt];

