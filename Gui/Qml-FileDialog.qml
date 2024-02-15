import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("FileDialog")

    FileDialog{
        id: openFileDialog
        title: 'Select file'
        folder: shortcuts.home
        selectExisting: true
        nameFilters: ['All file (*)']
        onAccepted: {
            textField.text = fileUrl;
        }
        onRejected: {
            textField.text = "CANCELED";
        }
    }
    Column{
        anchors.centerIn: parent
        width: parent.width
        Button{
            text: "OPEN"
            onClicked: {
                openFileDialog.open();
            }
        }
        TextField{
            width: parent.width
            id: textField
        }
    }
}
