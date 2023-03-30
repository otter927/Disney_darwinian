/*
    ANNT - Artificial Neural Networks C++ library

    MNIST handwritten digits classification example with Recurrent ANN

    Copyright (C) 2018, cvsandbox, cvsandbox@gmail.com

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
*/

#if defined(_MSC_VER) && defined(_DEBUG)
#define _CRTDBG_MAP_ALLOC
#include <crtdbg.h>
#endif

#include <stdio.h>
#include <chrono>

#include "ANNT.hpp"
#include "MNISTParser.hpp"

using namespace std;
using namespace std::chrono;

using namespace ANNT;
using namespace ANNT::Neuro;
using namespace ANNT::Neuro::Training;

#define MNIST_IMAGE_WIDTH  (28)
#define MNIST_IMAGE_HEIGHT (28)

// Names of MNIST data files.
// Available at: http://yann.lecun.com/exdb/mnist/
static const char* MNIST_TRAIN_LABELS_FILE = "data/train-labels.idx1-ubyte";
static const char* MNIST_TRAIN_IMAGES_FILE = "data/train-images.idx3-ubyte";
static const char* MNIST_TEST_LABELS_FILE  = "data/t10k-labels.idx1-ubyte";
static const char* MNIST_TEST_IMAGES_FILE  = "data/t10k-images.idx3-ubyte";

// Extract sequence elements (rows of MNIST images) from pointers to complete samples
static void ExtractSamplesAsSequence( const vector<fvector_t*>& inputPtrs, const vector<fvector_t*>& outputPtrs,
                                      vector<fvector_t>& inputSequence, vector<fvector_t>& outputSequence,
                                      size_t samplesToExtract, size_t startIndex, size_t sequenceLength );

// Extract sequence elements (rows of MNIST images) from samples
static void ExtractSamplesAsSequence( const vector<fvector_t>& inputs, const vector<fvector_t>& outputs,
                                      vector<fvector_t>& inputSequence, vector<fvector_t>& outputSequence,
                                      size_t samplesToExtract, size_t startIndex, size_t sequenceLength );

// Helper function to extract validation samples out of MNIST training data
template <typename T> vector<T> ExtractValidationSamples( vector<T>& allSamples );

// Test classificication accuracy of the recurrent network
size_t TestClassification( shared_ptr<XNeuralNetwork>& net, shared_ptr<ICostFunction> costFunction,
                           const vector<fvector_t>& inputs, const uvector_t& targetLabels,
                           const vector<fvector_t>& targetOutputs, float* pAvgCost );

