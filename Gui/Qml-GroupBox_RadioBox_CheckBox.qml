import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("GroupBox_RadioBox_Checkbox")

    Material.theme: Material.Dark
    Material.accent: Material.Green

    ButtonGroup{
        id: group1
    }
    ButtonGroup{
        id: group2
    }
    SwipeView{
        id: view
        anchors.fill: parent
        currentIndex: 0
        GroupBox{
            title: 'Group 1'
            ColumnLayout{
                anchors.left: parent.left
                RadioButton{
                    ButtonGroup.group: group1
                    text: 'Option 1'
                    checked: true
                }
                RadioButton{
                    ButtonGroup.group: group1
                    text: 'Option 2'
                }
                RadioButton{
                    ButtonGroup.group: group1
                    text: 'Option 3'
                }
                RadioButton{
                    ButtonGroup.group: group1
                    text: 'Option 4'
                }
            }
        }
        GroupBox{
            title: 'Group 2'
            ColumnLayout{
                anchors.left: parent.left
                RadioButton{
                    ButtonGroup.group: group2
                    text: 'Option 1'
                    checked: true
                }
                RadioButton{
                    ButtonGroup.group: group2
                    text: 'Option 2'
                }
                RadioButton{
                    ButtonGroup.group: group2
                    text: 'Option 3'
                }
                RadioButton{
                    ButtonGroup.group: group2
                    text: 'Option 4'
                }
            }
        }
        GroupBox{
            title: 'Group 3'
            ColumnLayout{
                anchors.left: parent.left
                CheckBox{
                    text: 'Option 1'
                    checked: true
                }
                CheckBox{
                    text: 'Option 2'
                }
                CheckBox{
                    text: 'Option 3'
                }
                CheckBox{
                    text: 'Option 4'
                }
            }
        }
        GroupBox{
            title: 'Group 4'
            ColumnLayout{
                anchors.left: parent.left
                CheckBox{
                    text: 'Option 1'
                    checked: true
                }
                CheckBox{
                    text: 'Option 2'
                }
                CheckBox{
                    text: 'Option 3'
                }
                CheckBox{
                    text: 'Option 4'
                }
            }
        }
    }
    PageIndicator{
        id: pgIndicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
