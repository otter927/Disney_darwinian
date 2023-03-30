#include <vector>
#include <iterator>
#include <algorithm>
#include <../../frugally-deep-master/include/fdeep/fdeep.hpp>

static std::vector<float>
bin(int n, size_t digits) {
  std::vector<float> ret;
  for (auto i = 0; i < digits; i++) ret.push_back((float)((n >> i) & 1));
  return ret;
}

static int
dec(const std::vector<float> d) {
  auto it = std::max_element(d.begin(), d.end());
  return std::distance(d.begin(), it);
}

int
main() {
  const auto model = fdeep::load_model("keras_rnn_tdd.json");
  for (auto i = 1; i <= 100; i++) {
    const auto result = model.predict(
        {fdeep::tensor(fdeep::tensor_shape(static_cast<std::size_t>(7)),
        bin(i, 7))});
    switch (dec(result[0].to_vector())) {
      case 0: std::cout << i << std::endl; break;
      case 1: std::cout << "Fizz" << std::endl; break;
      case 2: std::cout << "Buzz" << std::endl; break;
      case 3: std::cout << "FizzBuzz" << std::endl; break;
    }
  }
}
