import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow{
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello")

    Row{
        id: btnRow
        anchors.centerIn: parent
        spacing: 2

        Button{
            id: btn1
            text: 'Button1'
            onClicked: {
                mainWnd.title = 'Just clicked the Button1';
            }
        }
        Button{
            id: btn2
            text: 'Button2'
            onClicked: {
                mainWnd.title = 'Just clicked the Button2';
            }
        }
        Button{
            id: btn3
            text: 'Button3'
            onClicked: {
                mainWnd.title = 'Just clicked the Button3';
            }
        }
        Button{
            id: btn4
            text: 'Button4'
            onClicked: {
                mainWnd.title = 'Just clicked the Button4';
            }
        }
    }
}
