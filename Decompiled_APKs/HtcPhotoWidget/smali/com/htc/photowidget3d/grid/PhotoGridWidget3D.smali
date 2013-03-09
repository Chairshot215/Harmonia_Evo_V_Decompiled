.class public Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "PhotoGridWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$1;,
        Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;,
        Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;,
        Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;
    }
.end annotation


# static fields
.field private static final ACTION_USB_DISK:Ljava/lang/String; = "com.htc.showme.LOG"

.field private static final EXTRA_NAME:Ljava/lang/String; = "actionCoverage"

.field private static final INTENT_DISK_DRIVE_SHOW_ME:Ljava/lang/String; = "topic_tag-connections_computer-copy_files"


# instance fields
.field public bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

.field private isDestroy:Z

.field private isMediaShared:Z

.field mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

.field public mContext:Landroid/content/Context;

.field private mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

.field private mListItemScenePath_L:Ljava/lang/String;

.field private mListItemScenePath_P:Ljava/lang/String;

.field private mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

.field private mMediaScannerScanning:Z

.field private mOrientation:I

.field private mScene_L:Lcom/htc/fusion/fx/FxScene;

.field private mScene_P:Lcom/htc/fusion/fx/FxScene;

.field private mUiWorker:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

.field private mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

.field private mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 27
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 28
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 30
    iput v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    .line 31
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 32
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_P:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_L:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mMediaScannerScanning:Z

    .line 37
    new-instance v0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;-><init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 40
    new-instance v0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;-><init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUiWorker:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

    .line 41
    iput-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isDestroy:Z

    .line 43
    iput-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    .line 47
    new-instance v0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;-><init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    .line 1030
    return-void
.end method

