import QtQuick 2.0

Rectangle {
    property int won : 0

    id: statusRec
    color:

    {
        if (won === 1)
            "limegreen"
        else if (won === 2 )
            "red"
        else if (won === 0)
            "purple"
    }

    width: parent.width
    height: 33
    anchors.bottom: parent.bottom
    z: 2
    Text {
        text: {
         if (won === 1)
          "Win!"
         else if (won === 2 )
          "Fail!"
         else if (won === 0)
             "Equal! Try again."
        }
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: 18
        color: "white"
    }

}



