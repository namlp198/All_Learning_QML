import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Slider_and_ProgressBar")

    ColumnLayout{
        anchors.fill: parent
        Slider{
            Layout.fillWidth: true
            id: mySlider
            from: 0
            to: 100
            stepSize: 1
            value: 50
        }

        ProgressBar{
            id: pgrBar
            Layout.fillWidth: true
            from: mySlider.from
            to: mySlider.to
            value: mySlider.value
        }
        Text{
            Layout.fillWidth: true
            text: mySlider.value
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pointSize: 20
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
