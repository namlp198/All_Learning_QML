import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-QPROPERTY")

    ListView{
        anchors.fill: parent
        model: people
        delegate: RowLayout{
            spacing: 20
            width: parent.width
            Text{
                text: name
            }
            Text{
                text: age
            }

            Button{
                id: inc_age_button
                text: 'Age + 1'
                onClicked: {
                    age = age + 1;
                }
            }
            Button{
                id: dec_age_button
                text: 'Age - 1'
                onClicked: {
                    age = age - 1;
                }
            }
            TextField{
                id: name_textField
                width: root.width / 5
                placeholderText: "Enter name"
                Button{
                    width: parent.width / 3
                    text: 'SET'
                    anchors{
                        right: parent.right
                        top: parent.top
                        bottom: parent.bottom
                    }
                    onClicked: {
                        name = name_textField.text;
                    }
                }
            }
        }
    }
}
