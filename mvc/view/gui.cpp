#include <iostream>
#include <QMainWindow>
#include <QApplication>
#include <QGridLayout>
#include <QPainter>
#include "mlp.h"
class DeepPanel : public QMainWindow{
private:
    QGridLayout* layout = new QGridLayout();
public:
    DeepPanel(QSize dims){
        this->setLayout(layout);
        this->setFixedSize(dims);
        this->setEnabled(true);
        this->setFocus();

    }
    void closeEvent(QCloseEvent* event) override{
        QMainWindow::closeEvent(event);
    }
    void paintEvent(QPaintEvent* event) {
        QPainter painter(this);
//        painter.drawLine(QLine(100,100,700,700));
    }
};

int main(int argc, char* argv[]) {
    QApplication app(argc,argv);
    DeepPanel* dp = new DeepPanel(QSize(1000,500));
    dp->showMaximized();
    dp->update();

    MultiLayerPerceptron mlp = MultiLayerPerceptron({2,2,1});  //mlp
    mlp.set_weights({{{-10,-10,15},{15,15,-10}}, {{10,10,-15}}});

//    cout<<"XOR:"<<endl;
//    cout<<"0 0 = "<<mlp.run({0,0})[0]<<endl;
//    cout<<"0 1 = "<<mlp.run({0,1})[0]<<endl;
//    cout<<"1 0 = "<<mlp.run({1,0})[0]<<endl;
//    cout<<"1 1 = "<<mlp.run({1,1})[0]<<endl;


    return app.exec();
}
