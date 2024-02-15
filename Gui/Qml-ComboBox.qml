import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("ComboxBox")

    ColumnLayout{
        anchors.fill: parent
        Text{
            Layout.fillWidth: true
            text: myComboBox.currentText
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
        }
        ComboBox{
            Layout.fillWidth: true
            id: myComboBox
            font.pointSize: 20
            model: ListModel{
                ListElement{
                    text: 'Element 1'
                }
                ListElement{
                    text: 'Element 2'
                }
                ListElement{
                    text: 'Element 3'
                }
                ListElement{
                    text: 'Element 4'
                }
                ListElement{
                    text: 'Element 5'
                }
            }
        }
    }
}
