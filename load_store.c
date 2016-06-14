

typedef struct {
    int v1, v2, v3;
} S;

int heavy_compute(int a, int b) {
    S s;
    s.v1 = a;
    s.v2 = b;
    s.v3 = s.v1 + s.v2;
    return s.v3;
}
