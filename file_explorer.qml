import Qt.labs.folderlistmodel 2.12

import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 1200 
    height: 400 

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
