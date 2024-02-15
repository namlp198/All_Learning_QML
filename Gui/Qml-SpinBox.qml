import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-SpinBox")

    ColumnLayout{
        anchors.fill: parent
        ProgressBar{
            id: myProgressBar
            from: mySpin.from
            to: mySpin.to
            value: mySpin.value
            Layout.fillWidth: true
        }
        SpinBox{
            id: mySpin
            from: 0
            to: 100
            stepSize: 10
            Layout.fillWidth: true
            height: 50
            font.pointSize: 30
        }
    }
}
