import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

ApplicationWindow {

    visible: true
    width: 1280
    height: 800
    title: qsTr("Image Cutter for AI Training")

    Material.theme: Material.Dark
    Material.accent: Material.DeepOrange


    GridLayout {
        id: gridLayout
        anchors.fill: parent


        SideBar {
            id: sideBar
            //color: "#000000"
            Layout.columnSpan: 1
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: false

        }

        VideoFrame {
            id: videoFrame

            Layout.columnSpan: 2

            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: false
        }

        Actionbar {
            id: actionbar
            //color: "#ed2d2d"

            Layout.columnSpan: 3
            Layout.alignment: Qt.AlignRight | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: false
        }
    }
}
