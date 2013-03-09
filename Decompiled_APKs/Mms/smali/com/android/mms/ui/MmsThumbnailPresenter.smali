.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MmsThumbnailPresenter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 38
    return-void
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "view"
    .parameter "slide"

    .prologue
    .line 56
    const-string v0, "MmsThumbnailPresenter"

    const-string v1, "presentFirstSlide(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 59
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 2
    .parameter "view"
    .parameter "image"

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "view"
    .parameter "video"

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "name"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020199

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1, p2, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 101
    return-void
.end method

.method public present()V
    .locals 3

    .prologue
    .line 48
    const-string v1, "MmsThumbnailPresenter"

    const-string v2, "present(): "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 50
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 4
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 85
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getMediaSize()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_0
.end method

.method public setPresent()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "MmsThumbnailPresenter"

    const-string v1, "setPresent(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->present()V

    .line 44
    return-void
.end method
