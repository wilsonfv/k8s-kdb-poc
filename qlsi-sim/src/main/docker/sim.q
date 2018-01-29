
qlsData:([]
    time:`timestamp$();
    sym:`$();
    msg:()
 );

symUniv:`$/:.Q.A;

.z.ts:{nr:rand 10;`qlsData insert (nr?.z.p;nr?symUniv;1_({100?.Q.an}\)[nr;""])};

\t 1000
