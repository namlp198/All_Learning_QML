import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow{
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-GridView")

    Component.onCompleted: {
        var colores = ['orange','red','green','blue','cyan','brown']
        var ix, jx;
        var idxGrid = 0;
        for(ix = 0; ix < 10; ++ix){
            for(jx = 0;jx < colores.length;++jx){
                gridView.model.append({dlgColorGrid: colores[jx],
                                      dlgText: idxGrid});
                ++idxGrid;
            }
        }
    }

    GridView{
        id: gridView
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: 10
            topMargin: 10
            rightMargin: 10
            bottomMargin: 10
        }
        cellWidth: width/3
        cellHeight: height/3

        model: ListModel{}

        delegate: Rectangle{
            width: gridView.cellWidth * 0.9
            height: gridView.cellHeight * 0.9
            color: dlgColorGrid

            Text{
                text: dlgText
                font.pointSize: 20
            }
        }
    }
}
