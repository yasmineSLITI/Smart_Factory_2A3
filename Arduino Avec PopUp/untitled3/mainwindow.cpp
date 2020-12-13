#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    int ret = A.connect_arduino();
     switch(ret){
     case(0): qDebug() << "arduino is available and connected to :" << A.getarduino_port_name();
         break;
     case(1): qDebug() << "arduino is available and not connected to :" << A.getarduino_port_name();
         break;
     case(-1): qDebug() << "arduino is not available" ;
     }
     QObject::connect(A.getserial(),SIGNAL(readyRead()),this,SLOT(update_label()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::update_label()
{
    data=A.read_from_arduino();
    bool ok;
    if(data.toHex().toInt(&ok,16)==1)
    {
         D.setModal(true);
         D.exec();

         if(D.getAlert()==1)
         {
             A.write_to_arduino("1");
         }
    }
            else
    {
         D.hide();
    }
     qDebug() << "data" << data;

}