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

            color: ListView.isCurrentItem ? "yellow" : model.name

            Text {
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                text: model.name + ': hsv(' +
                      Number(model.hue).toFixed(2) + ',' +
                      Number(model.saturation).toFixed() + ',' +
                      Number(model.brightness).toFixed() + ')'

            }


        }
    }

    ListView {
        id: view
        anchors.fill: parent
        model: RoleEntryModel {}
        delegate: colorDelegate
        focus: true
    }

}
