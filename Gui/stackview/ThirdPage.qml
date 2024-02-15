import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    ListView{
        anchors.fill: parent
        anchors.verticalCenter: parent.verticalCenter
        model: ListModel{
            ListElement{
                dlgTextBtn: 'Button 1'
            }
            ListElement{
                dlgTextBtn: 'Button 2'
            }
            ListElement{
                dlgTextBtn: 'Button 3'
            }
            ListElement{
                dlgTextBtn: 'Button 4'
            }
            ListElement{
                dlgTextBtn: 'Button 5'
            }
        }
        delegate: Button{
            text: dlgTextBtn
        }
    }
}
