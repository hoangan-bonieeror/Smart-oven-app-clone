import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 640
    height: 440
    visible: true
    title: qsTr("Smart Oven App Clone")

    Rectangle {
        width : parent.width
        height : parent.height
//        gradient: Gradient {
//            GradientStop { position: 0.0; color : "gray" }
//            GradientStop { position : 1.0; color : "white" }
//            orientation: Gradient.Horizontal
//        }
        color : "#E5E7E9"
        StackView {
            id : stackView
            initialItem: mainView
            anchors.fill: parent
        }


        Component {
            id : mainView
            MainView {}
        }

        Component {
            id : setTimerView
            SetTimerView {}
        }
    }
}
