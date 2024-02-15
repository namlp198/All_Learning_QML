import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "qrc:/stackview"

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml-StackView")

    header: ToolBar{
        RowLayout{
            anchors.fill: parent
            ToolButton{
                text: qsTr("<<")
                onClicked: {
                    myStackView.pop();
                }
            }
            Label{
                text: "Stack View Example"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    StackView{
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.bottom
        }
        id: myStackView
        initialItem: starting_page
    }
    Component{
        id: starting_page
        StartingPage{}
    }
    Component{
        id: second_page
        SecondPage{}
    }
    Component{
        id: third_page
        ThirdPage{}
    }
    Component{
        id: four_page
        FourPage{}
    }

    function load_page(page){
        switch(page){
        case 'Page 1':
            myStackView.push(starting_page);
            break;
        case 'Page 2':
            myStackView.push(second_page);
            break;
        case 'Page 3':
            myStackView.push(third_page);
            break;
        case 'Page 4':
            myStackView.push(four_page);
            break;
        }
    }
}
