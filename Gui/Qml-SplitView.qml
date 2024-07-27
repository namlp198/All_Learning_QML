import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4 as C1

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("SplitView")

    C1.SplitView{
        orientation: Qt.Horizontal
        anchors.fill: parent
        Item{
            width: parent.width/3
            height: parent.height
            Rectangle{
                anchors.fill: parent
                color: 'orange'
            }
        }
        Item{
            width: parent.width/3
            height: parent.height
            GridView{
                id: gridView
                anchors.fill: parent
                cellWidth: 50
                cellHeight: 50
                model: ListModel{
                    ListElement{
                        dlgColor: 'blue'
                    }
                    ListElement{
                        dlgColor: 'green'
                    }
                    ListElement{
                        dlgColor: 'red'
                    }
                    ListElement{
                        dlgColor: 'brown'
                    }
                    ListElement{
                        dlgColor: 'cyan'
                    }
                }
                delegate: Rectangle{
                    color: dlgColor
                    width: gridView.cellWidth*0.9
                    height: gridView.cellHeight*0.9
                }
            }
        }
        Item{
            width: parent.width
            height: parent.height/3
            Column{
                anchors.fill: parent
                Repeater{
                    model: ListModel{
                        ListElement{
                            dlgColor: 'blue'
                        }
                        ListElement{
                            dlgColor: 'green'
                        }
                        ListElement{
                            dlgColor: 'red'
                        }
                        ListElement{
                            dlgColor: 'brown'
                        }
                        ListElement{
                            dlgColor: 'cyan'
                        }
                    }
                    Rectangle{
                        color: dlgColor
                        width: 50
                        height: 50
                    }
                }
            }
        }
    }
}
