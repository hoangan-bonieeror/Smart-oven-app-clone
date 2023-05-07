import QtQuick
import QtQuick.Controls

Rectangle {
    color : "transparent"
    Label {
        id : label
        text : "Set Timer"
        font.pixelSize: 60
        anchors.horizontalCenter: parent.horizontalCenter
        y : 10
        color : "black"
    }
    Rectangle {
        width : 50
        height: 50
        radius: 50
        x : 20
        y : 20
        color : "transparent"
        RoundButton {
            width : parent.width
            height : parent.height
            enabled: stackView.depth > 1
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
            Image {
                source : "qrc:/assets/xmarkIcon.svg"
                fillMode: Image.Tile
                anchors.centerIn: parent
                sourceSize.width: parent.width/2
            }
            onClicked: stackView.pop()
        }
    }
    Row {
        id : control
        y : label.y + label.height + 50
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30
        RoundButton {
            Image {
                fillMode: Image.Tile
                source : "qrc:/assets/minusIcon.svg"
                sourceSize.width: parent.width/2
                anchors.centerIn: parent
            }
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
        }
        Row {
            anchors.verticalCenter: parent.verticalCenter
            Text {
                id : hourSetTimer
                text : "00"
                font.pixelSize: 70
                color: "green"
            }
            Text {
                text : ":"
                font.pixelSize: 70
                color: "green"
            }
            Text {
                id : minSetTimer
                text : "00"
                font.pixelSize: 70
                color: "green"
            }
        }

        RoundButton {
            Image {
                fillMode: Image.Tile
                source : "qrc:/assets/plusIcon.svg"
                sourceSize.width: parent.width/2
                anchors.centerIn: parent
            }
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Row {
        id : toolBar
        y : control.y + control.height + 50
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30
        RoundButton {
            text: "+5 \nmins"
            font.pixelSize: 16
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
        }
        RoundButton {
            text: "+10 \nmins"
            font.pixelSize: 16
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
        }
        RoundButton {
            text: "START"
            width : 100
            height: 100
            font.pixelSize: 30
            anchors.verticalCenter: parent.verticalCenter
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
        }
        RoundButton {
            text: "+30 \nmins"
            font.pixelSize: 16
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
        }
        RoundButton {
            text: "+1 \nhour"
            font.pixelSize: 16
            width : 70
            height: 70
            anchors.verticalCenter: parent.verticalCenter
            background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
        }
    }
}
