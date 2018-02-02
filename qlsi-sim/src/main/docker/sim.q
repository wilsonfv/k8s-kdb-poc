
tpPort:"I"$.Q.opt[.z.x]`tpPort;

symUniv:`$/:.Q.A;
maxRows:10;
strLen:100;

connTp:{@[hopen;`$":qlsi-tp.test1.svc.cluster.local:8082";0Ni]};

h:connTp[];

.z.ts:{
    $[null h;
        h::connTp[];
        [
        nr:rand maxRows;
        newData:(nr?symUniv;nr?`3;nr?`4;nr?1000j;string nr?`4;string nr?`4;string nr?`4;nr?`4;nr?`4;string nr?`4;string nr?`4;nr?`3;nr?`3;nr?`3;1_({strLen?.Q.an}\)[nr;""]);
        neg[h](`.u.upd;`qlsData;newData)
        ]
     ];
 };
.z.pc:{if[x=h;h::0Ni]}

\t 1000
