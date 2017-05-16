import QtQuick 2.4

PageCutForm {

    function openImage(path) {
        stop()
        contentLoader.source = "ContentImage.qml"
        videoFramePaintedConnection.target = null
        contentLoader.item.source = path
        updateSource()
    }

    function openVideo(path) {
        stop()
        contentLoader.source = "ContentVideo.qml"
        videoFramePaintedConnection.target = contentLoader.item
        contentLoader.item.mediaSource = path
        contentLoader.item.volume = volume
        contentLoader.item.play()
        updateSource()
    }

    function openCamera() {
        stop()
        contentLoader.source = "ContentCamera.qml"
        videoFramePaintedConnection.target = contentLoader.item
        updateSource()
    }

    function stop() {
        if (contentLoader.source == "ContentVideo.qml")
            contentLoader.item.stop()
        theSource.sourceItem = null
    }

}
