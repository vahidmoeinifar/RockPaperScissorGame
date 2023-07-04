import QtQuick 2.0

Item {
    property int type

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 180
    rotation: 180
    Image {
        id: scissor
        source: {
            if (type === 1)
            "rock.png"
            else if (type === 2)
                "paper.png"
            else if (type === 3)
                "scissor.png"

        }
        anchors.centerIn: parent
        width: 350
        height: 350
    }


}
