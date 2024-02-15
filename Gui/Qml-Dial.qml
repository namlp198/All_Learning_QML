import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    title: qsTr("Qml-Dial")
    width: 640
    height: 480
    visible: true

    ColumnLayout{
        anchors.fill: parent
        ProgressBar{
            id: myProgressBar
            Layout.fillWidth: true
            from: myDial.from
            to: myDial.to
            value: myDial.value
        }
        Dial{
            id: myDial
            Layout.fillWidth: true
            Layout.fillHeight: true
            from: 0
            to: 100
            value: 10
        }
    }
}
