import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4 as C1

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("TabView_Simple")

    C1.TabView{
        id: tabView
        anchors.fill: parent
        C1.Tab{
            id: tab1
            title: 'TAB1'
            Rectangle{
                width: tab1.width
                height: tab1.height
                color: 'blue'
            }
        }
        C1.Tab{
            id: tab2
            title: 'TAB2'
            Rectangle{
                width: tab2.width
                height: tab2.height
                color: 'green'
            }
        }
        C1.Tab{
            id: tab3
            title: 'TAB3'
            Rectangle{
                width: tab3.width
                height: tab3.height
                color: 'red'
            }
        }
    }
}
