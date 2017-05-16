import QtQuick 2.7
import QtQuick.Controls.Material 2.1
import QtQuick.Controls 2.1

//import QtQuick.Layouts 1.0
PageBackground {
    width: 50
    height: 800
    property alias button_undo: button_undo
    property alias button_file: button_file
    FontLoader {
        id: materialFont
        source: "qrc:/img/MaterialIcons-Regular.ttf"
    }
    Column {
        id: column
        spacing: 5
        anchors.fill: parent

        Button {
            id: button_file
            //Layout.RowSpan: 1
            width: 50
            height: 50
            text: "File"
            anchors.top: parent.top
            anchors.topMargin: 0
            clip: false
            //font.family: materialFont.name
            font.pixelSize: 12
            //onClicked: menu_file.open()
            //Material.theme: Material.Dark
            //Material.accent: Material.DeepOrange
            // Material.accent: Material.Dark
            Menu {
                id: menu_file
                y: button_file.height

                MenuItem {
                    text: "New Project"
                }
                MenuItem {
                    text: "Open Project"
                }
                MenuItem {
                    text: "Close"
                }
            }
        }

        Button {
            id: button_undo
            //Layout.RowSpan: 2
            width: 50
            height: 50
            text: "Undo"
            anchors.top: button_file.bottom
            anchors.topMargin: 0
            clip: false
            //font.family: materialFont.name
            font.pixelSize: 12
            //onClicked: menu_edit.open()
            //Material.theme: Material.Dark
            //Material.accent: Material.DeepOrange
            // Material.accent: Material.Dark
            Menu {
                id: menu_edit
                y: button_undo.height

                MenuItem {
                    text: "undo"
                }
                MenuItem {
                    text: "redo"
                }
                MenuItem {
                    text: "Options"
                }
            }
        }
    }

    //CustomLabel.LaberText: "Image Cutter for AI Learning"
}
