import Qt.labs.folderlistmodel 2.12

import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 1200 
    height: 400 

    Component {
        id: test
        Rectangle {
          implicitHeight: 20 
          implicitWidth: 20 
          width: 20
          height: 20
          color: "red"
          border.color: "black"
          border.width: 1
        }
    }
    FolderListModel {
        id: folderModel
        nameFilters: ["*"]
    }
    TableView {
        width: parent.width
        id: tableView1
        TableViewColumn {
            role: "fileName"
        }
        TableViewColumn {
            role: "fileSize"
        }
        model: folderModel
    }
}
