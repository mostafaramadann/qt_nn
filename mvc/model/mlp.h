#pragma once
#include <iostream>
#include <vector>
#include <cmath>
#include <random>
#include <algorithm>
#include <ctime>
#include <numeric>
#include <assert.h>
class Perceptron{
public:
    std::vector<double> weights;
    double bias;
    Perceptron(int inputs, double bias=1.0);
    double run(std::vector<double>);
    void set_weights(std::vector<double>w_init);
    double sigmoid(double);
};