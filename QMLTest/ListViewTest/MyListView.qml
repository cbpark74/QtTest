import QtQuick 2.7
import QtQuick.Controls 1.0

Rectangle {
    width: 200
    height: 200

    ListModel {
        id: fruitModel
        property string language: "en"
        ListElement {
            name: "Apple"
            cost: 2.45
        }
        ListElement {
            name: "Orange"
            cost: 3.25
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }

    }

    Component {
        id: fruitDelegate



        Rectangle {
            width: ListView.view.width
            height:40

            color: ListView.isCurrentItem ? "blue" : "red"

            Row {
                anchors.centerIn: parent
                //spacing: 10
                id: fruit
                Text {
                    text: " Fruit: " + name
                    color: fruit.ListView.view.fruit_color
                }
                Text {
                    text: " Cost: $ " + cost
                }

                Text {
                    text: " Language: " + fruit.ListView.view.model.language
                }
            }
        }
    }

    Component {
        id: hightlight
        Rectangle {
            width: 200
            height: 40
            color: "blue"
            radius: 5

        }
    }

    ListView {
        property color fruit_color: "green"
        model: fruitModel
        delegate: fruitDelegate
        anchors.fill: parent
        //highlight: highlight
        //highlightFollowsCurrentItem: false
        focus: true
        currentIndex: 0

    }
}
