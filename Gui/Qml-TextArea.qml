import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-TextArea")

    ColumnLayout{
        anchors.fill: parent
        ScrollView{
            Layout.fillWidth: true
            Layout.fillHeight: true
            TextArea{
                id: myTextArea
                selectByKeyboard: true
                selectByMouse: true
                wrapMode: TextArea.WrapAtWordBoundaryOrAnywhere
                font.pointSize: 30
            }
        }
        Button{
            Layout.fillWidth: true
            text: "Clear"
            onClicked: {
                myTextArea.clear();
            }
        }
    }
}
