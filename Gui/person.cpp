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
    m_name = name;
    m_age = age;
    m_salary = salary;
}
void Person::setName(const QString& name)
{
    m_name = name;
}
void Person::setAge(const QString& age)
{
    m_age = age;
}
void Person::setSalary(const QString& salary)
{
    m_salary = salary;
}
QString Person::name() const
{
return m_name;
}
QString Person::age() const
{
return m_age;
}
QString Person::salary() const
{
return m_salary;
}
