import QtQuick 2.12
import QtQuick.Controls 1.4 as C1

C1.TableView {
    model: ListModel{
        ListElement{
            name: "Hanoi"
            country: "Vietnam"
        }
        ListElement{
            name: "Bangkok"
            country: "Thailand"
        }
        ListElement{
            name: "Vien"
            country: "Laos"
        }
    }
    C1.TableViewColumn{
        role: "name"
        title: "City name"
        width: 100
    }
    C1.TableViewColumn{
        role: "country"
        title: "Country name"
        width: 200
    }
}
