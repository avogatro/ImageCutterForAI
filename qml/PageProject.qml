import QtQuick 2.7
import QtQuick.Dialogs 1.2


PageProjectForm {
    id: root
    //property url projectPath

    signal openImage(url imagePath)
    signal openVideo(url videoPath)
    signal openProject(url projectPath)
    signal close

    //send signal
    //may need to add the option to add list of images/videos to a project
    FileDialog {

        id: open_video_dialog
        title: "Choose a video"
        nameFilters: [ "Image files (*.mp4 *.avi *.mkv)", "All files (*)" ]
        selectedNameFilter: "All files (*)"
        folder: shortcuts.home
        onAccepted: {
            console.log("Accepted: " + fileUrls)
            for (var i = 0; i < fileUrls.length; ++i){
                root.openVideo(fileUrls[i])
                break
            }
        }


        modality:  Qt.WindowModal
        selectExisting: true
        sidebarVisible: true
        selectMultiple: false
    }
    //open Project

    FileDialog {

        id: open_project_dialog
        title: "Choose an existing project"
        nameFilters: [ "Project files (*.pro)", "All files (*)" ]
        selectedNameFilter: "Project files (*.pro)"
        folder: shortcuts.home
        //if Image Recognition project exit:
        onAccepted: {
            console.log("Accepted: " + fileUrls)
            for (var i = 0; i < fileUrls.length; ++i){
                root.openProject(fileUrls[i])
                break
            }
        }


        modality:  Qt.WindowModal
        selectExisting: true
        sidebarVisible: true
        selectMultiple: false
    }


    button_new.onClicked: {
        open_video_dialog.open()
    }
    button_open.onClicked: {
        open_project_dialog.open()
    }
}
