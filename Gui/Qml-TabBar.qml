import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("TabBar")

    header: TabBar{
        id: tabBar
        TabButton{
            text: 'Acquire'
        }
        TabButton{
            text: 'Setting'
        }
        TabButton{
            text: 'Run'
        }
    }

    StackLayout{
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Item {
            id: tabOne
            Rectangle{
                color: 'blue'
                anchors.fill: parent
            }
        }
        Item {
            id: tabTwo
            Rectangle{
                color: 'green'
                anchors.fill: parent
            }
        }
        Item {
            id: tabThree
            Rectangle{
                color: 'red'
                anchors.fill: parent
            }
        }
    }
}
