#include "myperson.h"

MyPerson::MyPerson(QObject *parent) : QObject(parent)
{
    m_age = 0;
}

MyPerson::MyPerson(const QString &name, int age, QObject *parent)
{
    m_name = name;
    m_age = age;
}

void MyPerson::set_name(const QString& newName){
    if(m_name != newName){
        m_name = newName;
        emit name_changed();
    }
}

void MyPerson::set_age(int newAge){
    if(m_age != newAge){
        m_age = newAge;
        emit age_changed();
    }
}
