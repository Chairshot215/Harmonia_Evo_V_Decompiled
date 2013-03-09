.class public Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;
.super Lcom/htc/weather/videoview/WeatherVideoView;
.source "FxWeatherVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherVideo"

.field private static final PREFIX:Ljava/lang/String; = "[FxWeatherViedoView]: "

.field public static mClockAP:Z

.field public static mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxScene_app:Lcom/htc/fusion/fx/FxScene;

.field private mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

.field private mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

.field private mIsLooping:Z

.field private mIsPauseRendering:Z

.field private mPre_height:I

.field private mPre_width:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoIndex:I

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mClockAP:Z

    .line 45
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->NA:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/htc/weather/videoview/WeatherVideoView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsLooping:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    .line 33
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoIndex:I

    .line 35
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 36
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    .line 37
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 38
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene_app:Lcom/htc/fusion/fx/FxScene;

    .line 39
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 40
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 41
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    .line 42
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    .line 49
    invoke-direct {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->createView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attri"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/videoview/WeatherVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsLooping:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    .line 33
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoIndex:I

    .line 35
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 36
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    .line 37
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 38
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene_app:Lcom/htc/fusion/fx/FxScene;

    .line 39
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 40
    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 41
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    .line 42
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->createView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 63
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 67
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->setZOrderOnTop(Z)V

    .line 73
    const-string v3, "com.htc.weathervideo.base"

    invoke-static {p1, v3}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, resourceContext:Landroid/content/Context;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 77
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    .line 80
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    .line 83
    if-eqz v0, :cond_1

    .line 84
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, strAPpath:Ljava/lang/String;
    const-string v3, "Weather"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    sput-boolean v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mClockAP:Z

    .line 97
    return-void

    .line 96
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private pauseRendering()V
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    .line 378
    :cond_0
    return-void
.end method

.method private resumeRendering()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsPauseRendering:Z

    .line 387
    :cond_0
    return-void
.end method

.method private setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/controls/FxSceneContainer;)V
    .locals 2
    .parameter "fxScene_app"
    .parameter "fxScene_base"
    .parameter "fxSceneContainer"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 201
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 202
    invoke-virtual {p3, p2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 203
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 204
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 207
    iput-object p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method private setSceneDefaultSize()V
    .locals 6

    .prologue
    .line 390
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.weathervideo.base"

    invoke-static {v4, v5}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 393
    .local v2, resourceContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f03

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 395
    .local v3, width:I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 397
    .local v1, height:I
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v4, v3, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->setSceneDefaultSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeVideoPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "newPath"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 336
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->setVideoPath(Ljava/lang/String;)Z

    .line 337
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->play()I

    .line 339
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeVideoSize(II)Z
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 347
    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->NA:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    if-ne v0, v1, :cond_2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->changeSceneSize(IIZ)V

    .line 349
    iput p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    .line 350
    iput p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    .line 360
    :cond_1
    :goto_0
    return v2

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    if-eq p2, v0, :cond_1

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->changeSceneSize(IIZ)V

    .line 357
    iput p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    .line 358
    iput p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    goto :goto_0
.end method

.method public freeze()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->freezeVideoScreen()Z

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayStatus()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onDestroy()V

    .line 245
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 249
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 251
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->dispose()V

    .line 254
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 256
    :cond_2
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene_app:Lcom/htc/fusion/fx/FxScene;

    .line 257
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 258
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    .line 259
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    .line 260
    sput-boolean v3, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mClockAP:Z

    .line 261
    return v3
.end method

.method public onInit(Landroid/content/Context;II)I
    .locals 5
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->resumeRendering()V

    .line 169
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsLooping:Z

    .line 171
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    .line 173
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mIsLooping:Z

    invoke-virtual {v0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->setLoopingMode(Z)V

    .line 175
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->setSceneDefaultSize()V

    .line 176
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p2, p3}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxScene_app:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/controls/FxSceneContainer;)V

    .line 185
    :cond_1
    return v3
.end method

.method public onPause()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->stop()I

    .line 216
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->pauseRendering()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()I
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->resumeRendering()V

    .line 225
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->play()I

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 160
    :sswitch_0
    invoke-super {p0, p1}, Lcom/htc/weather/videoview/WeatherVideoView;->onWindowVisibilityChanged(I)V

    .line 161
    return-void

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public play()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onStartEffect(Z)V

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public release()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public reset()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoPath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    :cond_0
    const/4 v3, 0x0

    .line 325
    :goto_0
    return v3

    .line 306
    :cond_1
    const/4 v1, -0x1

    .line 307
    .local v1, index:I
    invoke-static {}, Lcom/htc/weather/WeatherVideo;->getVideoCount()I

    move-result v2

    .line 308
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 309
    invoke-static {v0}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    move v1, v0

    .line 317
    :cond_2
    if-ltz v1, :cond_4

    .line 318
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v3, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->setVideoIndex(I)V

    .line 320
    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v3, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->setVideoPath(Ljava/lang/String;)V

    .line 322
    :cond_3
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoPath:Ljava/lang/String;

    .line 323
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mVideoIndex:I

    .line 325
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 308
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public stop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-virtual {v0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onStopEffect(Z)V

    .line 286
    :cond_0
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->getDisplay(Landroid/content/Context;)V

    .line 112
    :cond_0
    if-le p3, p4, :cond_3

    .line 113
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->L:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxVideoScene:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_width:I

    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mPre_height:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->changeSceneSize(IIZ)V

    .line 127
    :cond_2
    return-void

    .line 116
    :cond_3
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->P:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 133
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mFxViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 142
    :cond_0
    return-void
.end method
