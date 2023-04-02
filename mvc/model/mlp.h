#pragma once
#include <iostream>
#include <vector>
#include <cmath>
#include <random>
#include <algorithm>
#include <ctime>
#include <numeric>
#include <assert.h>
using namespace std;
class Perceptron{
public:
    vector<double> weights;
    double bias;
    Perceptron(int inputs, double bias=1.0);
    double run(vector<double>);
    void set_weights(vector<double>w_init);
    double sigmoid(double);
};
class MultiLayerPerceptron{
public:
    vector<int> layers;
    vector<vector<Perceptron>> network;
    vector<vector<double>> values;// temp vector to hold intermediate results
    vector<vector<double>> d; // error terms for neurons

    double bias;
    double lr;

    MultiLayerPerceptron(vector<int> layers,double bias=1.0,double lr =0.5);
    void set_weights(vector<vector<vector<double>>>w_init);
    void print_weights();
    vector<double> run(vector<double> x);
    double bp(vector<double> x, vector<double> y);

};