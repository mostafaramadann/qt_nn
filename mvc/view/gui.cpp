#include <iostream>
#include <QMainWindow>
#include <QApplication>
#include <QGridLayout>
#include <QPainter>

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
    std::cout << "Hello, World!" << std::endl;
    return app.exec();
}
