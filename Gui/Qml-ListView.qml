import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow{
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-ListView")

    Component.onCompleted: {
        var colores = ['orange', 'red', 'green','yellow','blue'];
        var jx = 0;
        var color_text = 'black';
        for(var ix = 0; ix < 10; ix++){
            if(jx === colores.length){
                jx = 0;
            }
            if(colores[ix] === 'blue'){
                color_text = 'white';
            }
            else{
                color_text = 'black';
            }

            lstView.model.append({dlgText:'hello' + ix,
                                  dlgColorItm: colores[jx],
                                  dlgColorText: color_text});
            jx++;
        }
    }

    ListView{
        id: lstView
        anchors.fill: parent
        model: ListModel {}
        spacing: 2
        delegate: Rectangle{
            color: dlgColorItm
            border.color: 'white'
            border.width: 3
            width: mainWnd.width
            height: mainWnd.height/5
            Text {
               anchors{
                   verticalCenter: parent.verticalCenter
                   horizontalCenter: parent.horizontalCenter
               }
               color: dlgColorText
               font.pointSize: 20
               text: dlgText
            }
        }
    }
}
