import QtQuick 2.4



    Image {
        width: 930
        height: 800
        id: video
        sourceSize.width: 0
        fillMode: Image.PreserveAspectFit
        clip: false
        anchors.fill: parent
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

