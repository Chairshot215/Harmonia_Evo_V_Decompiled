.class public Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.super Lcom/htc/photowidget3d/base/PhotoWidgetBase;
.source "PhotoAlbumWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;,
        Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;
    }
.end annotation


# static fields
.field private static final ACTION_USB_DISK:Ljava/lang/String; = "com.htc.showme.LOG"

.field private static final EXTRA_NAME:Ljava/lang/String; = "actionCoverage"

.field private static final INTENT_DISK_DRIVE_SHOW_ME:Ljava/lang/String; = "topic_tag-connections_computer-copy_files"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isDestroy:Z

.field private isMediaShared:Z

.field mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

.field mDataRefreshListener:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

.field mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

.field mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

.field private mLastSelectedIndex:I

.field mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

.field private mMediaScannerScanning:Z

.field private mSelectedIndex:I

.field private mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

.field mWidgetId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;-><init>()V

    .line 47
    iput v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I

    .line 48
    iput v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mLastSelectedIndex:I

    .line 50
    iput-boolean v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z

    .line 53
    iput-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    .line 55
    new-instance v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mDataRefreshListener:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    .line 56
    new-instance v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWidgetId:J

    .line 62
    new-instance v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    .line 63
    iput-boolean v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z

    .line 1088
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->lanuchFolderPicker()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method private deInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[deInit] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->cancel(Z)Z

    .line 237
    :cond_0
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    .line 239
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->stop()V

    .line 242
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->stop()V

    .line 248
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 254
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider;->release()V

    .line 259
    :cond_4
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    .line 261
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/ListViewManager;->release()V

    .line 263
    :cond_5
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    .line 264
    iput-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mDataRefreshListener:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    .line 266
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[deInit] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 105
    sget-object v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[init] +++"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/ListViewManager;->getItemWidth()I

    move-result v1

    .line 107
    .local v1, itemWidth:I
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/ListViewManager;->getItemHeight()I

    move-result v0

    .line 109
    .local v0, itemHeight:I
    new-instance v3, Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getHostContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/htc/photowidget3d/image/ImageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;II)V

    iput-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    .line 110
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mDataRefreshListener:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/image/ImageProvider;->setDataRefreshListener(Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;)V

    .line 112
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    new-instance v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOnErrorClickListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;)V

    .line 113
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    new-instance v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOnListItemChangeListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;)V

    .line 114
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    new-instance v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOnListItemClickListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;)V

    .line 115
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    new-instance v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOnListViewChangeListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, pickerResult:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->savePickerResult(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->loadDataFromProperties()V

    .line 120
    sget-object v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[init] ---"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private lanuchFolderPicker()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "com.htc.photowidget3d.album/open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    return-void
.end method

.method private onMediaMounted()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider;->onMediaMounted()V

    .line 926
    return-void
.end method

.method private onMediaUnmounted()V
    .locals 5

    .prologue
    .line 930
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z

    .line 931
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/image/ImageProvider;->stopDecoder()V

    .line 932
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    if-eqz v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->cancel(Z)Z

    .line 935
    :cond_0
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v0

    .line 936
    .local v0, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    const/4 v1, -0x1

    .line 937
    .local v1, state:I
    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v1

    .line 941
    :cond_1
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 943
    :cond_2
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :goto_0
    return-void

    .line 948
    :cond_3
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onMediaUnmounted] show Media Unmounted."

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->showSdcardRemoved()V

    goto :goto_0
.end method

.method private onSdcardShared()V
    .locals 4

    .prologue
    .line 957
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z

    .line 958
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/image/ImageProvider;->stopDecoder()V

    .line 959
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    if-eqz v2, :cond_0

    .line 960
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->cancel(Z)Z

    .line 962
    :cond_0
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v0

    .line 963
    .local v0, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    const/4 v1, -0x1

    .line 964
    .local v1, state:I
    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v1

    .line 968
    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_2
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onSdcardShared] Disk Drive."

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->showSdcardShared()V

    goto :goto_0
.end method


