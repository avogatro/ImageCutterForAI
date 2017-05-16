#include "videoframe.h"


VideoFrame::VideoFrame(const QVideoFrame &qVideoFrame) {
    this->myQVideoFrame = QVideoFrame (qVideoFrame);
    this->generateImage();
}
VideoFrame::VideoFrame(const VideoFrame &videoFrame){
    this->myQVideoFrame = QVideoFrame (videoFrame.myQVideoFrame);
    this->generateImage();
}
QImage VideoFrame::crop(const int x,const int y, const int width,const int height) const{
    return myQImage.copy(x,y,width,height);
}

void VideoFrame::generateImage(){
    if (this->myQVideoFrame.map(QAbstractVideoBuffer::ReadOnly)) {


        this->myQImage = QImage(this->myQVideoFrame.bits(),
                                this->myQVideoFrame.width(),
                                this->myQVideoFrame.height(),
                                this->myQVideoFrame.bytesPerLine(),
                                QVideoFrame::imageFormatFromPixelFormat(this->myQVideoFrame.pixelFormat())
                                );
        this->myQVideoFrame.unmap();
    }
}

VideoFrame::~VideoFrame(){

}

QVideoFrame VideoFrame::getMyQVideoFrame() const
{
    return myQVideoFrame;
}

void VideoFrame::setMyQVideoFrame(const QVideoFrame &value)
{
    myQVideoFrame = value;
    this->generateImage();
}



