.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.source "LiveGallery.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;,
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;,
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;,
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;,
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;,
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;
    }
.end annotation


# static fields
.field private static final BUILD_NUM:I = 0x3

.field private static final CHECKSDSTATUS:I = 0x4

.field private static final FOLDERMODIFIED:Ljava/lang/String; = "FolderModified"

.field private static final INSERT_IMAGE_TO_BEHINDOBJ:I = 0x6

.field private static final INSERT_IMAGE_TO_PHODEO:I = 0x1

.field private static final LOADPHODEO:I = 0x9

.field private static final LOAD_BEHINDPHOTO:I = 0x1001

.field private static final LOAD_PHODEOPHOTO:I = 0x1002

.field private static final LOAD_VIDEO:I = 0x2

.field private static final PHOTOS_IMAGES_FOLDER_PATH:Ljava/lang/String; = "/system/etc/slideshow"

.field private static final PLAYBEHINDLOOP:I = 0xa

.field private static final PLAYBEHINDPHOTO:I = 0x7

.field private static final PLAYPHODEO:I = 0x5

.field private static final SETFOLDERMODIFIED:I = 0xb

.field private static final SHOWLOADINGVIEW:I = 0x8

.field private static final STOP_VIDEO:I = 0x3

.field private static final WAIT_PRELOAD:I = 0x5

.field private static final mBehindFlyingPhotoHeight:I = 0x80

.field private static final mBehindFlyingPhotoWidth:I = 0x80

.field private static final mPhoDeoCount:I = 0x4


# instance fields
.field private BehindObj_Build_PlaybackListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private M10_BG_FILE_PATH:Ljava/lang/String;

.field private M10_FILE_PATH:Ljava/lang/String;

.field private final broadcastRec:Landroid/content/BroadcastReceiver;

.field private checkTimes:I

.field private handler:Landroid/os/Handler;

.field private lihandler:Landroid/os/Handler;

.field private loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

.field private mBGScene:Lcom/htc/fusion/fx/FxScene;

.field private mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

.field private mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

.field private mCheckSDStatus:I

.field private mCurrentImageIdx:I

.field private mCurrentPhoDeoIdx:I

.field private mCurrentScene:Lcom/htc/fusion/fx/FxScene;

.field private mDestroy:Z

.field private mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

.field private mErrorScene:Lcom/htc/fusion/fx/FxScene;

.field private mFolderModified:Z

.field private mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

.field private mLoadingScene:Lcom/htc/fusion/fx/FxScene;

.field private mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaStatus:Ljava/lang/String;

.field private mNeedToLoadResource:Z

.field mObserver:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;

.field private mObserverHandler:Landroid/os/Handler;

.field private mPhoDeoHeight:I

.field private mPhoDeoWidth:I

.field private mPhoDeos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/PhoDeo;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadFromDB:Z

.field private mSFCachedData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;",
            ">;"
        }
    .end annotation
.end field

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mStop:Z

.field private m_listMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation
.end field

.field private final m_uriExternalPhotos:Landroid/net/Uri;

.field private mtlLoading:Lcom/htc/fusion/fx/FxTimelineControl;

.field final synthetic this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;


