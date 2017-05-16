import QtQuick 2.7
import QtQuick.Controls 1.4
SideBarForm {
    button_undo.onClicked: {

    }
    button_file.onClicked: {
        button_edit.menu_file.open()
    }

}
