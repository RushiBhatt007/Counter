module counter(C,M,O);
input C,M;
output [3:0]O;
reg T;
always T=1;
wire x,y,z;
T_FF t1(T,C,O[0]);
xor x1(x,O[0],M);
T_FF t2(T,x,O[1]);
xor x2(y,O[1],M);
T_FF t3(T,y,O[2]);
xor x3(z,O[2],M);
T_FF t4(T,z,O[3]);
endmodule

module T_FF(T,C,Q);
input T,C;
output Q;
wire Q1,C1,a,b,c,d,e,f;
not n1(C1,C);
nand n2(a,C,Q1,T);
nand n3(b,C,Q,T);
nand n4(c,a,d);
nand n5(d,b,c);
nand n6(e,c,C1);
nand n7(f,C1,d);
nand n8(Q,e,Q1);
nand n9(Q1,f,Q);
endmodule
