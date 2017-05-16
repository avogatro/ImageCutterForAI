import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1

Page {
    width: 1280
    height: 720
    property alias button_new: button_new
    property alias button_open: button_open

    GridLayout {
        id: gridLayout
        rows: 2
        columns: 3
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            x: 0
            y: 60
            height: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 2
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            scale: 1
            transformOrigin: Item.Center
            spacing: 5

            Layout.minimumWidth: 200

            Layout.fillHeight: false
            Layout.fillWidth: false

            Button {
                id: button_new
                text: qsTr("New Project")

                transformOrigin: Item.Center
                scale: 0.9

                Layout.fillWidth: true
            }

            Button {
                id: button_open
                text: qsTr("Open Project")

                transformOrigin: Item.Center
                scale: 0.9

                Layout.fillWidth: true
            }
        }

        Frame {
            id: frame1
            y: 0
            width: parent.width / 2
            height: 0
            Layout.fillWidth: true
            enabled: true
            transformOrigin: Item.Center
            Layout.rowSpan: 2
            Layout.preferredHeight: -1
            Layout.preferredWidth: -1
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.minimumWidth: 200
            spacing: 2

            Layout.columnSpan: 2
            Layout.fillHeight: true


            Text {
                id: text_recent
                color: "#ffffff"
                text: qsTr("Recent Project")
                Layout.rowSpan: 2
                Layout.columnSpan: 1
                font.pixelSize: 24
            }

            ListView {
                id: recent_listView
                y: 50
                anchors.top: text_recent.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.topMargin: 20
                snapMode: ListView.SnapToItem
                delegate: Item {
                    x: 5
                    width: 80
                    height: 40
                    Row {
                        id: row1
                        Rectangle {
                            width: 10
                            height: 40
                            color: colorCode
                        }

                        Text {
                            text: projectName
                            font.bold: true

                            color: "#ffffff"
                        }

                        Text {
                            text: projectVideoPath
                            font.bold: true

                            color: "#ffffff"
                        }

                        Text {
                            text: progress
                            font.bold: true

                            color: "#ffffff"
                        }
                        spacing: 10
                    }
                }
                model: ListModel {
                    ListElement {
                        projectName: "Grey"
                        colorCode: "grey"
                        projectVideoPath: "<path>"
                        progress: "12%"
                    }

                    ListElement {
                        projectName: "Red"
                        colorCode: "red"
                        projectVideoPath: "<path>"
                        progress: "67%"
                    }

                    ListElement {
                        projectName: "Blue"
                        colorCode: "blue"
                        projectVideoPath: "<path>"
                        progress: "56%"
                    }

                    ListElement {
                        projectName: "Green"
                        colorCode: "green"
                        projectVideoPath: "<path>"
                        progress: "30%"
                    }
                }
            }
        }
    }
}
