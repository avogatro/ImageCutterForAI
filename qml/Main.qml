import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1



ApplicationWindow {

    visible: true
    width: 1280
    height: 800
    title: qsTr("Image Cutter for AI Training")

    Material.theme: Material.Dark
    Material.accent: Material.DeepPurple



    header: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Project")
        }
        TabButton {
            text: qsTr("Cut")
        }
    }
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        interactive: false
        PageProject {
            onOpenProject: loadProject(projectPath)
            onOpenVideo: createProject(videoPath)
        }
        PageCut {




        }
    }

    function createProject(url){
        console.log("projectPath:" + url)
    }
    function loadProject(url){
        console.log("videoPath:" + url)
    }



}