# direct methods
.method public constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 5
    .parameter
    .parameter "service"

    .prologue
    const/16 v4, 0x3c0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    .line 203
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 60
    const-string v0, "Port/lockscreen_photo_P.m10"

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->M10_FILE_PATH:Ljava/lang/String;

    .line 61
    const-string v0, "Port/lockscreen_photo_bg_P.m10"

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->M10_BG_FILE_PATH:Ljava/lang/String;

    .line 66
    iput v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    .line 67
    iput v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    .line 70
    iput v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoWidth:I

    .line 71
    iput v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoHeight:I

    .line 72
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    .line 81
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    .line 83
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 84
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    .line 86
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    .line 87
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    .line 88
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 89
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 90
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z

    .line 91
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mReloadFromDB:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mFolderModified:Z

    .line 95
    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    .line 98
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->BehindObj_Build_PlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    .line 99
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_uriExternalPhotos:Landroid/net/Uri;

    .line 108
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 452
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 1165
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->checkTimes:I

    .line 2174
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$4;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$4;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->broadcastRec:Landroid/content/BroadcastReceiver;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isMediaListChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopAll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->runInNonUI()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeoAndPlay()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/ml/PhotoLockScreen/BehindObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setFolderModified()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindLoop()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->decodeFileByScalado(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoHeight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setPhoDeoPhoto(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setBehindObjPhoto(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadVideo(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopVideo(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->showPhotoLockScreen()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    return p1
.end method

.method static synthetic access$3408(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playPhoDeo(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindObj()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeo()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsFolderModified()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsDBDone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsDBAvailable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->onMarkerBehindObjBuildComplete(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setVisibility(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    return-object v0
.end method

.method private computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 1910
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 1911
    .local v4, w:D
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 1913
    .local v0, h:D
    if-ne p3, v11, :cond_1

    move v2, v6

    .line 1915
    .local v2, lowerBound:I
    :goto_0
    if-ne p2, v11, :cond_2

    const/16 v3, 0x80

    .line 1919
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1929
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 1913
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p3

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 1915
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p2

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p2

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 1924
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p3, v11, :cond_4

    if-ne p2, v11, :cond_4

    move v2, v6

    .line 1925
    goto :goto_2

    .line 1926
    :cond_4
    if-eq p2, v11, :cond_0

    move v2, v3

    .line 1929
    goto :goto_2
.end method

.method private decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x1

    .line 1941
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1942
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1943
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1946
    const/4 v8, -0x1

    mul-int v9, p2, p3

    invoke-virtual {p0, v2, v8, v9}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    .line 1947
    .local v6, scale:I
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1948
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1950
    if-gt v6, v10, :cond_0

    .line 1952
    const-string v8, "brian_LiveGallery_IdleScreen"

    const-string v9, "No Scale"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1976
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #scale:I
    :goto_0
    return-object v5

    .line 1957
    .restart local v2       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #scale:I
    :cond_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 1959
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v8, v9

    const v9, 0x15f900

    if-ge v8, v9, :cond_1

    .line 1961
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1962
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v10, 0x411de84000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 1963
    .local v3, s:D
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v8, v8

    div-double/2addr v8, v3

    double-to-int v7, v8

    .line 1964
    .local v7, w:I
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v8, v8

    div-double/2addr v8, v3

    double-to-int v1, v8

    .line 1965
    .local v1, h:I
    const-string v8, "brian_LiveGallery_IdleScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scale to: w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/4 v8, 0x1

    invoke-static {v0, v7, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1967
    .local v5, sbmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1968
    const/4 v0, 0x0

    .line 1969
    goto :goto_0

    .line 1972
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #h:I
    .end local v3           #s:D
    .end local v5           #sbmp:Landroid/graphics/Bitmap;
    .end local v7           #w:I
    :cond_1
    const-string v8, "brian_LiveGallery_IdleScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scale to:1/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1975
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #scale:I
    :catch_0
    move-exception v8

    .line 1976
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private decodeFileByScalado(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 1934
    invoke-static {p1, p2, p3, v0, v0}, Lcom/htc/ml/PhotoLockScreen/ImageUtils;->decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private findControl()V
    .locals 0

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->findPhoDeo()V

    .line 1778
    return-void
.end method

.method private findPhoDeo()V
    .locals 7

    .prologue
    .line 1760
    const-string v1, "timeline.lock_photo_"

    .line 1761
    .local v1, groupName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    .line 1763
    new-instance v4, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-direct {v4}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;-><init>()V

    .line 1764
    .local v4, pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1765
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, v4, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1766
    iget-object v5, v4, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_0

    .line 1768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dynamicimage.main_photo.major"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, diName:Ljava/lang/String;
    iget-object v5, v4, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v5, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v4, v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setFxDIP(Lcom/htc/fusion/fx/controls/FxDynamicImage;)V

    .line 1772
    .end local v0           #diName:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1774
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    :cond_1
    return-void
.end method

.method private getDefaultPhoDeo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    const-string v6, "brian_LiveGallery_IdleScreen"

    const-string v7, "getDefaultPhoDeo:/system/etc/slideshow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v1, arrListImages:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/etc/slideshow"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v3, fileImage:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1665
    .local v0, arrFileImages:[Ljava/io/File;
    if-nez v0, :cond_0

    .line 1667
    const-string v6, "brian_LiveGallery_IdleScreen"

    const-string v7, "getDefaultPhoDeo:arrFileImages == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/4 v1, 0x0

    .line 1687
    .end local v1           #arrListImages:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :goto_0
    return-object v1

    .line 1672
    .restart local v1       #arrListImages:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    .line 1673
    const-string v6, "brian_LiveGallery_IdleScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultPhoDeo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1676
    :cond_1
    const/4 v4, 0x0

    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 1677
    aget-object v2, v0, v4

    .line 1679
    .local v2, f:Ljava/io/File;
    new-instance v5, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-direct {v5}, Lcom/htc/ml/PhotoLockScreen/MediaStore;-><init>()V

    .line 1680
    .local v5, ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setPath(Ljava/lang/String;)V

    .line 1681
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V

    .line 1682
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1685
    .end local v2           #f:Ljava/io/File;
    .end local v5           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    goto :goto_0
.end method

.method private getIsDBDone()I
    .locals 4

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v2, "PhotoLockScreen_Shared"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1311
    .local v0, prefer:Landroid/content/SharedPreferences;
    const-string v1, "DB_DONE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getPhoDeoInSD()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1499
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/Utility;->hasStorage()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    iput-boolean v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1544
    :goto_0
    return-object v1

    .line 1505
    :cond_0
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 1507
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1509
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "return SettingActivity.arrListMediaStore 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1511
    sget-object v1, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    goto :goto_0

    .line 1515
    :cond_1
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "return SettingActivity.arrListMediaStore 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1517
    sput-object v1, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 1518
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-static {v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->getSetting(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 1519
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1521
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1522
    sget-object v1, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    goto :goto_0

    .line 1528
    :cond_2
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getIsDBDone()I

    move-result v0

    .line 1529
    .local v0, ret:I
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return SettingActivity.arrListMediaStore 3 db done:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    if-nez v0, :cond_3

    .line 1531
    iput-boolean v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mReloadFromDB:Z

    .line 1535
    :goto_1
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-static {v2}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->getSetting(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 1536
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1538
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1539
    sget-object v1, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    goto :goto_0

    .line 1533
    :cond_3
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mReloadFromDB:Z

    goto :goto_1

    .line 1543
    .end local v0           #ret:I
    :cond_4
    iput-boolean v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    goto :goto_0
.end method

.method private getSetting()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, mIntentImage:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 274
    .local v4, mIntentVideo:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v10, "PhotoLockScreen_Shared"

    invoke-virtual {v9, v10, v11}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 275
    .local v6, prefer:Landroid/content/SharedPreferences;
    const-string v9, "image_available"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 277
    new-instance v3, Landroid/content/Intent;

    .end local v3           #mIntentImage:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 279
    .restart local v3       #mIntentImage:Landroid/content/Intent;
    const-string v9, "image_uri"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, uri:Ljava/lang/String;
    const-string v9, "image_where"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, where:Ljava/lang/String;
    const-string v9, "image_uri"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v9, "image_where"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v9, "image_args_number"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 288
    .local v5, number:I
    if-lez v5, :cond_0

    .line 290
    const-string v9, "image_args_number"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 292
    .local v2, key:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image_args_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    const-string v9, ""

    invoke-interface {v6, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, args:Ljava/lang/String;
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #ii:I
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #number:I
    .end local v7           #uri:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_0
    const-string v9, "video_available"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 303
    new-instance v4, Landroid/content/Intent;

    .end local v4           #mIntentVideo:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 304
    .restart local v4       #mIntentVideo:Landroid/content/Intent;
    const-string v9, "video_uri"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .restart local v7       #uri:Ljava/lang/String;
    const-string v9, "video_where"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .restart local v8       #where:Ljava/lang/String;
    const-string v9, "video_uri"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v9, "video_where"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v9, "video_args_number"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 313
    .restart local v5       #number:I
    if-lez v5, :cond_1

    .line 315
    const-string v9, "video_args_number"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 317
    .restart local v2       #key:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "video_args_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v9, ""

    invoke-interface {v6, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0       #args:Ljava/lang/String;
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #ii:I
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #number:I
    .end local v7           #uri:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-static {v9, v3, v4}, Lcom/htc/ml/PhotoLockScreen/PLSSetting;->setSetting(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 327
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->M10_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 413
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 414
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "onCreate scene is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-nez v1, :cond_1

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    if-nez v1, :cond_2

    .line 425
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    invoke-direct {v1, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    .line 426
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->start()V

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->findControl()V

    .line 431
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;

    invoke-direct {v1, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->BehindObj_Build_PlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    .line 437
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initScene()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 373
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->M10_BG_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBGScene:Lcom/htc/fusion/fx/FxScene;

    .line 375
    const-string v2, "Lockscreen_common_error.m10"

    invoke-virtual {p0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    .line 376
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_1

    .line 377
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "mErrorScene == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    const-string v2, "Lockscreen_common_loading.m10"

    invoke-virtual {p0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    .line 382
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "timeline.spinner_white"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mtlLoading:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 388
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "textlabel.common_loading"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 389
    .local v1, mLoadingText:Lcom/htc/fusion/fx/controls/FxTextLabel;
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, mLoadingFont:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 391
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Loading Word "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0           #mLoadingFont:Ljava/lang/String;
    .end local v1           #mLoadingText:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_0
    return-void

    .line 379
    :cond_1
    new-instance v2, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    goto :goto_0
.end method

.method private isFolderModified()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v2, "PhotoLockScreen_Shared"

    invoke-virtual {v1, v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 348
    .local v0, prefer:Landroid/content/SharedPreferences;
    const-string v1, "FolderModified"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isMediaListChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .local p2, newList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    const/4 v8, 0x1

    .line 709
    const-string v9, "brian_LiveGallery_IdleScreen"

    const-string v10, ">>isMediaListChanged"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 714
    :cond_0
    const-string v9, "brian_LiveGallery_IdleScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMediaListChanged, oldList or newList is null, oldList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_0
    return v8

    .line 718
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 719
    .local v6, nOldListSize:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 722
    .local v5, nNewListSize:I
    if-eq v6, v5, :cond_2

    .line 724
    const-string v9, "brian_LiveGallery_IdleScreen"

    const-string v10, "isMediaListChanged, oldList and newList size are different."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 730
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    .line 732
    .local v4, mediaInOldArray:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    const/4 v2, 0x0

    .line 733
    .local v2, isMatch:Z
    invoke-virtual {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, path:Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    .line 736
    .local v3, mediaInNewArray:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 738
    const/4 v2, 0x1

    .line 743
    .end local v3           #mediaInNewArray:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    :cond_5
    if-nez v2, :cond_3

    .line 745
    const-string v9, "brian_LiveGallery_IdleScreen"

    const-string v10, "file not match, return true."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isMatch:Z
    .end local v4           #mediaInOldArray:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    .end local v7           #path:Ljava/lang/String;
    :cond_6
    const-string v8, "brian_LiveGallery_IdleScreen"

    const-string v9, "<<isMediaListChanged, file no change."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private isMyScreenOn()Z
    .locals 4

    .prologue
    .line 558
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 559
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 560
    .local v0, isScreenOn:Z
    return v0
.end method

.method private loadBehindImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 675
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    return-void
.end method

.method private loadPhoDeo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 680
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    .line 681
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    .line 682
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 683
    :cond_0
    iput v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    .line 686
    :cond_1
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 687
    :cond_2
    iput v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    .line 688
    :cond_3
    const/4 v1, 0x1

    .line 689
    .local v1, msg:I
    new-instance v2, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    iget v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;III)V

    .line 690
    .local v2, p:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v4, 0x1002

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 691
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    return-void
.end method

.method private loadPhoDeoAndPlay()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 840
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 842
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 840
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_2

    .line 847
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 850
    :cond_2
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, bReload:Z
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 855
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 859
    :cond_3
    const-string v4, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not exists or length is 0."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v0, 0x1

    .line 864
    :try_start_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    add-int/lit8 v2, v2, -0x1

    .line 853
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 875
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 877
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    .line 878
    iput-boolean v8, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 879
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->showNoPhoto()V

    .line 959
    .end local v0           #bReload:Z
    :cond_6
    :goto_3
    return-void

    .line 884
    .restart local v0       #bReload:Z
    :cond_7
    const-string v3, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m_listMedia.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v3, v4, :cond_8

    .line 890
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 891
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v3, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 894
    :cond_8
    if-eqz v0, :cond_d

    .line 897
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 899
    const-string v4, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rest file:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 901
    :cond_9
    iput v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    .line 902
    iput v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    .line 903
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v3, :cond_a

    .line 905
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->release()V

    .line 906
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 909
    :cond_a
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v10, :cond_b

    .line 911
    new-instance v3, Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v3, v4}, Lcom/htc/ml/PhotoLockScreen/BehindObj;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 914
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    if-eqz v3, :cond_c

    .line 916
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    .line 925
    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-eqz v3, :cond_d

    .line 927
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 929
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3, v7}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setMediaStoreIdx(I)V

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 920
    :cond_c
    new-instance v3, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    invoke-direct {v3, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 921
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_5

    .line 934
    :cond_d
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_e

    .line 936
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadBehindImage()V

    .line 938
    :cond_e
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    if-ltz v3, :cond_10

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 940
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getMediaStoreIdx()I

    move-result v3

    if-ne v3, v7, :cond_f

    .line 942
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeo()V

    .line 949
    :cond_f
    :goto_7
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v9, :cond_6

    .line 952
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 945
    :cond_10
    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    if-ne v3, v7, :cond_f

    .line 947
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeo()V

    goto :goto_7

    .line 957
    .end local v0           #bReload:Z
    :cond_11
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->showNoPhoto()V

    goto/16 :goto_3

    .line 867
    .restart local v0       #bReload:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method private loadResource()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1693
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1695
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1696
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1700
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getDefaultPhoDeo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    .line 1704
    :goto_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-nez v1, :cond_2

    .line 1706
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1742
    :goto_1
    return-void

    .line 1702
    :cond_1
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getPhoDeoInSD()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    goto :goto_0

    .line 1710
    :cond_2
    iput v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I

    .line 1711
    iput v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentImageIdx:I

    .line 1713
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v1, :cond_3

    .line 1715
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->release()V

    .line 1716
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 1718
    :cond_3
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 1720
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v1, v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;-><init>(Lcom/htc/fusion/fx/FxScene;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 1723
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    if-eqz v1, :cond_5

    .line 1725
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    .line 1734
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 1736
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1738
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1, v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setMediaStoreIdx(I)V

    .line 1736
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1729
    .end local v0           #i:I
    :cond_5
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    invoke-direct {v1, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 1730
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_2

    .line 1741
    :cond_6
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_listMedia.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private loadVideo(I)V
    .locals 7
    .parameter "idx"

    .prologue
    .line 1841
    const-string v3, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadVideo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v1, 0x0

    .line 1843
    .local v1, vt:Lcom/htc/fusion/fx/controls/FxVideoTexture;
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1844
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxVTP()Lcom/htc/fusion/fx/controls/FxVideoTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1845
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxVTP()Lcom/htc/fusion/fx/controls/FxVideoTexture;

    move-result-object v1

    .line 1850
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1852
    :try_start_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 1853
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 1854
    const-string v4, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSource:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getMediaStoreIdx()I

    move-result v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v4, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getMediaStoreIdx()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1862
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->connectMediaPlayer(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1864
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "Unable to connect the media player"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->resetMediaPlayer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    :cond_1
    :goto_1
    return-void

    .line 1847
    :cond_2
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxVTL()Lcom/htc/fusion/fx/controls/FxVideoTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1848
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxVTL()Lcom/htc/fusion/fx/controls/FxVideoTexture;

    move-result-object v1

    goto/16 :goto_0

    .line 1868
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1869
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1870
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1871
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1880
    .local v2, writer:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1881
    const-string v3, "brian_LiveGallery_IdleScreen"

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v3, v3, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 1884
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->resetMediaPlayer(I)V

    goto :goto_1

    .line 1888
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #writer:Ljava/io/StringWriter;
    :cond_4
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "phoDeos.get(idx).getFxVTV() == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private onMarkerBehindObjBuildComplete(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 651
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindLoop()V

    .line 653
    :cond_0
    return-void
.end method

.method private playAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 965
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-nez v3, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V

    .line 1040
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeoAndPlay()V

    .line 1163
    return-void

    .line 970
    :cond_1
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isFolderModified()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 972
    iput-boolean v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mFolderModified:Z

    .line 973
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsFolderModified()V

    .line 976
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    if-eqz v3, :cond_2

    .line 978
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    invoke-virtual {v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->cancel(Z)Z

    .line 979
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    .line 983
    :cond_2
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getSetting()V

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, bReload:Z
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-nez v3, :cond_5

    .line 988
    :cond_3
    const/4 v0, 0x1

    .line 1008
    :goto_1
    if-eqz v0, :cond_4

    .line 1010
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->runInNonUI()V

    .line 1011
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    .line 1033
    .end local v0           #bReload:Z
    :cond_4
    iget-boolean v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    if-eqz v3, :cond_0

    .line 1035
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V

    goto :goto_0

    .line 992
    .restart local v0       #bReload:Z
    :cond_5
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 993
    .local v2, nOldListSize:I
    sget-object v3, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 996
    .local v1, nNewListSize:I
    if-eq v2, v1, :cond_6

    .line 998
    const/4 v0, 0x1

    goto :goto_1

    .line 1003
    :cond_6
    new-instance v3, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    invoke-direct {v3, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    .line 1004
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mListChekTask:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private playBehindLoop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 635
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "playBehindLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 639
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 640
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "behind_photo_loop"

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 644
    :cond_0
    return-void
.end method

.method private playBehindObj()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 657
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "playBehindObj"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 661
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 662
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Build"

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 665
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->BehindObj_Build_PlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 667
    :cond_0
    return-void
.end method

.method private playPhoDeo(I)V
    .locals 4
    .parameter "phoDeoIdx"

    .prologue
    const/4 v3, 0x0

    .line 1745
    const-string v0, "brian_LiveGallery_IdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playPhoDeo - phoDeoIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1751
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "fly_in"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1386
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1398
    :cond_0
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopAll()V

    .line 1400
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1403
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1425
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    .line 1429
    :cond_2
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1434
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 1437
    :cond_3
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 1438
    return-void
.end method

.method private releaseScene()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 397
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v2, "releaseScene"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 398
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    move-object v0, v1

    .line 399
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0, v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V

    .line 400
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBGScene:Lcom/htc/fusion/fx/FxScene;

    .line 401
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    .line 402
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    .line 403
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 405
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    .line 406
    return-void
.end method

.method private resetMediaPlayer(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1818
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1819
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 1821
    :cond_0
    return-void
.end method

.method private runInNonUI()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$1;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    .line 367
    .local v0, backThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method

.method private setBehindObjPhoto(II)V
    .locals 8
    .parameter "imageIdx"
    .parameter "BPIdx"

    .prologue
    const/16 v7, 0x13

    const/4 v2, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1549
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-nez v1, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->noBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1554
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "setBehindObjPhoto - bmp null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmScaledBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1560
    const/4 v0, 0x0

    .line 1562
    .local v0, idx:I
    if-ge p2, v2, :cond_2

    .line 1564
    rsub-int/lit8 v0, p2, 0x13

    .line 1565
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1569
    :cond_2
    move v0, p2

    .line 1570
    :goto_1
    if-ge v0, v7, :cond_4

    .line 1572
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1, v0}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getIsImageSet(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1574
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmScaledBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1577
    :goto_2
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 1576
    :cond_3
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - Image set idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1579
    :cond_4
    if-ge p2, v6, :cond_5

    .line 1581
    rsub-int/lit8 v1, p2, 0x3

    rsub-int/lit8 v0, v1, 0x16

    .line 1582
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmScaledBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1587
    :cond_5
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseScaledBmp()V

    goto/16 :goto_0

    .line 1590
    .end local v0           #idx:I
    :cond_6
    const/4 v0, 0x0

    .line 1592
    .restart local v0       #idx:I
    if-ge p2, v2, :cond_7

    .line 1594
    rsub-int/lit8 v0, p2, 0x13

    .line 1595
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1598
    :cond_7
    move v0, p2

    .line 1599
    :goto_3
    if-ge v0, v7, :cond_9

    .line 1601
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1, v0}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getIsImageSet(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1603
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1606
    :goto_4
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 1605
    :cond_8
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - Image set idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1608
    :cond_9
    if-ge p2, v6, :cond_a

    .line 1610
    rsub-int/lit8 v1, p2, 0x3

    rsub-int/lit8 v0, v1, 0x16

    .line 1611
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBehindObjPhoto - idx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->setImage(ILandroid/graphics/Bitmap;Z)V

    .line 1616
    :cond_a
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseBmp()V

    goto/16 :goto_0
.end method

.method private setFolderModified()V
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mFolderModified:Z

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mFolderModified:Z

    .line 265
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    :cond_0
    return-void
.end method

.method private setIsDBAvailable(Z)V
    .locals 5
    .parameter "bAvailable"

    .prologue
    .line 331
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v3, "PhotoLockScreen_Shared"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 332
    .local v1, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DB_AVAILABLE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    return-void
.end method

.method private setIsDBDone(I)V
    .locals 5
    .parameter "done"

    .prologue
    .line 1316
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v3, "PhotoLockScreen_Shared"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1317
    .local v1, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1318
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DB_DONE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1320
    return-void
.end method

.method private setIsFolderModified()V
    .locals 5

    .prologue
    .line 339
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    const-string v3, "PhotoLockScreen_Shared"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "FolderModified"

    iget-boolean v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mFolderModified:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    return-void
.end method

.method private setLoadingView(Z)V
    .locals 4
    .parameter "loading"

    .prologue
    const/4 v3, 0x1

    .line 617
    const-string v0, "brian_LiveGallery_IdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingView loading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz p1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 622
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mtlLoading:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Loading_loop"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mtlLoading:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 629
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mtlLoading:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method private setPhoDeoPhoto(II)V
    .locals 4
    .parameter "phoDeoIdx"
    .parameter "imageIdx"

    .prologue
    .line 1622
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoDeoPhoto :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imageIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1625
    :cond_0
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "mPhoDeos null or mPhoDeos.get null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->noBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1631
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "setPhoDeoPhoto - bmp null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1637
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getmScaledBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1639
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxDIP()Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getmScaledBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1644
    :goto_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseBmp()V

    .line 1645
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseScaledBmp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_2
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1, p2}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setMediaStoreIdx(I)V

    .line 1653
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->isImage()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->setIsImage(Z)V

    .line 1654
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "setPhoDeoPhoto end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1642
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getFxDIP()Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getmBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1647
    :catch_0
    move-exception v0

    .line 1649
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Error is here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setVisibility(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 448
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 449
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mLoadingScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 450
    return-void
.end method

.method private showNoPhoto()V
    .locals 2

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 698
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 701
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->showErrorMessage(I)V

    .line 705
    :cond_1
    return-void
.end method

.method private showPhotoLockScreen()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1169
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isMyScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isPreview()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1175
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/Utility;->hasStorage()I

    move-result v1

    .line 1176
    .local v1, ret:I
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1179
    :cond_2
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMediaStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    if-lez v1, :cond_a

    .line 1182
    if-ne v1, v5, :cond_4

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1184
    invoke-direct {p0, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1185
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v2, v3, :cond_3

    .line 1187
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 1188
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v2, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 1190
    :cond_3
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    invoke-virtual {v2, v5}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->showErrorMessage(I)V

    goto :goto_0

    .line 1194
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1196
    const/16 v2, 0xa

    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->checkTimes:I

    .line 1198
    :cond_5
    iget v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->checkTimes:I

    if-gt v2, v3, :cond_8

    .line 1200
    invoke-direct {p0, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1203
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1204
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1252
    .end local v0           #m:Landroid/os/Message;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1254
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;

    .line 1257
    :cond_7
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mNeedToLoadResource:Z

    goto/16 :goto_0

    .line 1208
    :cond_8
    invoke-direct {p0, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1209
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v2, v3, :cond_9

    .line 1211
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 1212
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v2, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 1214
    :cond_9
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    if-eqz v2, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->showErrorMessage(I)V

    goto/16 :goto_0

    .line 1221
    :cond_a
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-nez v1, :cond_c

    .line 1223
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1226
    iget v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    iget v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->checkTimes:I

    if-gt v2, v3, :cond_b

    .line 1228
    invoke-direct {p0, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1231
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1232
    .restart local v0       #m:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1236
    .end local v0           #m:Landroid/os/Message;
    :cond_b
    const/4 v1, -0x4

    .line 1243
    :cond_c
    :goto_2
    invoke-direct {p0, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1244
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-eq v2, v3, :cond_d

    .line 1246
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 1247
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v2, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 1249
    :cond_d
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    if-eqz v2, :cond_6

    .line 1250
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    invoke-virtual {v2, v1}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->showErrorMessage(I)V

    goto/16 :goto_1

    .line 1240
    :cond_e
    const/4 v1, -0x4

    goto :goto_2

    .line 1262
    .end local v1           #ret:I
    :cond_f
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playAll()V

    goto/16 :goto_0
.end method

.method private stopAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1280
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Stop all time line playing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1287
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1288
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1296
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1300
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1301
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v1, v1, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1306
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private stopVideo(I)V
    .locals 4
    .parameter "idx"

    .prologue
    .line 1824
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v2, v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1825
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "stopVideo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :try_start_0
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    iget-object v2, v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->resetMediaPlayer(I)V

    .line 1838
    :goto_0
    return-void

    .line 1828
    :catch_0
    move-exception v0

    .line 1829
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1830
    .local v1, writer:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1831
    const-string v2, "brian_LiveGallery_IdleScreen"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1833
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->resetMediaPlayer(I)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #writer:Ljava/io/StringWriter;
    :catchall_0
    move-exception v2

    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->resetMediaPlayer(I)V

    throw v2

    .line 1836
    :cond_0
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "m_mediaPlayer == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 1893
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 1896
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 1897
    const/4 v1, 0x1

    .line 1898
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1899
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1902
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 1905
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 258
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    const/16 v2, 0x320

    .line 207
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 208
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_1

    .line 215
    :cond_0
    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoWidth:I

    .line 216
    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeoHeight:I

    .line 219
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setShowLiveWallpaper(Z)V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserverHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserver:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;

    .line 226
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-virtual {v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_uriExternalPhotos:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserver:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->registerMediaScannerListener()V

    .line 232
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1442
    iput-boolean v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z

    .line 1445
    iget-boolean v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z

    if-eq v3, v4, :cond_0

    .line 1447
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "onDestroy, but onStop is not called, release scene."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    .line 1449
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 1450
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->releaseScene()V

    .line 1451
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->release()V

    .line 1457
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    .line 1459
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 1460
    .local v0, cd:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;
    if-eqz v0, :cond_1

    .line 1462
    invoke-virtual {v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->release()V

    .line 1463
    const/4 v0, 0x0

    .line 1465
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    .line 1469
    .end local v0           #cd:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;
    :cond_2
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 1471
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 1472
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    .line 1473
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    .line 1474
    .local v2, moribund:Ljava/lang/Thread;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadThread:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    .line 1475
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1478
    .end local v2           #moribund:Ljava/lang/Thread;
    :cond_3
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 1480
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isPreview()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1489
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->unregisterMediaScannerListener()V

    .line 1492
    :cond_5
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onDestroy()V

    .line 1493
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserver:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1496
    return-void

    .line 1483
    :catch_0
    move-exception v1

    .line 1485
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1323
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onPause()V

    .line 1324
    const-string v2, "brian_LiveGallery_IdleScreen"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mReloadFromDB:Z

    if-eqz v2, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->getIsDBDone()I

    move-result v1

    .line 1330
    .local v1, ret:I
    if-ne v1, v4, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V

    .line 1333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mReloadFromDB:Z

    .line 1336
    .end local v1           #ret:I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCheckSDStatus:I

    .line 1337
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V

    .line 1338
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1339
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1340
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1341
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1345
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopAll()V

    .line 1349
    invoke-static {}, Lcom/htc/ml/PhotoLockScreen/Utility;->hasStorage()I

    move-result v1

    .line 1350
    .restart local v1       #ret:I
    if-eqz v1, :cond_1

    .line 1352
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mErrorScene:Lcom/htc/fusion/fx/FxScene;

    if-ne v2, v3, :cond_1

    .line 1353
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mEMC:Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;

    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->hideErrorMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v1           #ret:I
    :cond_1
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1359
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1266
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onResume()V

    .line 1267
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :try_start_0
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->showPhotoLockScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_0
    return-void

    .line 1272
    :catch_0
    move-exception v0

    .line 1274
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on Resume error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRingDragEnd(Z)V
    .locals 3
    .parameter "unlock"

    .prologue
    .line 1787
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onRingDragEnd(Z)V

    .line 1788
    const-string v0, "brian_LiveGallery_IdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingDragEnd unlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    .line 1782
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onRingDragStart()V

    .line 1783
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onRingDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    return-void
.end method

.method public onRingDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 3
    .parameter "draggable"

    .prologue
    .line 1792
    if-nez p1, :cond_0

    .line 1793
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onRingDrop null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onRingDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z

    move-result v0

    return v0

    .line 1796
    :cond_0
    const-string v0, "brian_LiveGallery_IdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingDrop name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 564
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStart()V

    .line 565
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z

    .line 569
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onStart mSFCachedData exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 573
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onStart use cached data."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 577
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    .line 578
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v0, v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 596
    :goto_0
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->initScene()V

    .line 597
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;

    .line 600
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    .line 610
    :goto_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 611
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBGScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Z)V

    .line 612
    return-void

    .line 583
    :cond_0
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onStart no cached data, init again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->init()V

    goto :goto_0

    .line 590
    :cond_1
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onStart no mSFCachedData, init."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->init()V

    goto :goto_0

    .line 606
    :cond_2
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 607
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 1365
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStop()V

    .line 1366
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z

    .line 1371
    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mSFCachedData:Ljava/lang/ref/SoftReference;

    .line 1372
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCachedData:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;

    .line 1374
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->releaseScene()V

    .line 1376
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_0
    return-void

    .line 1378
    :catch_0
    move-exception v0

    .line 1380
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerMediaScannerListener()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;

    invoke-direct {v1, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 538
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregisterMediaScannerListener()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->this$0:Lcom/htc/ml/PhotoLockScreen/LiveGallery;

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    :cond_0
    return-void
.end method