# virtual methods
.method public doCreateImageCollection(Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V
    .locals 4
    .parameter "param"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null != mImageCollectionLoader"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    invoke-virtual {v0, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->cancel(Z)Z

    .line 448
    :cond_0
    new-instance v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    invoke-direct {v0, p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    .line 449
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method protected getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "config"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager;->getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method protected handleWorkerMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, res:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1015
    invoke-super {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->handleWorkerMessage(Landroid/os/Message;)Z

    move-result v0

    .line 1018
    :goto_0
    return v0

    .line 985
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->init()V

    .line 986
    const/4 v0, 0x1

    .line 987
    goto :goto_0

    .line 989
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->deInit()V

    .line 990
    const/4 v0, 0x1

    .line 991
    goto :goto_0

    .line 993
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->savePickerResult(Landroid/content/Intent;)V

    .line 994
    const/4 v0, 0x1

    .line 995
    goto :goto_0

    .line 997
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->loadDataFromProperties()V

    .line 998
    const/4 v0, 0x1

    .line 999
    goto :goto_0

    .line 1002
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->onSdcardShared()V

    .line 1003
    const/4 v0, 0x1

    .line 1004
    goto :goto_0

    .line 1007
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->onMediaUnmounted()V

    .line 1008
    const/4 v0, 0x1

    .line 1009
    goto :goto_0

    .line 1011
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->onMediaMounted()V

    .line 1012
    const/4 v0, 0x1

    .line 1013
    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x1b60
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public loadDataFromProperties()V
    .locals 13

    .prologue
    .line 337
    sget-object v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[loadDataFromProperties] +++"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v11

    .line 339
    .local v11, props:Ljava/util/Properties;
    if-nez v11, :cond_3

    .line 341
    sget-object v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null == props"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->stop()V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->stop()V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v9

    .line 354
    .local v9, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    if-eqz v9, :cond_2

    .line 356
    invoke-virtual {v9}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorNotSet()V

    .line 381
    .end local v9           #listView:Lcom/htc/photowidget3d/widget/FusionListView;
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    const-string v1, "image_where"

    invoke-virtual {v11, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, sqlWhere:Ljava/lang/String;
    const-string v1, "image_args"

    invoke-virtual {v11, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 363
    .local v7, sqlWhereArgs:[Ljava/lang/String;
    const-string v1, "folder_type"

    invoke-virtual {v11, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, collectionInfo:Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 366
    .local v12, type:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 367
    .local v4, folderName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 368
    .local v3, folderId:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, folderType:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 371
    :cond_4
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 372
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 373
    :cond_5
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 376
    :cond_6
    const-string v1, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    .line 377
    .local v0, location:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static/range {v0 .. v7}, Lcom/htc/photowidget3d/image/ImageManager;->getImageListParam(Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v10

    .line 379
    .local v10, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    invoke-virtual {p0, v10}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->doCreateImageCollection(Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V

    .line 380
    sget-object v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[loadDataFromProperties] ---"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0           #location:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
    .end local v10           #param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    :cond_7
    sget-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 295
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b62

    invoke-virtual {p0, v0, v1, p3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;ILandroid/content/Intent;)V

    .line 300
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b63

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 307
    :goto_0
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] RESULT_CANCELED"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 82
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onCreate] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWidgetId:J

    .line 85
    new-instance v0, Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/ListViewManager;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    .line 86
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)V

    .line 87
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onCreate] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z

    .line 278
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b61

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 284
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onDestroy()V

    .line 285
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onEdit()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->lanuchFolderPicker()V

    .line 314
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPause()V

    .line 130
    return-void
.end method

.method protected onPostConfigurationChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    .line 187
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v3

    .line 188
    .local v3, oldListView:Lcom/htc/photowidget3d/widget/FusionListView;
    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    .line 189
    .local v0, listIndex:I
    iget v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .end local v0           #listIndex:I
    :goto_0
    iput v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mLastSelectedIndex:I

    .line 191
    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v1

    .line 192
    .local v1, listState:I
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v4, p1}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOrientation(I)V

    .line 193
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v4}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v2

    .line 195
    .local v2, newListView:Lcom/htc/photowidget3d/widget/FusionListView;
    sget-object v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onPostConfigurationChanged] mLastSelectedIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mLastSelectedIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sparse-switch v1, :sswitch_data_0

    .line 212
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->setState(I)V

    .line 219
    :cond_0
    :goto_1
    :sswitch_0
    return-void

    .line 189
    .end local v1           #listState:I
    .end local v2           #newListView:Lcom/htc/photowidget3d/widget/FusionListView;
    .restart local v0       #listIndex:I
    :cond_1
    iget v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I

    goto :goto_0

    .line 201
    .end local v0           #listIndex:I
    .restart local v1       #listState:I
    .restart local v2       #newListView:Lcom/htc/photowidget3d/widget/FusionListView;
    :sswitch_1
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget v5, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mLastSelectedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/photowidget3d/widget/ListViewManager;->setSelection(I)V

    .line 202
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget v5, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mLastSelectedIndex:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/htc/photowidget3d/widget/ListViewManager;->refreshItems(II)V

    goto :goto_1

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 96
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onPostCreate] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b60

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 99
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onPostCreate] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onPostPause()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider;->pauseDecoder()V

    .line 142
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onPostPause]"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 151
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onPostResume] +++"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, -0x1

    .line 153
    .local v1, state:I
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v0

    .line 154
    .local v0, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    if-nez v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/image/ImageProvider;->isContentChanged()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/image/ImageProvider;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->loadDataFromProperties()V

    .line 171
    :cond_2
    :goto_0
    const/16 v2, 0x95

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    .line 173
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "FusionListView.STATE_ERROR_MISSING == state"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->loadDataFromProperties()V

    .line 177
    :cond_3
    sget-object v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onPostResume] ---"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/image/ImageProvider;->resumeDecoder()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onStop] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onStop()V

    .line 229
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onStop] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager;->onTiltChanged(F)V

    .line 324
    return-void
