import Qt.labs.folderlistmodel 2.12

import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
  visible: true
  width: 1200 
  height: 400 
  Column {
    width: parent.width 
    Rectangle {
      color: "yellow"
      width: childrenRect.width
      height: childrenRect.height
      Row {
        width: 300
        height: 40
        Rectangle {
          width: 30
          color: "red"
        }
        Rectangle {
          width: 30
          color: "blue"
        }
        Rectangle {
          width: 30
          color: "red"
        }
      }
    }
    RowLayout {
      width: parent.width 
      Rectangle {
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 100
        Layout.preferredHeight: 100
        color: "red"
      }
      Rectangle {
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 100
        Layout.preferredHeight: 100
        color: "blue"
      }
      Rectangle {
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 100
        Layout.preferredHeight: 100
        color: "red"
      }
    }
  }
}
