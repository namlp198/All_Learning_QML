import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Qml-Canvas"

    RowLayout{
        id: rowMain
        anchors.horizontalCenter: parent.horizontalCenter
        z: myCanvas.z + 1

        Button{
            text: 'Clear'
            onClicked: {
                myCanvas.clear();
            }
        }
        Button{
            text: 'Exit'
            onClicked: {
                Qt.quit();
            }
        }
    }

    Canvas{
        id: myCanvas
        anchors.fill: parent

        property int lastX: 0
        property int lastY: 0

        function clear(){
            var ctx = getContext('2d');
            ctx.reset();
            myCanvas.requestPaint();
        }

        MouseArea{
            id: mouseArea
            anchors.fill: parent

            onPressed: {
                myCanvas.lastX = mouseX;
                myCanvas.lastY = mouseY;
            }
            onPositionChanged: {
                myCanvas.requestPaint();
            }
        }

        onPaint: {
            var ctx = getContext('2d');
            ctx.lineWidth = 5;
            ctx.beginPath();
            ctx.moveTo(lastX, lastY);
            lastX = mouseArea.mouseX;
            lastY = mouseArea.mouseY;
            ctx.lineTo(lastX, lastY);
            ctx.stroke();
        }
    }
}
