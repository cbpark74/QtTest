import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 400
    height: 500
    title: qsTr("Hello World")

    Row {
//        MyCPPListView{
//            height: 200
//        }

        MyCPPListView2{
            height: 200
        }

//        MyDynamicListView {

//        }

    }
//   MyListView {

//   }

}
