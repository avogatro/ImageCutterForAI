#include "video.h"

quint64 VideoManager::getInterval() const
{
    return interval;
}

void VideoManager::setInterval(const quint64 &value)
{

    if (interval>0)
        this->interval = value;
    else
        throw std::out_of_range ("video interval <= 0");
}

//void VideoManager::setMyQVideoFrame(const QVideoFrame &value)
//{
//    if (myQVideoFrame != NULL){
//        *myQVideoFrame = value;
//        myVideoFrame->setMyQVideoFrame(*myQVideoFrame);
//    }
//    else{
//        myQVideoFrame = new QVideoFrame(value);
//        myVideoFrame = new VideoFrame(*myQVideoFrame);
//    }
//}

VideoManager::VideoManager(quint64 interval)
{
    myQMediaPlayer = new QMediaPlayer();
    myQMediaPlayer->setVolume(100);
    myQMediaPlayer->setMuted(false);
    myQMediaPlaylist = new QMediaPlaylist(myQMediaPlayer);
    //myQVideoFrame = NULL;
    //myVideoFrame = NULL;
    myQMediaPlayer->setPlaylist(myQMediaPlaylist);

    setInterval(interval);
}

VideoManager::~VideoManager()
{
    delete myQMediaPlayer;
    delete myQMediaPlaylist;

//    if (myQVideoFrame != NULL)
//        delete myQVideoFrame;
//    if (myVideoFrame != NULL)
//        delete myVideoFrame;

}

void VideoManager::changeVideo(QUrl url)
{
    stop();
    myQMediaPlaylist->clear();
    myQMediaPlaylist->addMedia(url);
    myQMediaPlaylist->setCurrentIndex(1);
}
//TODO
void VideoManager::addpictures(QList<QUrl> pictureList)
{

}



void VideoManager::setOutput(VideoFrameSurface *output)
{
    myQMediaPlayer->setVideoOutput(output);
    output->setInterval(interval);
    connect(output, SIGNAL(imageIsReady(QImage)),
                         this, SLOT(setImage(QImage)));
}



void VideoManager::play()
{
    myQMediaPlayer->play();
    qDebug() << " myQMediaPlaylist mediastatus "<<myQMediaPlaylist->mediaCount();
}
void VideoManager::stop()
{
    myQMediaPlayer->stop();
}

void VideoManager::setPosition(qint64 position)
{
    position = position/interval*interval;
    if (myQMediaPlayer->duration()<=0)
        std::out_of_range ("video duration <=0");
    else if(position>=0 && position<myQMediaPlayer->duration()){
        myQMediaPlayer->setPosition(position);

    }else
        throw std::out_of_range ("video position out of range");
}

void VideoManager::pause()
{
    this->myQMediaPlayer->pause();
    setPosition( (this->myQMediaPlayer->position()/interval)
                 * interval);
}

void VideoManager::forward()
{
    this->pause();
    this->setPosition( this->myQMediaPlayer->position() + interval);
}
void VideoManager::backward()
{
    this->pause();
    this->setPosition( this->myQMediaPlayer->position() - interval);

}


QImage VideoManager::crop(const int x,const int y, const int width,const int height)
{
    this->pause();
    return this->image.copy(x,y,width,height);
}

void VideoManager::setImage(QImage value)
{
    this->image = value;
    emit imageIsReady(image);
}
