#ifndef VIDEOFRAME_H
#define VIDEOFRAME_H

#include <QVideoFrame>
#include <QImage>

class VideoFrame
{
public:
    VideoFrame(const QVideoFrame &videoFrame);
    VideoFrame(const VideoFrame &videoFrame);
    QImage crop(const int x,const int y, const int width,const int height);
    //QVideoFrame getQVideoFrame();
    //Qimage transform(&Filter)
    ~VideoFrame();
private:
    QVideoFrame myQVideoFrame;
    QImage myQImage;
    void generateImage();
};

#endif // VIDEOFRAME_H
