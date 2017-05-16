import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1

Page {
    width: 1230
    height: 800

    GridLayout {
        id: gridLayout
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            width: 100
            height: 100

            VideoFrame {
                id: videoFrame
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/temp_benz.jpg"

                Layout.columnSpan: 1

                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillHeight: true
                Layout.fillWidth: false
            }

            RowLayout {
                id: rowLayout
                width: 100
                height: 100

                Slider {
                    id: slider
                    Layout.fillWidth: true
                    value: 0.5
                }

                Text {
                    id: text_slider
                    color: "#ffffff"
                    text: qsTr("50/100")
                    horizontalAlignment: Text.AlignRight
                    font.pixelSize: 12
                }
            }
        }

        Actionbar {
            id: actionbar
            color: "#2d2d2d"

            Layout.columnSpan: 2
            Layout.alignment: Qt.AlignRight | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: false

            ColumnLayout {
                id: columnLayout1
                transformOrigin: Item.Center
                anchors.topMargin: 50
                anchors.fill: parent

                Button {

                    text: qsTr("Next Frame")
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                    transformOrigin: Item.Center
                    scale: 0.9

                    Layout.fillWidth: true
                }

                Button {

                    text: qsTr("Redo")
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                    transformOrigin: Item.Center
                    scale: 0.9

                    Layout.fillWidth: true
                }
                GroupBox {
                    id: groupBox1
                    width: 200
                    height: 200
                    scale: 0.9
                    Layout.fillWidth: true
                    title: qsTr("Define New Tag:")

                    TextInput {
                        id: input_new_tag
                        color: "#ffffff"

                        text: qsTr("New Tag")
                        anchors.fill: parent
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        scale: 0.9
                        Layout.fillWidth: true
                        font.pixelSize: 24
                        selectByMouse: true

                    }
                }


                GroupBox {
                    id: groupBox
                    width: 200
                    height: 200
                    scale: 0.9
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    title: qsTr("Recent Tags:")

                    ColumnLayout {
                        id: columnLayout2
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        transformOrigin: Item.Center
                        width: 275
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        Button {

                            text: qsTr("Benz")
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            transformOrigin: Item.Center
                            scale: 0.9
                            Layout.fillWidth: true
                        }

                        Button {

                            text: qsTr("Toyota")
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            transformOrigin: Item.Center
                            scale: 0.9
                            Layout.fillWidth: true
                        }

                        Button {
                            text: qsTr("BMW")
                            Layout.rowSpan: 1
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            transformOrigin: Item.Center
                            scale: 0.9
                            Layout.fillWidth: true
                        }
                    }
                }

                Image {
                    id: image
                    width: 200
                    height: 200
                    Layout.fillWidth: true
                    fillMode: Image.PreserveAspectCrop
                    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                    source: "qrc:/img/temp_benz.jpg"
                }


            }
        }
    }
}
