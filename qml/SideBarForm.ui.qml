import QtQuick 2.7
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.1

PageBackground {
    width: 50
    height: 800

    Row {
        id: row
        spacing: 5
        anchors.fill: parent

        Button {
            id: button_open
            width: 50
            height: 50
            text: "Open"

            padding: 0
            Material.accent: Material.Orange
        }
    }

    //CustomLabel.LaberText: "Image Cutter for AI Learning"

}
