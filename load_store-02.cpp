#include <cstdio>
#include <cstdlib>

struct Point {
    long long x, y;
    Point plus(Point arg) const;
};


Point Point::plus(Point arg) const {
    Point r;
    r.x = x + arg.x;
    r.y = y + arg.y;
    return r;
}


int main(int argc, char** argv) {
    Point p1{1, std::atoi(argv[1])};
    Point p2{3, 4};
    Point p3 = p1.plus(p2);
    std::printf("(%lld, %lld)", p3.x, p3.y);

    return 0;
}