.method static synthetic access$100(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isDestroy:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mMediaScannerScanning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleWorkerMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private deInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    const-string v1, "deInit"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 303
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseData()V

    .line 309
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseBmp()V

    .line 310
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImgOperator;->deInit()V

    .line 316
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_3

    .line 321
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 322
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 328
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 331
    :cond_4
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    if-eqz v1, :cond_5

    .line 333
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->stop()V

    .line 334
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    .line 337
    :cond_5
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    if-eqz v1, :cond_6

    .line 339
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->stop()V

    .line 340
    iput-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    .line 343
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    .line 345
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 347
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aput-object v3, v1, v0

    .line 343
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_8
    return-void
.end method

.method private getMediaUnmountState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 592
    const/4 v0, -0x1

    .line 594
    .local v0, nErrorMsg:I
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, sdState:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    if-eqz v2, :cond_0

    .line 599
    const v0, 0x7f050008

    .line 603
    :cond_0
    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    const v0, 0x7f050008

    .line 621
    :cond_1
    :goto_0
    return v0

    .line 607
    :cond_2
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    iget-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    if-nez v2, :cond_3

    .line 612
    const v0, 0x7f05000a

    .line 614
    :cond_3
    iput-boolean v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    goto :goto_0

    .line 616
    :cond_4
    invoke-static {v3}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    const v0, 0x7f050009

    .line 619
    iput-boolean v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    goto :goto_0
.end method

.method private handleAddCache()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "handleAddCache"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/grid/ImgOperator;->addCache([Lcom/htc/photowidget3d/grid/BitmapArray;)V

    .line 363
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0
.end method

.method private handleDeleteCache()V
    .locals 1

    .prologue
    .line 368
    const-string v0, "handleDeleteCache"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->deleteCacheFile()V

    goto :goto_0
.end method

.method private handleLaunchAlbumGrid(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 518
    const-string v1, "handleLaunchAlbumGrid"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 520
    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getMediaUnmountState()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 537
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v0, launchAlbum:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/photowidget3d/grid/Constants;->getResolution()I

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const-string v1, "com.htc.album"

    const-string v2, "com.htc.album.AlbumMain.ActivityMainMultiPanel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    :goto_1
    const/high16 v1, 0x1480

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 532
    :cond_1
    const-string v1, "com.htc.album"

    const-string v2, "com.htc.album.AlbumMain.ActivityMainDropList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleLaunchAlbumPhoto(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 541
    const-string v1, "handleLaunchAlbumPhoto"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getMediaUnmountState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.VIEW_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, launchAlbum:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1, v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->setLaunchAlbumInfo(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleLaunchAlbumPicker()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const/16 v1, 0x1e63

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method

.method private handleMediaMounted()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 637
    return-void
.end method

.method private handleMediaUnmounted()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->showError()V

    goto :goto_0
.end method

.method private handleMode10ViewState(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 388
    const-string v0, "handleMode10ViewState"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/ImgOperator;->getCurrentFocus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    goto :goto_0
.end method

.method private handleOrientationChanged()V
    .locals 1

    .prologue
    .line 581
    const-string v0, "handleOrientationChanged"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseData()V

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->initLayout()V

    .line 587
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleOrientationSwitch()V

    .line 588
    return-void
.end method

.method private handleOrientationSwitch()V
    .locals 4

    .prologue
    .line 561
    const-string v2, "handleOrientationSwitch"

    invoke-static {v2}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/M10Operator;->getPageState()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 567
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->showError()V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/M10Operator;->showNormalPage()V

    .line 573
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/ImgOperator;->getCurrentFocus()I

    move-result v0

    .line 574
    .local v0, nCurrentFocus:I
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/M10Operator;->getCurrentView()I

    move-result v1

    .line 575
    .local v1, nCurrentView:I
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/M10Operator;->getIsCubePlaying()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/photowidget3d/grid/M10Operator;->orientationSwitch(IIZ)V

    goto :goto_0
.end method

.method private handleScrollAction(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 399
    const-string v5, "handleScrollAction"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 402
    .local v0, imgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 403
    .local v1, m10Operator:Lcom/htc/photowidget3d/grid/M10Operator;
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 404
    .local v4, workerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 410
    .local v2, nAction:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 412
    .local v3, nType:I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/htc/photowidget3d/grid/ImgOperator;->getBmp(III[Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 414
    iget-object v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v1, v5}, Lcom/htc/photowidget3d/grid/M10Operator;->playAnim([Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 416
    const-string v5, "mM10Operator.playAnim(bmpDw) false"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->getCurrentFocus()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    .line 422
    if-nez v3, :cond_0

    .line 424
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    const/16 v5, 0xb

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0

    .line 438
    :cond_3
    const-string v5, "mImgOperator.getBmpDrawable failed"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSwitchToGrid(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 444
    const-string v5, "handleSwitchToGrid"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 447
    .local v0, imgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 448
    .local v1, m10Operator:Lcom/htc/photowidget3d/grid/M10Operator;
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 449
    .local v4, workerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const/4 v2, 0x2

    .line 455
    .local v2, nAction:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 457
    .local v3, nType:I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/htc/photowidget3d/grid/ImgOperator;->getBmp(III[Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 459
    iget-object v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v1, v5}, Lcom/htc/photowidget3d/grid/M10Operator;->playAnim([Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    const-string v5, "mM10Operator.playAnim(bmpDw) false"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->getCurrentFocus()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    .line 467
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    const/16 v5, 0xb

    invoke-virtual {p0, v4, v5}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0

    .line 479
    :cond_3
    const-string v5, "mImgOperator.getBmpDrawable failed"

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSwitchToPhoto(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 485
    const-string v6, "handleSwitchToPhoto"

    invoke-static {v6}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 488
    .local v0, imgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 489
    .local v1, m10Operator:Lcom/htc/photowidget3d/grid/M10Operator;
    iget-object v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 490
    .local v5, workerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const/4 v2, 0x2

    .line 495
    .local v2, nAction:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 496
    .local v3, nOffset:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 498
    .local v4, nType:I
    iget-object v6, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v0, v2, v4, v3, v6}, Lcom/htc/photowidget3d/grid/ImgOperator;->getBmp(III[Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 500
    iget-object v6, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-virtual {v1, v6}, Lcom/htc/photowidget3d/grid/M10Operator;->playAnim([Lcom/htc/photowidget3d/grid/BitmapArray;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 502
    const-string v6, "mM10Operator.playAnim(bmpDw) false"

    invoke-static {v6}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->getCurrentFocus()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    .line 507
    const/16 v6, 0x9

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;II)V

    goto :goto_0

    .line 512
    :cond_3
    const-string v6, "mImgOperator.getBmpDrawable failed"

    invoke-static {v6}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleWorkerMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 945
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1027
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 948
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleOrientationChanged()V

    goto :goto_0

    .line 952
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleOrientationSwitch()V

    goto :goto_0

    .line 956
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleMediaUnmounted()V

    goto :goto_0

    .line 960
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleMediaMounted()V

    goto :goto_0

    .line 964
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleScrollAction(Landroid/os/Message;)V

    goto :goto_0

    .line 968
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleSwitchToGrid(Landroid/os/Message;)V

    goto :goto_0

    .line 972
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleSwitchToPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 976
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleLaunchAlbumGrid(Landroid/os/Message;)V

    goto :goto_0

    .line 980
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleLaunchAlbumPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 984
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleMode10ViewState(Landroid/os/Message;)V

    goto :goto_0

    .line 988
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleLaunchAlbumPicker()V

    goto :goto_0

    .line 992
    :sswitch_b
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleAddCache()V

    goto :goto_0

    .line 996
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleDeleteCache()V

    goto :goto_0

    .line 1000
    :sswitch_d
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->reloadData()V

    goto :goto_0

    .line 1004
    :sswitch_e
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->deInit()V

    goto :goto_0

    .line 1008
    :sswitch_f
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->init()V

    goto :goto_0

    .line 1012
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->queryAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 1017
    :sswitch_11
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->isContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0

    .line 945
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xf -> :sswitch_11
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x1b59 -> :sswitch_0
    .end sparse-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 110
    new-instance v1, Lcom/htc/photowidget3d/grid/ImgOperator;

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/photowidget3d/grid/ImgOperator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    .line 111
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->initLayout()V

    .line 113
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->queryAlbum(Landroid/content/Intent;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->loadDataFromProperties()V

    .line 122
    return-void
.end method

.method private initLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 215
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 216
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 220
    iget v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    if-ne v6, v0, :cond_2

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_L:Ljava/lang/String;

    .line 221
    .local v3, ListItemScenePath:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/photowidget3d/grid/M10Operator;->init(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Ljava/lang/String;Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 224
    .end local v3           #ListItemScenePath:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-eqz v0, :cond_1

    .line 226
    iget v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    if-ne v6, v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    sget-object v1, Lcom/htc/photowidget3d/grid/Constants;->GRID_WIDTH_L:[I

    invoke-static {}, Lcom/htc/photowidget3d/grid/Constants;->getResolution()I

    move-result v4

    aget v1, v1, v4

    sget-object v4, Lcom/htc/photowidget3d/grid/Constants;->GRID_HEIGHT_L:[I

    invoke-static {}, Lcom/htc/photowidget3d/grid/Constants;->getResolution()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v0, v1, v4, v7, v8}, Lcom/htc/photowidget3d/grid/ImgOperator;->initLayoutInfo(IIII)V

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_P:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    sget-object v1, Lcom/htc/photowidget3d/grid/Constants;->GRID_WIDTH_P:[I

    invoke-static {}, Lcom/htc/photowidget3d/grid/Constants;->getResolution()I

    move-result v4

    aget v1, v1, v4

    sget-object v4, Lcom/htc/photowidget3d/grid/Constants;->GRID_HEIGHT_P:[I

    invoke-static {}, Lcom/htc/photowidget3d/grid/Constants;->getResolution()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v0, v1, v4, v8, v7}, Lcom/htc/photowidget3d/grid/ImgOperator;->initLayoutInfo(IIII)V

    goto :goto_1
.end method

.method private initScene()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 186
    invoke-static {v3}, Lcom/htc/photowidget3d/grid/util/M10Util;->getWidgetScenePath(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, mScenePath_P:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/photowidget3d/grid/util/M10Util;->getWidgetScenePath(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, mScenePath_L:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/photowidget3d/grid/util/M10Util;->getWidgetListItemScenePath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_P:Ljava/lang/String;

    .line 192
    invoke-static {v4}, Lcom/htc/photowidget3d/grid/util/M10Util;->getWidgetListItemScenePath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mListItemScenePath_L:Ljava/lang/String;

    .line 194
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 203
    :goto_0
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 211
    :goto_1
    return-void

    .line 200
    :cond_0
    iput-object v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    .line 209
    :cond_1
    iput-object v5, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    goto :goto_1
.end method

.method private reloadData()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->resetPage()V

    .line 644
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseData()V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->resetPage()V

    .line 650
    :cond_1
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->initLayout()V

    .line 651
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->loadDataFromProperties()V

    .line 652
    return-void
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_P:Lcom/htc/fusion/fx/FxScene;

    .line 674
    .local v0, currentScene:Lcom/htc/fusion/fx/FxScene;
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mScene_L:Lcom/htc/fusion/fx/FxScene;

    .line 679
    :cond_0
    if-nez v0, :cond_1

    .line 681
    const-string v1, "getScene, currentScene is null"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 683
    :cond_1
    return-object v0
.end method

.method public hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z
    .locals 3
    .parameter "worker"
    .parameter "code"

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 805
    .local v0, bRet:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 815
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 810
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    invoke-interface {p1, p2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 815
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public loadDataFromProperties()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 152
    .local v0, props:Ljava/util/Properties;
    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->showError()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-nez v1, :cond_4

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->stop()V

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->stop()V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1, v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->getSavedProperties(Ljava/util/Properties;)V

    .line 173
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImgOperator;->loadAlbum()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->setPageState(I)V

    .line 176
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0

    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->showError()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 53
    const-string v0, "[onActivityResult] OK"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 54
    if-eqz p3, :cond_0

    .line 56
    const-string v0, "[onActivityResult] get intent."

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1, p3}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;ILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "[onActivityResult] CANCELED"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/16 v2, 0x1b59

    .line 689
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, newConfiguration.orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 693
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    if-ne v0, v1, :cond_1

    .line 695
    const-string v0, "onConfigurationChanged, newConfiguration is the same as original one. Do nothing."

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    .line 701
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 704
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 70
    const-string v1, "onCreate"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    .line 74
    new-instance v1, Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {v1}, Lcom/htc/photowidget3d/grid/M10Operator;-><init>()V

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    .line 76
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mOrientation:I

    .line 78
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUiWorker:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 80
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$UsbBroadcastHandler;->start()V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$BroadcastHandler;->start()V

    .line 89
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->bmpDw:[Lcom/htc/photowidget3d/grid/BitmapArray;

    new-instance v2, Lcom/htc/photowidget3d/grid/BitmapArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/photowidget3d/grid/BitmapArray;-><init>(Landroid/graphics/Bitmap;Z)V

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/Constants;->initResolution(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->initScene()V

    .line 96
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->initLayout()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 280
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isDestroy:Z

    .line 283
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUiWorker:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mUiWorker:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 294
    return-void
.end method

.method public onEdit()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleLaunchAlbumPicker()V

    .line 252
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 714
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 729
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 718
    :pswitch_0
    const-string v0, "onHostMessage HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b59

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaMounted()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 757
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 761
    :cond_0
    return-void
.end method

.method public onMediaUnmounted()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseData()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 752
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 753
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 272
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 102
    const-string v0, "onPostCreate"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 257
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->refreshBmp()V

    .line 266
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    goto :goto_0
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "fTilt"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/grid/M10Operator;->onTiltChanged(F)V

    .line 739
    :cond_0
    return-void
.end method

.method public queryAlbum(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 656
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    if-nez v1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1, p1}, Lcom/htc/photowidget3d/grid/ImgOperator;->init(Landroid/content/Intent;)V

    .line 663
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 664
    .local v0, props:Ljava/util/Properties;
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mImgOperator:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-virtual {v1, v0}, Lcom/htc/photowidget3d/grid/ImgOperator;->getPropertiesToSave(Ljava/util/Properties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->storeInstanceData(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V
    .locals 1
    .parameter "worker"
    .parameter "code"

    .prologue
    .line 765
    if-nez p1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 770
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 771
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 772
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;II)V
    .locals 1
    .parameter "worker"
    .parameter "code"
    .parameter "arg1"

    .prologue
    .line 777
    if-nez p1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 782
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 783
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 784
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 785
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;ILandroid/content/Intent;)V
    .locals 1
    .parameter "worker"
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 790
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 795
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 796
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 797
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public showError()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaShared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->isMediaShared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->getMediaUnmountState()I

    move-result v0

    .line 133
    .local v0, nErrorMsg:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showError msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 134
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v1, v0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->showErrorPage(IZZ)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    const v2, 0x7f050006

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/photowidget3d/grid/M10Operator;->showErrorPage(IZZ)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->mM10Operator:Lcom/htc/photowidget3d/grid/M10Operator;

    const v2, 0x7f05000b

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/photowidget3d/grid/M10Operator;->showErrorPage(IZZ)V

    goto :goto_0
.end method
