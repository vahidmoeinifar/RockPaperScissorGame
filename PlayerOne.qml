import QtQuick 2.0

Item {
    property var type

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 310

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
