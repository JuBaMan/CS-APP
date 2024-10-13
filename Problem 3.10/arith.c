short arith3(short x, short y, short z) {
    short t1 = y | z;
    short t2 = t1 >> 9;
    short t3 = ~t2;
    short t4 = t3 - y;
    return t4;
}