.end method

.method public savePickerResult(Landroid/content/Intent;)V
    .locals 13
    .parameter "pickerResult"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v10, "image_uri"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    move-object v4, v10

    check-cast v4, Landroid/net/Uri;

    .line 389
    .local v4, majorUri:Landroid/net/Uri;
    const-string v10, "image_where"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, sqlWhere:Ljava/lang/String;
    const-string v10, "image_args"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, sqlWhereArgs:[Ljava/lang/String;
    const-string v10, "folder_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, collectionInfo:Ljava/lang/String;
    const-string v10, "image_uri_phone"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    move-object v7, v10

    check-cast v7, Landroid/net/Uri;

    .line 397
    .local v7, secondUri:Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 399
    sget-object v10, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[savePickerResult] Uri should not be null!!!"

    invoke-static {v10, v11}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 404
    .local v5, props:Ljava/util/Properties;
    const-string v10, "data_calibration"

    const-string v11, "data_calibration"

    invoke-virtual {v5, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 405
    const-string v10, "image_uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    sget-object v10, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[savePickerResult] Uri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-eqz v7, :cond_3

    .line 410
    const-string v10, "image_uri_phone"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    sget-object v10, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[savePickerResult] Uri2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_3
    if-eqz v8, :cond_4

    .line 416
    const-string v10, "image_where"

    invoke-virtual {v5, v10, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    sget-object v10, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[savePickerResult] SQL Where = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_4
    if-eqz v9, :cond_5

    array-length v10, v9

    if-lez v10, :cond_5

    .line 422
    const-string v10, "image_args"

    invoke-virtual {v5, v10, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 425
    .local v6, s:Ljava/lang/String;
    sget-object v10, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[savePickerResult] SQL Args = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 429
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 431
    const-string v10, "folder_type"

    invoke-virtual {v5, v10, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->storeInstanceData(Ljava/util/Properties;)V

    goto/16 :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V
    .locals 1
    .parameter "worker"
    .parameter "code"

    .prologue
    .line 1177
    if-nez p1, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1182
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1183
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1184
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;ILandroid/content/Intent;)V
    .locals 1
    .parameter "worker"
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1194
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1195
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1196
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1197
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method
