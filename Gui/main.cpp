#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QQmlContext>
#include "treeviewmodel.h"
#include "myperson.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QQuickStyle::setStyle("Material");
    //QQuickStyle::setStyle("Imagine");
    //QQuickStyle::setStyle("Universal");
    //QQuickStyle::setStyle("Fusion");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    //const QUrl url(QStringLiteral("qrc:/main.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Button.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Menu.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-ListView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-GridView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Repeater.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-SwipeView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-TabView_Simple.qml"));
    const QUrl url(QStringLiteral("qrc:/Qml-TabBar.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-SplitView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Slider_and_ProgressBar.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-GroupBox_RadioBox_CheckBox.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Dialog.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-FileDialog.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-ComboBox.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-SpinBox.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Switch.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-TextArea.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-StackView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-TreeView.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-QPROPERTY.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Canvas.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-Dial.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-TableView.qml"));
    //const QUrl url(QStringLiteral("qrc:/QML-FlickableImage.qml"));
    //const QUrl url(QStringLiteral("qrc:/Qml-ResizableControl.qml"));

    //TreeViewModel myModel;
    //engine.rootContext()->setContextProperty("myModel", &myModel);

    //QObjectList people;
    //people.append(new MyPerson("namdz", 30));
    //people.append(new MyPerson("lenam", 31));
    //people.append(new MyPerson("phuongnam", 32));
    //people.append(new MyPerson("namle", 33));
    //people.append(new MyPerson("lpn", 34));
    //people.append(new MyPerson("nlp", 35));
    //people.append(new MyPerson("pn", 36));
    //engine.rootContext()->setContextProperty("people", QVariant::fromValue(people));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
