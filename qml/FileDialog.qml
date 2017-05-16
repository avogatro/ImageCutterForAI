import QtQuick 2.7
import QtQuick.Dialogs 1.2

FileDialog {
    id: fileDialog
    visible: fileDialogVisible.checked
    modality:  Qt.WindowModal
    title: "Choose a file"
    selectExisting: true
    nameFilters: [ "Image files (*.mp4 *.avi *.mkv)", "All files (*)" ]
    selectedNameFilter: "All files (*)"
    sidebarVisible: true
    onAccepted: {
        console.log("Accepted: " + fileUrls)
            for (var i = 0; i < 1; ++i){
                Qt.openUrlExternally(fileUrls[i])
            }


    }
    onRejected: { console.log("Rejected") }
}
