.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "SlideshowPresenter"


# instance fields
.field mDisplayHeight:I

.field mDisplayWidth:I

.field protected final mHandler:Landroid/os/Handler;

.field private mIsSlieshowPlay:Z

.field mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 60
    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayWidth:I

    .line 61
    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayHeight:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    .line 84
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 75
    iput v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 78
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 79
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowPresenter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    return p1
.end method

.method private setImageByType(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "view"
    .parameter "image"
    .parameter "imageType"
    .parameter "imageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 331
    const-string v0, "image/gif"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    move-object v0, p1

    .line 332
    check-cast v0, Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0, p4}, Lcom/android/mms/ui/SlideView;->setImage(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 342
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 464
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    goto :goto_0
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 471
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    goto :goto_0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 480
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 483
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 497
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_5

    .line 498
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_4

    .line 499
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 511
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 525
    :cond_5
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 150
    const-string v0, "SlideshowPresenter"

    const-string v1, "present(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 153
    return-void
.end method

.method public present(Z)V
    .locals 3
    .parameter "isShowMedia"

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;Z)V

    .line 146
    return-void
.end method

.method public present(ZZ)V
    .locals 4
    .parameter "isSlideshowPlay"
    .parameter "showFirst"

    .prologue
    const/4 v3, 0x1

    .line 131
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    .line 132
    if-eqz p2, :cond_0

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;Z)V

    .line 138
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 9
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 278
    if-eqz p3, :cond_0

    .line 279
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getMediaSize()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v7

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V

    .line 284
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_0

    .line 287
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, src:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 290
    .local v1, cs:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    invoke-interface {p1, v8, v2}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v1           #cs:Ljava/lang/CharSequence;
    .end local v2           #src:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 304
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v4, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v4, :cond_3

    .line 305
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 313
    :cond_1
    :goto_1
    return-void

    .line 294
    .end local v0           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    .restart local v1       #cs:Ljava/lang/CharSequence;
    .restart local v2       #src:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, str:Ljava/lang/String;
    invoke-interface {p1, v8, v3}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v1           #cs:Ljava/lang/CharSequence;
    .end local v2           #src:Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    .restart local v0       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_3
    sget-object v4, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v4, :cond_4

    .line 307
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_1

    .line 308
    :cond_4
    sget-object v4, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v4, :cond_5

    .line 309
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_1

    .line 310
    :cond_5
    sget-object v4, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v4, :cond_1

    .line 311
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_1
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 353
    if-eqz p4, :cond_0

    .line 358
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, imageType:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    .line 366
    .local v2, imageUri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->setImageByType(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .end local v1           #imageType:Ljava/lang/String;
    .end local v2           #imageUri:Landroid/net/Uri;
    :cond_0
    instance-of v3, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 381
    check-cast v3, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 384
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 388
    instance-of v3, p1, Lcom/android/mms/ui/SlideView;

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 390
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v3, :cond_4

    .line 391
    check-cast p1, Lcom/android/mms/ui/SlideView;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/ui/SlideView;->startImage()V

    .line 399
    .end local v0           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_2
    :goto_1
    return-void

    .line 363
    .restart local p1
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 364
    .restart local v1       #imageType:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .restart local v2       #imageUri:Landroid/net/Uri;
    goto :goto_0

    .line 392
    .end local v1           #imageType:Ljava/lang/String;
    .end local v2           #imageUri:Landroid/net/Uri;
    .restart local v0       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_4
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v3, :cond_5

    .line 393
    check-cast p1, Lcom/android/mms/ui/SlideView;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/ui/SlideView;->pauseImage()V

    goto :goto_1

    .line 394
    .restart local p1
    :cond_5
    sget-object v3, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v3, :cond_2

    .line 395
    check-cast p1, Lcom/android/mms/ui/SlideView;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/ui/SlideView;->stopImage()V

    goto :goto_1
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 5
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd8

    .line 216
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, regionId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 220
    .local v0, r:Lcom/android/mms/model/RegionModel;
    :goto_0
    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    :cond_0
    const/16 v2, 0xda

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_1
    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 240
    :goto_1
    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-gtz v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/LayoutModel;->findAvailableRegion(Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 242
    const-string v2, "SlideshowPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final, Region = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 273
    :cond_4
    :goto_2
    return-void

    .line 217
    .end local v0           #r:Lcom/android/mms/model/RegionModel;
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    .restart local v0       #r:Lcom/android/mms/model/RegionModel;
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    const-string v3, "Text"

    invoke-virtual {v2, v3}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_7
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 250
    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-gtz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-gtz v2, :cond_8

    .line 251
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/LayoutModel;->findAvailableRegion(Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 252
    const-string v2, "SlideshowPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final, Region = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_8
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_2

    .line 256
    .restart local p2
    :cond_9
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 258
    const-string v2, "Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    if-nez v2, :cond_c

    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 264
    :cond_a
    :goto_3
    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-gtz v2, :cond_b

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-gtz v2, :cond_b

    .line 265
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/LayoutModel;->findAvailableRegion(Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 266
    const-string v2, "SlideshowPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final, Region = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_b
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto/16 :goto_2

    .line 259
    .restart local p2
    :cond_c
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    const-string v3, "Image"

    invoke-virtual {v2, v3}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v0

    goto :goto_3
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1
    .parameter "view"
    .parameter "model"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;Z)V

    .line 161
    return-void
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;Z)V
    .locals 11
    .parameter "view"
    .parameter "model"
    .parameter "isShowMedia"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 164
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 165
    const-string v7, "SlideshowPresenter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "presentSlide()>> isShowMedia: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez p2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    .local v5, useImageRegion:Z
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    .line 177
    .local v6, useTextRegion:Z
    iget v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayWidth:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayHeight:I

    if-lez v7, :cond_3

    .line 179
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v7, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->detectOrientation()V

    .line 181
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v7, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    iget v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayWidth:I

    iget v10, p0, Lcom/android/mms/ui/SlideshowPresenter;->mDisplayHeight:I

    invoke-virtual {v7, v9, v10, v5, v6}, Lcom/android/mms/model/LayoutModel;->adaptTo(IIZZ)Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLastAdaptedLayout:Lcom/android/mms/model/LayoutModel;

    .line 186
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 187
    .local v3, media:Lcom/android/mms/model/MediaModel;
    instance-of v7, v3, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v7, :cond_7

    .line 190
    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v4

    .line 191
    .local v4, oriVisibility:Z
    if-eqz p3, :cond_5

    if-nez v4, :cond_5

    .line 192
    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    move-object v7, v0

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/mms/model/RegionMediaModel;->setVisible(Z)V

    .line 193
    :cond_5
    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    move-object v7, v0

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v7, v9}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    .line 194
    if-eqz p3, :cond_4

    if-nez v4, :cond_4

    .line 195
    check-cast v3, Lcom/android/mms/model/RegionMediaModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/mms/model/RegionMediaModel;->setVisible(Z)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 201
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #oriVisibility:Z
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Landroid/drm/mobile1/DrmException;
    const-string v7, "SlideshowPresenter"

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v10, 0x7f090034

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v1           #e:Landroid/drm/mobile1/DrmException;
    .end local v5           #useImageRegion:Z
    .end local v6           #useTextRegion:Z
    :cond_6
    move v5, v8

    .line 170
    goto/16 :goto_1

    .line 197
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    .restart local v5       #useImageRegion:Z
    .restart local v6       #useTextRegion:Z
    :cond_7
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    check-cast v3, Lcom/android/mms/model/AudioModel;

    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 317
    if-eqz p4, :cond_0

    .line 318
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 322
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 325
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 326
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 413
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    if-eqz v1, :cond_4

    .line 415
    if-eqz p4, :cond_0

    .line 416
    const-string v1, "VideoFrame"

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 418
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 419
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 422
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 441
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 443
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_7

    .line 444
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 452
    :cond_3
    :goto_1
    return-void

    .line 430
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-eq v0, v1, :cond_5

    .line 431
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->setImageGone()V

    .line 433
    :cond_5
    if-eqz p4, :cond_6

    .line 434
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    :cond_6
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 437
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    goto :goto_0

    .line 445
    :cond_7
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_8

    .line 446
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_1

    .line 447
    :cond_8
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_9

    .line 448
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_1

    .line 449
    :cond_9
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 450
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_1
.end method

.method public setLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 455
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 456
    return-void
.end method

.method public setPresent()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 99
    const-string v7, "SlideshowPresenter"

    const-string v8, "setPresent(): "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    .line 101
    .local v4, models:Lcom/android/mms/model/SlideshowModel;
    const/4 v3, 0x0

    .line 102
    .local v3, model:Lcom/android/mms/model/SlideModel;
    const/4 v2, -0x1

    .line 103
    .local v2, imageIndex:I
    const/4 v0, -0x1

    .line 104
    .local v0, firstIndex:I
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    .line 105
    .local v6, slidesNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 106
    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 107
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 108
    :cond_0
    move v2, v1

    .line 116
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    if-le v2, v9, :cond_5

    .line 117
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 123
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsSlieshowPlay:Z

    .line 124
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v7, Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {p0, v7, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 125
    return-void

    .line 110
    .restart local v5       #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    :cond_3
    if-gez v0, :cond_4

    .line 112
    move v0, v1

    .line 105
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    if-le v0, v9, :cond_6

    .line 119
    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    goto :goto_1

    .line 121
    :cond_6
    iget v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v4, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    goto :goto_1
.end method
