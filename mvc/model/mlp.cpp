//
// Created by mostafa on 4/2/23.
//
#include "mlp.h"

auto frand = [](){return (2*(double)rand()/RAND_MAX)-1.0;};

Perceptron::Perceptron(int inputs, double bias) {
    this->bias = bias;
    this->weights.resize(inputs+1);
    std::generate(weights.begin(),weights.end(),frand);

}

void Perceptron::set_weights(std::vector<double> w_init) {
    assert(w_init.size()== this->weights.size());
    weights = w_init; // vector stl copies using overloaded assignment operator
}
double Perceptron::sigmoid(double x){
    return  1/(1+ exp(-x));
}

double Perceptron::run(std::vector<double> x) {
    x.push_back(bias);
    double sum = inner_product(x.begin(),x.end(),weights.begin(),(double)0.0);
    return sigmoid(sum);
}