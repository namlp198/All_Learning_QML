#include "person.h"

Person::Person(QObject* parent)
    : QObject {parent}
    ,m_name {""}
    ,m_age {""}
    ,m_salary {""}
{

}
Person::Person(const Person& other)
    : QObject {other.parent()}
    ,m_name {other.m_name}
    ,m_age {other.m_age}
    ,m_salary {other.m_salary}
{

}
Person::Person(const QString& name, const QString& age, const QString& salary, QObject* parent)
{

}
void Person::setName(const QString& name)
{

}
void Person::setAge(const QString& age)
{

}
void Person::setSalary(const QString& salary)
{

}
QString Person::name() const
{

}
QString Person::age() const
{

}
QString Person::salary() const
{

}
