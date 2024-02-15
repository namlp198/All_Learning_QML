import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow{
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-Repeater")
    header: Rectangle{
        width: parent.width
        height: 50
        color: 'green'
        Label{
            anchors.centerIn: parent
            width: parent.width
            height: parent.height/2
            color: 'white'
            id: myTitle
            font.pointSize: 20
        }
    }

    ColumnLayout{
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: header.bottom
        }

        spacing: 5
        Repeater{
            model: 5
            RowLayout{
                Layout.fillHeight: true
                width: parent.width
                height: 10
                spacing: 5
                Repeater{
                    model: ListModel{
                        ListElement{
                            mytext: 'Button 1'
                        }
                        ListElement{
                            mytext: 'Button 2'
                        }
                        ListElement{
                            mytext: 'Button 3'
                        }
                        ListElement{
                            mytext: 'Button 4'
                        }
                        ListElement{
                            mytext: 'Button 5'
                        }
                    }
                    Button{
                        Layout.fillWidth: true
                        text: mytext
                        onClicked: {
                            myTitle.text = text;
                        }
                    }
                }
            }
        }
    }
}
