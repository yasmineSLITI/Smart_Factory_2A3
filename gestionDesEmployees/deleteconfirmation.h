#ifndef DELETECONFIRMATION_H
#define DELETECONFIRMATION_H

#include <QDialog>
#include <QListWidgetItem>
#include<QtMultimedia/QMediaPlayer>

namespace Ui {
class DeleteConfirmation;
}

class DeleteConfirmation : public QDialog
{
    Q_OBJECT

public:
    explicit DeleteConfirmation(QWidget *parent = nullptr);
    ~DeleteConfirmation();

    int getConfirm(){int i = confirmDelete; return i;}

private slots:
    void on_confrimButton_clicked();

    void on_cancelButton_clicked();

private:
    Ui::DeleteConfirmation *ui;
    int confirmDelete;
    QMediaPlayer *trashSound;
};

#endif // DELETECONFIRMATION_H