import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    ListView{
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        model: ListModel{
            ListElement{
                name: 'namdz'
                age: 30
            }
            ListElement{
                name: 'nlp'
                age: 31
            }
            ListElement{
                name: 'lpn'
                age: 32
            }
            ListElement{
                name: 'pnl'
                age: 33
            }
        }
        delegate: Text{
            width: parent.width
            height: 10
            text: "Name: " + name + ", Age: " + age
        }
    }
}
