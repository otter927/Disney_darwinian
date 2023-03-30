#include <iostream>
#include "cppflow/cppflow.h"


int main() {

    // Load the model
    cppflow::model model("coolpredictor");

    // Load an image
    auto input = cppflow::decode_jpeg(cppflow::read_file(std::string("image.jpg")));

    // Cast it to float, normalize to range [0, 1], and add batch_dimension
    input = cppflow::cast(input, TF_UINT8, TF_FLOAT);
    input = input / 255.f;
    input = cppflow::expand_dims(input, 0);

    // Run
    auto output = model(input);

    // Show the predicted class
    std::cout << cppflow::arg_max(output, 1) << std::endl;
}
