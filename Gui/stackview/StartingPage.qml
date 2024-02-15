import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    GridView{
        id: myGridView
        cellWidth: parent.width / 4
        cellHeight: 5
        anchors.fill: parent
        width: parent.width
        height: parent.height
        model: ListModel{
            ListElement{
                name: 'Page 1'
            }
            ListElement{
                name: 'Page 2'
            }
            ListElement{
                name: 'Page 3'
            }
            ListElement{
                name: 'Page 4'
            }
        }
        delegate: Button{
            id: myButton
            text: name
            onClicked: {
                load_page(text)
            }
        }
    }
}
