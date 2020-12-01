#ifndef BILL_H
#define BILL_H
#include "cnx.h"
#include <QMessageBox>
#include <QDebug>
#include <QSqlQueryModel>
#include <QDate>
#include <QSqlQuery>
#include <QMessageBox>


class bill
{
private:
    QString shipperName,payMethod,billNumber,orderID;
    QDate releaseDate;
    int shipperNumber;
    double totalAmount;
public:
    bill();
    bill(QString,QString,QString,QString,int,double,QDate);
    bool ajouter();
    QSqlQueryModel* afficher(int i);
    QSqlQueryModel * afficherList();
    bool supprimer(int id);
    bool edit(int id);
    QSqlQueryModel * afficherOrderedList();
    QSqlQueryModel * searchList(int id);
    ////
    void editer(int i );


    void setReleaseDate(QDate ch) {releaseDate=ch;};
     void setShipperName(QString ch) {shipperName=ch;};
     void setPayMethod(QString ch) {payMethod=ch;};
      void setBillNumber(QString  x) {billNumber=x;};
      void setOrderID(QString  x) {orderID=x;};
      void setShipperNumber(int x) {shipperNumber=x;};
      void setTotalAmount(double  x) {totalAmount=x;};



      QDate getReleaseDate() {return releaseDate;};
       QString getShipperName() {return shipperName;};
       QString getPayMethod() {return payMethod;};
       QString  getBillNumber() {return billNumber;};
        QString  getOrderID() {return orderID;};
        int  getShipperNumber() {return shipperNumber;};
        double  getTotalAmount() {return totalAmount;};

};

#endif // BILL_H