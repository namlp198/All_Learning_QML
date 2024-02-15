import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow{
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-Menu")

    Button{
        id: btnOption
        text: 'Option'
        onClicked: {
            mnu.open();
        }
    }
    Label{
        id: lbShow
        text: 'I am is Penguin Tux'
        anchors.centerIn: parent
        font.pointSize: 30
    }

    Menu{
        id: mnu
        y: btnOption.height
        MenuItem{
            id: mnuItm1
            text: 'Opntion 1'
            onClicked: {
                lbShow.text = 'Window';
            }
        }
        MenuItem{
            id: mnuItm2
            text: 'Opntion 2'
            onClicked: {
                lbShow.text = 'Linux';
            }
        }
        MenuItem{
            id: mnuItm3
            text: 'Opntion 3'
            onClicked: {
                lbShow.text = 'Os';
            }
        }
    }
}
