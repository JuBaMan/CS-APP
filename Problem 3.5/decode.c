void decode(long *xp, long *yp, long *zp) {
    long temp = *xp;
    *xp = *zp;
    *zp = *yp;
    *yp = temp;
}