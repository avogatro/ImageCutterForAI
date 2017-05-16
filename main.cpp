#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QVideoFrame>
#include "filereader.h"
#include "videoframe.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;


    QVideoFrame testQVideoFrame = QVideoFrame();
    VideoFrame testVideoFrame1 = VideoFrame(testQVideoFrame);
    VideoFrame testVideoFrame2 = VideoFrame(testVideoFrame1);

    engine.load(QUrl(QLatin1String("qrc:/qml/Main.qml")));
    //
    //FileReader fileReader;
    //engine.rootContext()->setContextProperty("fileReader", &fileReader);

    return app.exec();
}
