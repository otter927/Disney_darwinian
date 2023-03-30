#include <iostream>
#include <vector>
#include "cppflow/cppflow.h"
using namespace std;

int main() {

    // Load the model
    cppflow::model model("keras_rnn_tdd");

    // Load an image
//    auto input = cppflow::decode_jpeg(cppflow::read_file(std::string("image.jpg")));
    vector<float> v1{1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9, 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9, 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9, 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9, 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1, 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1, 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1, 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1};
    vector<int64_t> v2{2, 4, 16};

//[[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
//[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
//[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
//[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9]]


    auto input = cppflow::tensor(v1, v2);

    cout << input << endl;


    // Cast it to float, normalize to range [0, 1], and add batch_dimension
//    input = cppflow::cast(input, TF_UINT8, TF_FLOAT);
//    input = input / 255.f;
//    input = cppflow::expand_dims(input, 0);

    // Run
    auto output = model({{"serving_default_simple_rnn_input:0", input}},{"StatefulPartitionedCall:0"});
    
    cout << output[0] << endl;

    // Show the predicted class
//    std::cout << cppflow::arg_max(output, 1) << std::endl;
}
