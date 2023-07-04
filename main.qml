import QtQuick 2.9
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import io.qt.vahit.backend 1.0

Window {
    id: root
    property bool win
    width: 800
    height: 800
    visible: true
    title: qsTr("RockPaperScissor")

    BackEnd {
           id: backend
       }

    Rectangle{
        color: "lightslategray"
        anchors.fill: parent

    }



    PlayerOne {
        id: playerOne
    }

    PlayerTwo {
        id: playerTwo
    }
    Rectangle{
        width: parent.width
        height: 130
        color: "darkslategray"
        anchors.bottom: parent.bottom

        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            Image {
                id: scissor
                source: "scissor.png"
                width: 100;
                height: 100;
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var status = backend.randomNum(3)
                        playerOne.type = 3
                        playerTwo.type = backend.playerOne
                        winFunc(status)
                    }
                }
            }
            Image {
                id: paper
                source: "paper.png"
                width: 100;
                height: 100;
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var status = backend.randomNum(2)
                        playerOne.type = 2
                        playerTwo.type = backend.playerOne
                        winFunc(status)

                    }
                }
            }
            Image {
                id: rock
                source: "rock.png"
                width: 100;
                height: 100;
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        var status = backend.randomNum(1)
                        playerOne.type = 1
                        playerTwo.type = backend.playerOne
                        winFunc(status)

                    }
                }
            }
        }
    }



    function winFunc(status) {
//        if (status === 1) {
//          console.log("WIN!" , status)
//          statusQML.won = true
//        }

console.log("STATUS: " , status)

        const StatusComponent = Qt.createComponent("Status.qml");
        if (StatusComponent.status === Component.Ready) {
            StatusComponent.createObject(root, {won: status});
        }


    }




}
