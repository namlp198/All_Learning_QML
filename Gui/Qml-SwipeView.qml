import QtQuick 2.0
import QtQuick.Controls 2.12

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("SwipeView")

    SwipeView{
        id: swpView
        anchors.fill: parent
        currentIndex: 0

        Item{
            id: itmOne
            Rectangle{
                anchors.fill: parent
                color: 'blue'
            }
        }
        Item{
            id: itmTwo
            Rectangle{
                anchors.fill: parent
                color: 'green'
            }
        }
        Item{
            id: itmThree
            Rectangle{
                anchors.fill: parent
                color: 'red'
            }
        }
    }

    PageIndicator{
        id: pageInd
        count: swpView.count
        currentIndex: swpView.currentIndex
        anchors.bottom: swpView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
