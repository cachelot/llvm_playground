#include <vector>

int sum(const std::vector<int> & array) {
    int result = 0;
    for (auto i: array) {
        result += i;
    }
    return result;
}
