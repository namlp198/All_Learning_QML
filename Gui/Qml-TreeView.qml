import QtQuick 2.12
import QtQuick.Controls 1.4 as C1
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    title: qsTr("Qml-TreeView")
    visible: true

    C1.TreeView{
        anchors.fill: parent
        model: myModel
        C1.TableViewColumn{
            role: "display"
            title: "Element"
            width: 100
        }
    }
}
