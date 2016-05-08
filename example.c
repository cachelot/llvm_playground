
int hash1(int val) {
    static int seed = 0x12345678;
    seed *= val;
    if (seed == 0) {
        seed = 0x12345678;
    }
    return val ^ seed;
}

int hash2(int val) {
    static int seed = 0x87654321;
    seed *= val;
    if (seed == 0) {
        seed = 0x87654321;
    }
    return val ^ seed;
}

int function(int condition) {
    int result;
    if (condition) {
        result = hash1(42);
    } else {
        result = hash2(13);
    }
    return result;
}
