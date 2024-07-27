import QtQuick 2.12
import QtQuick.Controls 2.3


ApplicationWindow {
    title: qsTr("Qml-Flickable")
    width: 640
    height: 480
    visible: true
    property int scaleMultiplier: 3


    Flickable {
        id: flickArea
        anchors.fill: parent
        focus: true
        anchors.centerIn: parent
        boundsBehavior: Flickable.StopAtBounds
        contentWidth: inner.width
        contentHeight: inner.height

        property real zoom: 1;
        onZoomChanged: {
                var zoomPoint = Qt.point(flickArea.width/2 + flickArea.contentX,
                                     flickArea.height/2 + flickArea.contentY);

                flickArea.resizeContent((inner.width * zoom), (inner.height * zoom), zoomPoint);
                flickArea.returnToBounds();
            }

        Image {
                    id: inner
                    scale: slider.value * scaleMultiplier
                    anchors.centerIn: parent

                    source: "qrc:/debug/images/test.jpg"

                    transform: Scale {
                                        id: scaleID ;
                                        origin.x: flickArea.contentX + flickArea.width * flickArea.visibleArea.widthRatio / 2
                                        origin.y: flickArea.contentY + flickArea.height * flickArea.visibleArea.heightRatio / 2
                    }
                }
    }

    Slider {
        id: slider
        value: .01
        orientation: Qt.Vertical
        anchors {
            bottom: parent.bottom
            right: parent.right
            top: parent.top
            margins: 50
        }

        from: 0.01
    }

}
