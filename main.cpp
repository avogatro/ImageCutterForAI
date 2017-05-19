#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QVideoFrame>
#include <QVideoWidget>
#include "filereader.h"
#include "videoframesurface.h"
#include "video.h"
#include <QFileInfo>
#include <QDebug>


inline void testVideoPlayer(){
    VideoManager * video;
    VideoFrameSurface* videoOutput;

    video = new VideoManager(100);
    QString url = QFileInfo("H:/test.mp4").absoluteFilePath();
    //     qDebug(QUrl::fromLocalFile(url).toString().toLatin1());
    //     if (QFileInfo("H:/test.mkv").exists())
    //         qDebug("true");
    //     else
    //         qDebug("false");
    video->changeMedia(QUrl::fromLocalFile(url));

    //videoOutput = new VideoFrameSurface(100);
    //videoOutput = new QVideoWidget();
    //videoOutput->showFullScreen();
    //video->setOutput(videoOutput);
    video->play();
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;


    testVideoPlayer();

    //engine.load(QUrl(QLatin1String("qrc:/qml/Main.qml")));
    //
    //FileReader fileReader;
    //engine.rootContext()->setContextProperty("fileReader", &fileReader);

    return app.exec();
}


