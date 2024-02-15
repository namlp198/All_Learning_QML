import QtQuick 2.0

Item {

    Component.onCompleted: {
        lstView.model.append({dlgColor: 'red', dlgText: 'RED'});
        lstView.model.append({dlgColor: 'blue', dlgText: 'BLUE'});
        lstView.model.append({dlgColor: 'green', dlgText: 'GREEN'});
        lstView.model.append({dlgColor: 'orange', dlgText: 'ORANGE'});
        lstView.model.append({dlgColor: 'brown', dlgText: 'BROWN'});
        lstView.model.append({dlgColor: 'black', dlgText: 'BLACK'});
        lstView.model.append({dlgColor: 'cyan', dlgText: 'CYAN'});
        lstView.model.append({dlgColor: 'red', dlgText: 'RED'});
        lstView.model.append({dlgColor: 'blue', dlgText: 'BLUE'});
        lstView.model.append({dlgColor: 'green', dlgText: 'GREEN'});
        lstView.model.append({dlgColor: 'orange', dlgText: 'ORANGE'});
        lstView.model.append({dlgColor: 'brown', dlgText: 'BROWN'});
        lstView.model.append({dlgColor: 'black', dlgText: 'BLACK'});
        lstView.model.append({dlgColor: 'cyan', dlgText: 'CYAN'});

    }

    ListView{
        id: lstView
        anchors.fill: parent
        model: ListModel{}
        delegate: Rectangle{
            width: parent.width
            height: 50
            color: dlgColor
            Text{
                anchors.centerIn: parent
                text: dlgText
                color: 'white'
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainWidget.printTextColor(dlgText);
                }
            }
        }
    }
}
