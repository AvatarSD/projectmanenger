import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.XmlListModel 2.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("ProjectManenger by S.D.")

    XmlListModel {
        id: xmlNotes
        source: "file:///home/sd/other-projects/ProjectManenger/ProjectManenger/Evernote.enex.xml"
        query: "/en-export/note"

        XmlRole { name: "title"; query: "title/string()" }
        XmlRole { name: "content"; query: "content/string()" }
    }


    ListView {
        anchors.fill: parent
        model: xmlNotes
        delegate: PrjItem{}
        Component.onCompleted: xmlNotes.reload()
    }


}
