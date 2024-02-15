#ifndef MYPERSON_H
#define MYPERSON_H

#include <QObject>

class MyPerson : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE set_name NOTIFY name_changed)
    Q_PROPERTY(int age READ age WRITE set_age NOTIFY age_changed)
public:
    explicit MyPerson(QObject *parent = nullptr);
    MyPerson(const QString& name, int age, QObject* parent = nullptr);

    //getter
    QString name() const{
        return m_name;
    }
    int age() const{
        return  m_age;
    }

    //setter
    void set_name(const QString& newName);
    void set_age(int newAge);

private:
    QString m_name;
    int m_age;
signals:
    void name_changed();
    void age_changed();
};

#endif // MYPERSON_H
