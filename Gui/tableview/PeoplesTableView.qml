import QtQuick 2.12
import QtQuick.Controls 1.4 as C1

C1.TableView {
    model: people
    C1.TableViewColumn{
        role: "name"
        title: "Name"
        width: 100
    }
    C1.TableViewColumn{
        role: "age"
        title: "Age"
        width: 100
    }
    C1.TableViewColumn{
        role: "salary"
        title: "Salary"
        width: 100
    }
}
