#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "DataEntryModel.h"
#include "RoleEntryModel.h"
#include "DynamicEntryModel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    qmlRegisterType <DataEntryModel>("chang.qtexample", 1, 0, "DataEntryModel");
    qmlRegisterType <RoleEntryModel>("chang.qtexample", 1, 0, "RoleEntryModel");
    qmlRegisterType <DynamicEntryModel>("chang.qtexample", 1, 0, "DynamicEntryModel");

    QQmlApplicationEngine engine;
//    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    engine.load(QUrl(QLatin1String("qrc:/MyDynamicListView.qml")));

    return app.exec();
}
