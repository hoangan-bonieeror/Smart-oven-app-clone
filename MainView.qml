import QtQuick
import QtQuick.Controls

Rectangle {
    color : "transparent"
    Rectangle {
        property int widthBtn : 50
        property int heightBtn : 50
        property int textSizeBtn: 22
        width : parent.width
        height: 80
        id : header
        color : "transparent"
        Row {
            width: parent.width - 40
            height: parent.height
            leftPadding: 20
            rightPadding: 20
            topPadding: 10
            Item {
                width : parent.width / 2
                height : parent.height
                Row {
                    width : parent.width
                    height : parent.height
                    spacing : 20
                    RoundButton {
                        id : shutdownBtn
                        font.pixelSize: header.textSizeBtn
                        width: header.widthBtn
                        height : header.heightBtn
                        anchors.verticalCenter: parent.verticalCenter
                        Image {
                            id: shutdownIcon
                            source: "qrc:/assets/powerOff.svg"
                            anchors.centerIn: parent
                            fillMode: Image.Tile
                            sourceSize.height: parent.height * 2/3
                            sourceSize.width: parent.width * 2/3
                        }
                        background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                        onClicked: Qt.quit()
                    }
                    Label {
                        text: "20:55"
                        font.pixelSize: 32
                        font.italic: true
                        font.bold: true
                        color: "black"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            Item {
                width : parent.width / 2
                height : parent.height
                Row {
                    width : parent.width
                    height : parent.height
                    spacing: 10
                    anchors.verticalCenter: parent.verticalCenter
                    layoutDirection: Qt.RightToLeft
                    RoundButton {
                        id : settingBtn
                        font.pixelSize: header.textSizeBtn
                        width: header.widthBtn
                        height : header.heightBtn
                        anchors.verticalCenter: parent.verticalCenter
                        background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                        Image {
                            source: "qrc:/assets/settingIcon.svg"
                            fillMode: Image.Tile
                            anchors.centerIn: parent
                            sourceSize.height: parent.height/2
                            sourceSize.width: parent.width/2
                        }
                    }
                    RoundButton {
                        id : controlBtn
//                                    text : "\u270D"
                        font.pixelSize: header.textSizeBtn
                        width: header.widthBtn
                        height : header.heightBtn
                        anchors.verticalCenter: parent.verticalCenter
                        background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                        Image {
                            anchors.centerIn: parent
                            source : "qrc:/assets/controlIcon.svg"
                            sourceSize.height: parent.height/2
                            sourceSize.width: parent.width/2
                            fillMode: Image.Tile
                        }
                    }
                    RoundButton {
                        id : modeBtn
                        font.pixelSize: header.textSizeBtn
                        width: header.widthBtn
                        height : header.heightBtn
                        anchors.verticalCenter: parent.verticalCenter
                        background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                        Image {
                            source: "qrc:/assets/kitchenIcon.svg"
                            anchors.centerIn: parent
                            fillMode: Image.Tile
                            sourceSize.height: parent.height/2
                            sourceSize.width : parent.width/2
                        }
                    }
                }
            }
        }
    }
    Rectangle {
        id : body
        width : parent.width
        height : parent.height - header.height
        anchors {
            top : header.bottom
            bottom: parent.bottom
        }
        color : "transparent"
        Rectangle {
            id : timerContainer
            width : parent.width/2 - lineDivide.width/2
            height : parent.height
            anchors.left: parent.left
            color : "transparent"
            Column {
                id : timeColumnLayout
                width : parent.width
                height : parent.height
                spacing: 10
                topPadding: parent.height/2 - (labelTimer.height + timeColumnLayout.spacing + valueTimer.height)
                Label {
                    id : labelTimer
                    text: "TIMER"
                    font.pixelSize: 28
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id : valueTimer
                    text : "00:00"
                    font.pixelSize: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RoundButton {
                    id : setTimerBtn
                    width : 70
                    height : 70
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                    Text {
                        text: "SET"
                        anchors.centerIn: parent
                        font.pixelSize: 20
                        font.bold: true
                    }
                    onClicked: stackView.push(setTimerView)
                }
            }
        }
        Rectangle {
            id : lineDivide
            width : 30
            height : parent.height - 15
            anchors.topMargin: 15
            anchors.bottomMargin: 15
            anchors.left: timerContainer.right
            radius : 30
            border.width: 1
            border.color: "black"
            color : "transparent"
//                        gradient: Gradient {
//                            GradientStop { position : 0.0; color : topColor }
//                            GradientStop { position : 1.0; color : botColor }
//                        }
        }
        Rectangle {
            id : temperatureContainer
            width : parent.width/2 - lineDivide.width/2
            height : parent.height
            anchors.right : parent.right
            color : "transparent"
            Column {
                id : tempColumnLayout
                width : parent.width
                height : parent.height
                spacing: 10
                topPadding: parent.height/2 - (labelTemp.height + tempColumnLayout.spacing + valueTemp.height)
                Label {
                    id : labelTemp
                    text: "TEMPERATURE"
                    font.pixelSize: 28
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id : valueTemp
                    text : "--"
                    font.pixelSize: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RoundButton {
                    id : setTempBtn
                    width : 70
                    height : 70
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle { color : "transparent"; border.color : "black"; border.width : 1.5;  radius : 50  }
                    Text {
                        text: "SET"
                        anchors.centerIn: parent
                        font.pixelSize: 20
                        font.bold: true
                    }
                }
            }
        }
    }
}
