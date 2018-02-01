
tpPort:"I"$.Q.opt[.z.x]`tpPort;

\l schema.q

symUniv:`$/:.Q.A;
maxRows:10;
strLen:100;

.z.ts:{nr:rand maxRows;`qlsData insert (nr?.z.p;nr?symUniv;nr?`3;nr?`4;nr?1000j;nr?1000j;string nr?`4;string nr?`4;string nr?`4;nr?`4;nr?`4;nr?`3;string nr?`4;string nr?`4;nr?`3;nr?`3;nr?`3;1_({strLen?.Q.an}\)[nr;""])};

\t 1000
