import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.0
import chang.qtexample 1.0


Rectangle {
    width: 200
    height: 400
    Component {
        id: colorDelegate

        Rectangle {
            width: ListView.view.width
            height:40

            color: ListView.isCurrentItem ? "yellow" : model.display

            Text {
                width: 140
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                text: " Color: " + model.display
            }

            Button {
                width: 60
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                text: "Press"

            }
        }
    }

    ListView {
        id: view
        anchors.fill: parent
        model: DataEntryModel {}
        delegate: colorDelegate
        focus: true
    }

}
