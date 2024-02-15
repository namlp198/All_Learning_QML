import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4 as C1
import "qrc:/tableview"

ApplicationWindow {
    title: qsTr("Qml-TableView")
    width: 640
    height: 480
    visible: true

    C1.SplitView{
        id: mySplitView
        anchors.fill: parent
        orientation: Qt.Vertical
        property int nItems: mySplitView.children.length - 1

        CitiesTableView{
            height: parent.height / parent.nItems
        }
        PeoplesTableView{
            height: parent.height / parent.nItems
        }
        FoodsTableView{
            height: parent.height / parent.nItems
        }
    }
}
