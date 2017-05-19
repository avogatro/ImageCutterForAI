#ifndef VIDEO_H
#define VIDEO_H

#include <QMediaPlayer>
#include <QMediaPlaylist>
#include <QVideoProbe>
#include <QDebug>
#include "videoframe.h"
#include "videoframesurface.h"
class VideoManager : public QObject
{
    Q_OBJECT

private:
    QMediaPlayer* myQMediaPlayer;
    QMediaPlaylist* myQMediaPlaylist;
    //QVideoFrame *myQVideoFrame;
    quint64 interval;
    QImage image;
    //VideoFrame* myVideoFrame;
public:
    ///
    /// \brief Video Constructor
    /// \param interval interval between cutting screenshots
    ///
    VideoManager(quint64 interval = 500);
    ~VideoManager();
    ///
    /// \brief changeMedia changes played media
    /// \param url
    ///
    void changeVideo(QUrl url);
    ///
    /// \brief addpictures TODO add folder of pictures
    /// \param pictureList
    ///
    void addpictures(QList<QUrl> pictureList);
    ///
    /// \brief setOutput set the only output for the QMediaplayer
    /// \param output the surface where screenshots are made
    ///
    void setOutput(VideoFrameSurface *output);
    ///
    /// \brief play play media
    ///
    void play();
    ///
    /// \brief stop stop media
    ///
    void stop();
    ///
    /// \brief pause pause media
    ///
    void pause();
    ///
    /// \brief forward jump forward to next interval
    ///
    void forward();
    ///
    /// \brief backward jump backward to the last interval
    ///
    void backward();
    ///
    /// \brief setPosition jump to position
    /// \param position
    ///
    void setPosition(qint64 position);
    ///
    /// \brief getScreenshot
    /// \return
    ///
    QImage getScreenshot();
    quint64 getInterval() const;
    void setInterval(const quint64 &value);
    ///
    /// \brief crop crop current frame with given data
    /// \param x x
    /// \param y y
    /// \param width width
    /// \param height height
    /// \return croped Image
    ///
    QImage crop(const int x, const int y, const int width, const int height);

public slots:
    void setImage(QImage value);
signals:
    void imageIsReady(QImage value);
};

#endif // VIDEO_H
