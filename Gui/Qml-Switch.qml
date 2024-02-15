import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-Switch")

    ColumnLayout{
        anchors.fill: parent
        Repeater{
            model: ListModel{
                ListElement{
                    myText: "Wi-Fi"
                }
                ListElement{
                    myText: "Bluetooth"
                }
                ListElement{
                    myText: "Other"
                }
            }
            RowLayout{
                Layout.fillWidth: true
                Layout.fillHeight: true
                Label{
                    text: myText + " = " + mySwitch.position
                    font.pointSize: 20
                    horizontalAlignment: Label.AlignHCenter
                    verticalAlignment: Label.AlignVCenter
                }

                Switch{
                    id: mySwitch
                    text: myText
                }
            }
        }
        Text{
            text: "Utilize Switch"
            Layout.fillWidth: true
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
