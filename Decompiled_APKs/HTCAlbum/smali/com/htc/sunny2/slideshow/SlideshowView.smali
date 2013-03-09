.class public Lcom/htc/sunny2/slideshow/SlideshowView;
.super Lcom/htc/sunny2/common/CommonView;
.source "SlideshowView.java"


# static fields
.field private static final LTAG:Ljava/lang/String; = "SlideshowView"


# instance fields
.field private controller:Lcom/htc/sunny2/slideshow/SlideshowController;

.field private imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

.field private mPlayIndex:I

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field private slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/CommonView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 30
    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 31
    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    .line 33
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 35
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    .line 52
    new-instance v0, Lcom/htc/sunny2/slideshow/ImagePreparator;

    const-string v1, "ImagePreparator"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v2, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/CommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 30
    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 31
    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    .line 33
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 35
    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    .line 45
    new-instance v0, Lcom/htc/sunny2/slideshow/ImagePreparator;

    const-string v1, "ImagePreparator"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v2, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImageIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImageIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPauseIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlayIRT()Z

    move-result v0

    return v0
.end method

.method private doNextImageIRT()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doNextImage()Z

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPauseIRT()Z
    .locals 2

    .prologue
    .line 233
    const-string v0, "SlideshowView"

    const-string v1, "doPauseIRT()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPause()Z

    .line 235
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPlayIRT()Z
    .locals 2

    .prologue
    .line 261
    const-string v0, "SlideshowView"

    const-string v1, "doPlayIRT()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPlay()Z

    .line 263
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPreviousImageIRT()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPreviousImage()Z

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initControllerWhenConditionReadyIRT()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 319
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 340
    :goto_0
    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    move v0, v9

    .line 323
    goto :goto_0

    .line 325
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    if-gtz v0, :cond_3

    :cond_2
    move v0, v9

    .line 326
    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_4

    move v0, v9

    .line 329
    goto :goto_0

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    if-nez v0, :cond_5

    move v0, v9

    .line 332
    goto :goto_0

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iget-object v5, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/slideshow/SlideshowController;->init(Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/IMediaList;ILcom/htc/sunny2/slideshow/ImagePreparator;Lcom/htc/sunny2/slideshow/SlideshowScene;Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 336
    const-string v0, "SlideshowView"

    const-string v1, "controller.init() NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v0, v9

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public doNextImage()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doNextImage]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1NextImage;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1NextImage;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "SlideshowView"

    const-string v1, "NextImage NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPause()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPause]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1Pause;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1Pause;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string v0, "SlideshowView"

    const-string v1, "doPause NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPlay()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPlay]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "SlideshowView"

    const-string v1, "doPlay NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPreviousImage()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPreviousImage]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1PreviousImage;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1PreviousImage;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const-string v0, "SlideshowView"

    const-string v1, "PreviousImage NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public layoutIRT(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, -0x1

    .line 305
    const-string v0, "SlideshowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutIRT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->initControllerWhenConditionReadyIRT()Z

    .line 308
    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/slideshow/SlideshowController;->setViewPort(II)V

    goto :goto_0
.end method

.method public onBindMediaListIRT(Lcom/htc/sunny2/IMediaList;I)Z
    .locals 2
    .parameter "list"
    .parameter "selectedIndex"

    .prologue
    .line 272
    const-string v0, "SlideshowView"

    const-string v1, "onBindMediaListIRT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->bindMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 274
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->deinit()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->initControllerWhenConditionReadyIRT()Z

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateIHT(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "bundle"

    .prologue
    .line 86
    const-string v0, "SlideshowView"

    const-string v1, "onCreateIHT +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "SlideshowView"

    const-string v1, "onCreateIHT -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyIHT()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "SlideshowView"

    const-string v1, "onDestroyIHT +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "SlideshowView"

    const-string v1, "onDestroyIHT -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT +"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Lcom/htc/sunny2/common/CommonView;->onRenderStartIRT()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    .line 128
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mEnv:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->init(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT() NG - imagePreparator.init()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mEnv:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRootNode:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/slideshow/SlideshowScene;->init(Lcom/htc/sunny2/RenderThread;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT() NG - scene.init()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "SlideshowView"

    const-string v1, "onRenderStartIRT -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRenderStopIRT()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "SlideshowView"

    const-string v1, "onRenderStopIRT +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->deinit()V

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    .line 139
    invoke-super {p0}, Lcom/htc/sunny2/common/CommonView;->onRenderStopIRT()V

    .line 140
    const-string v0, "SlideshowView"

    const-string v1, "onRenderStopIRT -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/htc/sunny2/common/CommonView;->onRenderToWindowIRT(I)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onUnBindMediaListIRT()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "SlideshowView"

    const-string v1, "onUnBindMediaListIRT"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->unbindMediaList()V

    .line 289
    return-void
.end method

.method public setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V
    .locals 2
    .parameter "evs"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->setSlideshowControlEventListener(Landroid/content/Context;Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setPlayIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    .line 73
    return-void
.end method

.method public setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V
    .locals 0
    .parameter "slideAnimatorsFactory"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    .line 60
    return-void
.end method

.method public setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 80
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 81
    return-void
.end method
