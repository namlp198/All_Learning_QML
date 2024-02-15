import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.2 as D1

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Dialog")

    Dialog{
        id: dialog1
        onAccepted: {
            console.log("Dialog 1 accepted")
        }
        onRejected: {
            console.log("Dialog 1 rejected")
        }

        Column{
            spacing: 5
            Repeater{
                model: 5
                Button{
                    text: modelData
                    onClicked: {
                        dialog1.accept();
                    }
                }
            }
        }
    }
    D1.Dialog{
        id: dialog2
        onAccepted: {
            console.log("Dialog 2 accepted")
        }
        onRejected: {
            console.log("Dialog 2 rejected")
        }
        Column{
            spacing: 5
            Repeater{
                model: 5
                Button{
                    text: modelData
                    onClicked: {
                        dialog2.close();
                    }
                }
            }
        }
    }
    Column{
        anchors.centerIn: parent
        spacing: 5
        Button{
            text: 'Open Dialog 1'
            onClicked: {
                dialog1.open();
            }
        }
        Button{
            text: 'Open Dialog 2'
            onClicked: {
                dialog2.open();
            }
        }
    }
}
