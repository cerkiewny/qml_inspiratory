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
      title: "File name"
    }
    TableViewColumn {
      role: "fileSize"
      title: "File size"
    }

    headerDelegate: Item {
      height: textItem.implicitHeight * 1.2
      width: parent.width 
      Rectangle {
        height: parent.height 
        width: parent.width 
        color: styleData.pressed ? "#e5989b" : Qt.darker("#e5989b", 1.4)
        Text {
          id: textItem
          text: styleData.value
        }
      }
    }
    rowDelegate: Item {
      Rectangle {
        function constructColor(selected, rowNumber){
          const curColor = rowNumber % 2 ? "#264653" : Qt.darker("#264653");
          return selected ? curColor : Qt.darker(curColor, 0.9);
        }
        anchors.fill: parent
        color: constructColor(styleData.selected, styleData.row) 
      }
    }
    itemDelegate: Item {
        Text {
          elide: styleData.elideMode
          anchors.verticalCenter: parent.verticalCenter
          color: styleData.selected ? "#f4a261" : Qt.lighter("#f4a261", 1.1)
          text: styleData.value
      }
    }
    model: folderModel
  }
}
