#include "employee.h"

Employee::Employee()
{

}

Employee::Employee(int phoneNumber,float salary,QString id,QString firstName,QString lastName,QString sex,QString adresse,QString birthDate,QString hireDate,QString jobTitle,QString email)
{
    this->id=id;
    this->phoneNumber=phoneNumber;
    this->salary=salary;
    this->firstName=firstName;
    this->lastName=lastName;
    this->sex=sex;
    this->adresse=adresse;
    this->birthDate=birthDate;
    this->hireDate=hireDate;
    this->jobTitle=jobTitle;
    this->email=email;
}

bool Employee::create()
{
    QSqlQuery query;
    QString sphoneNumber=QString::number(phoneNumber);
    QString ssalary=QString::number(salary);
    query.prepare("INSERT INTO employee (id,firstName,lastName,sex,birthDate,hireDate,adresse,phoneNumber,salary,jobTitle,email)" "VALUES (:id,:firstName,:lastName,:sex,:birthDate,:hireDate,:adresse,:phoneNumber,:salary,:jobTitle,:email)");
    query.bindValue(":id",id);
    query.bindValue(":phoneNumber",sphoneNumber);
    query.bindValue(":salary",ssalary);
    query.bindValue(":firstName",firstName);
    query.bindValue(":lastName",lastName);
    query.bindValue(":sex",sex);
    query.bindValue(":adresse",adresse);
    query.bindValue(":birthDate",birthDate);
    query.bindValue(":hireDate",hireDate);
    query.bindValue(":jobTitle",jobTitle);
    query.bindValue(":email",email);

    return query.exec();
}

QSqlQuery Employee::read(QString info)
{
    QSqlQuery query;
    query.prepare("select * from Employee where id='"+info+"'");
    query.exec();
    query.next();

    return query;

}

bool Employee::Delete(QString info)
{
    QSqlQuery query;
    query.prepare("Delete from Employee where id='"+info+"'");
    return query.exec();
}

QSqlQueryModel * Employee::loadData()
{
    QSqlQueryModel *model=new QSqlQueryModel();
    QSqlQuery query;
    query.prepare("select id from Employee");
    query.exec();
    model->setQuery(query);
    return model;
}

bool Employee::Update()
{
    QSqlQuery query;

    QString sphoneNumber=QString::number(phoneNumber);
    QString ssalary=QString::number(salary);

    query.prepare("update Employee set id='"+id+"',firstName='"+firstName+"',lastName='"+lastName+"',sex='"+sex+"',birthDate='"+birthDate+"',hireDate='"+hireDate+"',adresse='"+adresse+"',phoneNumber='"+sphoneNumber+"',salary='"+ssalary+"',jobTitle='"+jobTitle+"',email='"+email+"' where id='"+id+"'");

    //Creation des variables liées
    query.bindValue(":id",id);
    query.bindValue(":phoneNumber",sphoneNumber);
    query.bindValue(":salary",ssalary);
    query.bindValue(":firstName",firstName);
    query.bindValue(":lastName",lastName);
    query.bindValue(":sex",sex);
    query.bindValue(":adresse",adresse);
    query.bindValue(":birthDate",birthDate);
    query.bindValue(":hireDate",hireDate);
    query.bindValue(":jobTitle",jobTitle);
    query.bindValue(":email",email);

    //exec() envoie la requete pour l'executer
    return query.exec();
}

QSqlQueryModel * Employee::search(QString info)
{
    QSqlQueryModel *model=new QSqlQueryModel();
    QSqlQuery query;
    query.prepare("select id from Employee where id='"+info+"'");
    query.exec();
    model->setQuery(query);
    return model;
}

QSqlQueryModel * Employee :: sort()
{
    QSqlQueryModel * model=new QSqlQueryModel();
    QSqlQuery query ;
    query.prepare("SELECT ID FROM EMPLOYEE ORDER BY SALARY DESC");
    query.exec();
    query.next();
    model->setQuery(query);

    return model;
}

QSqlQueryModel * Employee :: sortID()
{
    QSqlQueryModel * model=new QSqlQueryModel();
    QSqlQuery query ;
    query.prepare("SELECT ID FROM EMPLOYEE ORDER BY ID DESC");
    query.exec();
    query.next();
    model->setQuery(query);

    return model;
}

QSqlQueryModel * Employee :: sortFirstName()
{
    QSqlQueryModel * model=new QSqlQueryModel();
    QSqlQuery query ;
    query.prepare("SELECT ID FROM EMPLOYEE ORDER BY FIRSTNAME ASC");
    query.exec();
    query.next();
    model->setQuery(query);

    return model;
}


bool Employee::searchID(QString info)
{
    QSqlQuery query;
    query.prepare("select * from Employee where id='"+info+"'");
    query.exec();
    if(query.next())
    {
        return true;
    }
    return false;
}

QChart * Employee::statistic()
{
    int hr=0, project=0, laboratory=0, stock=0;

    QSqlQuery query;
    query.prepare("select jobtitle from Employee");
    query.exec();

    while(query.next())
    {
        if(query.value(0).toString() == "HR Agent")
        {
            hr++;
        }
        else if(query.value(0).toString() == "Laboratory Employee")
        {
            laboratory++;
        }
        else if(query.value(0).toString() == "Project & Services Employee")
        {
            project++;
        }
        else if(query.value(0).toString() == "Stock Employee")
        {
            stock++;
        }
    }

    QPieSeries *series = new QPieSeries();

    series->append("HR Agent",hr);
    series->append("Laboratory Employee",laboratory);
    series->append("Project & Services Employee",project);
    series->append("Stock Employee",stock);

    QChart * chart=new  QChart();
    chart->addSeries(series);
    chart->setTitle("Job Title Statistic");

    return   chart;

}





