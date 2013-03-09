.class public Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.super Lcom/htc/photowidget3d/base/PhotoWidgetBase;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;,
        Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;,
        Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;,
        Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;,
        Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private bLaunchPhoto:Z

.field private isDestroy:Z

.field private isPaused:Z

.field private mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

.field private mImage:Lcom/htc/photowidget3d/image/IImage;

.field private mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

.field private mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

.field private observer:Landroid/os/FileObserver;

.field private uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    .line 51
    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isPaused:Z

    .line 57
    iput-boolean v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z

    .line 61
    new-instance v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    .line 63
    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    .line 448
    iput-boolean v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->lanuchPhotoPicker()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/widget/FusionImageFrame;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showImageMissing(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Ljava/util/Properties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Ljava/util/Properties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->storeInstanceData(Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/image/IImage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->launchAlbum(Lcom/htc/photowidget3d/image/IImage;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->restoreImageUri()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->checkImageExist()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V

    return-void
.end method

.method private checkImageExist()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorMissing()V

    .line 104
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->hideErrorMissing()V

    .line 101
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->startObserveImage()V

    goto :goto_0
.end method

.method private lanuchPhotoPicker()V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PhotoPickerOption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "com.htc.photowidget3d.frame/open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->startActivityForResult(Landroid/content/Intent;I)V

    .line 446
    return-void
.end method

.method private launchAlbum(Lcom/htc/photowidget3d/image/IImage;)V
    .locals 3
    .parameter "img"

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.VIEW_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, startAlbum:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v1, "folder_type"

    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 714
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z

    goto :goto_0
.end method

.method private loadDefaultImage()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 405
    sget-object v6, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[loadDefaultImage] +++"

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v5

    .line 407
    .local v5, props:Ljava/util/Properties;
    if-nez v5, :cond_0

    .line 408
    const/4 v2, 0x0

    .line 429
    :goto_0
    return-object v2

    .line 410
    :cond_0
    const/4 v2, 0x0

    .line 413
    .local v2, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v6, "save_bmp"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 414
    .local v1, bf:[B
    if-eqz v1, :cond_1

    .line 416
    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 428
    .end local v1           #bf:[B
    :cond_1
    :goto_1
    sget-object v6, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadDefaultImage] bitmap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", props = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :catch_0
    move-exception v4

    .line 421
    .local v4, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadDefaultImage] Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 425
    .local v3, er:Ljava/lang/Error;
    sget-object v6, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadDefaultImage] Error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private observeImageFile()V
    .locals 4

    .prologue
    .line 127
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, ">>observeImageFile"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, ">>image file exists, start observer."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x602

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observer:Landroid/os/FileObserver;

    .line 162
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observer:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 166
    .end local v0           #file:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "<<observeImageFile"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private restoreImageUri()V
    .locals 3

    .prologue
    .line 391
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[restoreImageUri] +++."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 393
    .local v0, props:Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 395
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[restoreImageUri] props is null."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v1, "image_uri"

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->storeInstanceData(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method private showImageMissing(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorMissing()V

    .line 437
    return-void
.end method

.method private startObserveImage()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, ">>startObserveImage"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->stopObserveImage()V

    .line 110
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observeImageFile()V

    .line 111
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "<<startObserveImage"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private stopObserveImage()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, ">>stopObserveImage"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observer:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observer:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observer:Landroid/os/FileObserver;

    .line 122
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "<<stopObserveImage"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "config"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public loadDataFromProperties()V
    .locals 9

    .prologue
    .line 368
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[loadDataFromProperties] +++"

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadInstanceData()Ljava/util/Properties;

    move-result-object v8

    .line 370
    .local v8, props:Ljava/util/Properties;
    if-nez v8, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorNotSet()V

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v0, "image_uri"

    const-string v4, ""

    invoke-virtual {v8, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 377
    .local v1, imageUri:Landroid/net/Uri;
    const-string v0, "filepath"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, dataPath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, mimeType:Ljava/lang/String;
    const-string v0, "folder_type"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, folderType:Ljava/lang/String;
    new-instance v0, Lcom/htc/photowidget3d/image/Image;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/photowidget3d/image/Image;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    .line 383
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadDefaultImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 384
    .local v7, bmp:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0, v7}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setImage(Landroid/graphics/Bitmap;)V

    .line 386
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[loadDataFromProperties] ---"

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 283
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 285
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] RESULT_OK"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->savePickerResult(Landroid/content/Intent;)Z

    .line 287
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->startObserveImage()V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] RESULT_CANCELED"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    .line 86
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-boolean v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z

    .line 242
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->stop()V

    .line 245
    iput-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    invoke-virtual {v0, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->cancel(Z)Z

    .line 251
    iput-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->stop()V

    .line 256
    iput-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->stopObserveImage()V

    .line 261
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->release()V

    .line 263
    :cond_3
    iput-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    .line 265
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 268
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 270
    :cond_4
    iput-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 272
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onDestroy()V

    .line 273
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onEdit()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->lanuchPhotoPicker()V

    .line 304
    return-void
.end method

.method protected onPostConfigurationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->getState()I

    move-result v0

    .line 227
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v1, p1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setOrientation(I)V

    .line 228
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->setState(I)V

    .line 229
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 177
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setImageClickListener(Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPostCreate] Intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->savePickerResult(Landroid/content/Intent;)Z

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->checkImageExist()V

    .line 191
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->start()V

    .line 195
    :cond_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadDataFromProperties()V

    goto :goto_0
.end method

.method protected onPostPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostPause()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isPaused:Z

    .line 217
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->onPostResume()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isPaused:Z

    .line 206
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->onTiltChanged(F)V

    .line 314
    return-void
.end method

.method public savePickerResult(Landroid/content/Intent;)Z
    .locals 12
    .parameter "pickerResult"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 318
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[savePickerResult] +++"

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorMissing()V

    move v0, v11

    .line 363
    :goto_0
    return v0

    .line 325
    :cond_1
    const/4 v1, 0x0

    .line 326
    .local v1, imageUri:Landroid/net/Uri;
    const-string v0, "fileuri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, fileUri:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 336
    :goto_1
    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, dataPath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, mimeType:Ljava/lang/String;
    const-string v0, "folder_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, folderType:Ljava/lang/String;
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 341
    .local v9, props:Ljava/util/Properties;
    const-string v4, "image_uri"

    if-nez v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v9, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    const-string v0, "filepath"

    invoke-virtual {v9, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v0, "mime_type"

    invoke-virtual {v9, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    const-string v0, "folder_type"

    invoke-virtual {v9, v0, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    const-string v0, "data_calibration"

    const-string v4, "data_calibration"

    invoke-virtual {v9, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p0, v9}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->storeInstanceData(Ljava/util/Properties;)V

    .line 349
    new-instance v0, Lcom/htc/photowidget3d/image/Image;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/photowidget3d/image/Image;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;

    .line 351
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 352
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 354
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[savePickerResult] Bitmap W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0, v7}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setImage(Landroid/graphics/Bitmap;)V

    .line 356
    new-instance v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;

    invoke-direct {v0, p0, v7}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Landroid/graphics/Bitmap;)V

    new-array v4, v10, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v0, v4}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    :goto_3
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[savePickerResult] ---"

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 363
    goto/16 :goto_0

    .line 333
    .end local v2           #dataPath:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v6           #folderType:Ljava/lang/String;
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #props:Ljava/util/Properties;
    :cond_2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 341
    .restart local v2       #dataPath:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v6       #folderType:Ljava/lang/String;
    .restart local v9       #props:Ljava/util/Properties;
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 360
    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImageFrameManager:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorMissing()V

    goto :goto_3
.end method
