//
// Created by mostafa on 4/2/23.
//
#include "mlp.h"

auto frand = [](){return (2*(double)rand()/RAND_MAX)-1.0;};

Perceptron::Perceptron(int inputs, double bias) {
    this->bias = bias;
    this->weights.resize(inputs+1);
    generate(weights.begin(),weights.end(),frand);

}

void Perceptron::set_weights(vector<double> w_init) {
    assert(w_init.size() == this->weights.size());
    weights = w_init; // vector stl copies using overloaded assignment operator
}
double Perceptron::sigmoid(double x){
    return  1/(1+ exp(-x));
}

double Perceptron::run(vector<double> x) {
    x.push_back(bias);
    double sum = inner_product(x.begin(),x.end(),weights.begin(),(double)0.0);
    return sigmoid(sum);
}

MultiLayerPerceptron::MultiLayerPerceptron(vector<int> layers, double bias, double lr) {
    this->layers = layers;
    this->bias = bias;
    this->lr = lr;
    for (int i=0;i<layers.size();i++)
    {   this->values.push_back(vector<double>(layers[i],0.0));
        this->network.push_back(vector<Perceptron>());
        if (i>0) // input layer
            for (int k=0;k<layers[i];k++){
                network[i].push_back(Perceptron(layers[i-1],bias));
            }
    }
}

void MultiLayerPerceptron::set_weights(vector<vector<vector<double>>> w_init) {
    for (int i=0;i<w_init.size();i++)
    {
        for (int k=0;k<w_init[i].size();k++)
        {
            network[i+1][k].set_weights(w_init[i][k]);
        }
    }
}
void MultiLayerPerceptron::print_weights() {
    cout << endl;
    for (int i = 1; i < network.size(); i++){
        for (int j = 0; j < layers[i]; j++) {
            cout << "Layer " << i+1 << " Neuron " << j << ": ";
            for (auto &it: network[i][j].weights)
                cout << it <<"   ";
            cout << endl;
        }
    }
    cout << endl;
}

vector<double> MultiLayerPerceptron::run(const vector<double> x) {
    values[0] = x;
    for(int i=1;i< this->network.size();i++)
    {
        for(int k=0; k< this->network[i].size();k++) {
            values[i][k] = network[i][k].run(this->values[i-1]);
        }
    }
    return values.back();
}