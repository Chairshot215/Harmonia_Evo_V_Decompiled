.class public Lcom/htc/dlnamiddlelayer/DLNAService;
.super Landroid/app/Service;
.source "DLNAService.java"

# interfaces
.implements Lcom/htc/dlnamiddlelayer/IServerCommandNotify;
.implements Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;
.implements Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;
.implements Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;
.implements Lcom/htc/dlnamiddlelayer/IThumbnailCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/DLNAService$6;,
        Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;,
        Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;,
        Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;,
        Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;,
        Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;,
        Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;
    }
.end annotation


# instance fields
.field private mBindCount:I

.field private final mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/htc/dlnainterface/IDLNAPluginNotify;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSelfHandler:Landroid/os/Handler;

.field private mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

.field private mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

.field private mDMCGalleryTitle:Ljava/lang/String;

.field private mDMCGalleryType:I

.field private mDMCGallerybitmap:Landroid/graphics/Bitmap;

.field private mDMCMusicTitle:Ljava/lang/String;

.field private mDMCMusicbitmap:Landroid/graphics/Bitmap;

.field private mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

.field private mGroupAddr:Ljava/net/InetAddress;

.field public mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

.field private mIsDMCGallery:Z

.field private mIsDMCMusic:Z

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private mNotifyReceiver:Landroid/content/BroadcastReceiver;

.field public mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

.field private mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

.field private mRefControllerUse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/dlnamiddlelayer/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterCount:I

.field private mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

.field private mSDReceiver:Landroid/content/BroadcastReceiver;

.field private mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

.field private mServiceCloseTimeoutMillis:J

.field public mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

.field private mSocket:Ljava/net/MulticastSocket;

.field private mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

.field public mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mbPushLocalVideo:Z

.field private mbServiceDestroy:Z

.field private sClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    .line 68
    const-string v0, "DLNAService"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    .line 70
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    .line 71
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    .line 72
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    .line 74
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    .line 75
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 77
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    .line 78
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    .line 79
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    .line 80
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 82
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 84
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    .line 85
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mGroupAddr:Ljava/net/InetAddress;

    .line 86
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 89
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    .line 92
    iput v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    .line 93
    iput v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    .line 95
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z

    .line 96
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    .line 97
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    .line 99
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGallerybitmap:Landroid/graphics/Bitmap;

    .line 100
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicbitmap:Landroid/graphics/Bitmap;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryTitle:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicTitle:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryType:I

    .line 107
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    .line 109
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z

    .line 824
    new-instance v0, Lcom/htc/dlnamiddlelayer/DLNAService$1;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/DLNAService$1;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSDReceiver:Landroid/content/BroadcastReceiver;

    .line 845
    new-instance v0, Lcom/htc/dlnamiddlelayer/DLNAService$2;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/DLNAService$2;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 1035
    new-instance v0, Lcom/htc/dlnamiddlelayer/DLNAService$3;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/DLNAService$3;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/dlnamiddlelayer/DLNAService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/dlnamiddlelayer/DLNAService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/dlnamiddlelayer/DLNAService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->releaseSystemResource()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/dlnamiddlelayer/DLNAService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/htc/dlnamiddlelayer/DLNAService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    return v0
.end method

.method static synthetic access$1610(Lcom/htc/dlnamiddlelayer/DLNAService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/MediaControllerMgr;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->enableMulticast()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->disableMulticast()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ContentDBController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/dlnamiddlelayer/DLNAService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mbPushLocalVideo:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/PushControllerCPModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/dlnamiddlelayer/DLNAService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryType:I

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/dlnamiddlelayer/DLNAService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/dlnamiddlelayer/DLNAService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/htc/dlnamiddlelayer/DLNAService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dlnamiddlelayer/DLNAService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dlnamiddlelayer/DLNAService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    return v0
.end method

.method private acquireSystemResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 676
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 678
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 679
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 681
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 683
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 685
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "system resource: partial wake lock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v2, :cond_1

    .line 690
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 691
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 694
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 696
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 698
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "system resource: wifi lock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v1           #wm:Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-direct {p0, v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->setWifiPowerSavingMode(I)V

    .line 705
    return-void
.end method

.method private cancelNotification(I)V
    .locals 2
    .parameter "cookie"

    .prologue
    const/4 v1, 0x0

    .line 807
    if-nez p1, :cond_2

    .line 809
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    .line 810
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dlna/gallery_disable_dmc"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 820
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 822
    :cond_1
    return-void

    .line 813
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 815
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    .line 816
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dlna/music_disable_dmc"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    goto :goto_0
.end method

.method private disableMulticast()V
    .locals 4

    .prologue
    .line 664
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disableSsdpPacket()Z

    move-result v0

    .line 670
    .local v0, ret:Z
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableSsdpPacket ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0           #ret:Z
    :cond_1
    return-void
.end method

.method private enableMulticast()V
    .locals 4

    .prologue
    .line 652
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->enableSsdpPacket()Z

    move-result v0

    .line 658
    .local v0, ret:Z
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSsdpPacket ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0           #ret:Z
    :cond_1
    return-void
.end method

.method private isWifiPowerModeNormal()Z
    .locals 5

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, bModeNormal:Z
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 640
    .local v1, wm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiPowerModeNormal()Z

    move-result v0

    .line 645
    :cond_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiPowerModeNormal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v0
.end method

.method private releaseSystemResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 712
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 713
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "system resource: partial wake lock release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 719
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 720
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "system resoruce: wifi lock release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->setWifiPowerSavingMode(I)V

    .line 724
    return-void
.end method

.method private setNotification(ILjava/lang/String;)V
    .locals 9
    .parameter "cookie"
    .parameter "thumbnailPath"

    .prologue
    const/4 v2, 0x1

    .line 761
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->getDMCNotificationInfo(I)Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;

    move-result-object v8

    .line 762
    .local v8, notifiInfo:Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    const/4 v7, 0x0

    .line 763
    .local v7, thumbPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 764
    .local v6, info:Ljava/lang/String;
    const/4 v3, 0x1

    .line 765
    .local v3, slideshowState:I
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->PLAYING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v4

    .line 767
    .local v4, playState:I
    if-eqz v8, :cond_1

    .line 769
    if-eqz p2, :cond_3

    .line 771
    move-object v7, p2

    .line 784
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 785
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->getPhotoSlideshowState()I

    move-result v3

    .line 786
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->getPlayState()I

    move-result v4

    .line 789
    :cond_1
    if-nez p1, :cond_6

    .line 791
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    .line 792
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    iget v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryType:I

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryTitle:Ljava/lang/String;

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->genNotification(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_2
    :goto_1
    return-void

    .line 775
    :cond_3
    if-ne p1, v2, :cond_4

    .line 777
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->getDownloadStoreAlbumArt()Ljava/lang/String;

    move-result-object v7

    .line 779
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 781
    :cond_5
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 795
    :cond_6
    if-ne p1, v2, :cond_2

    .line 797
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    .line 798
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicTitle:Ljava/lang/String;

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->genNotification(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setUpNotifyIntentFilter()V
    .locals 2

    .prologue
    .line 742
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 743
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.dlnamiddlelayer.dmc_photo_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v1, "com.htc.dlnamiddlelayer.dmc_photo_stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "com.htc.dlnamiddlelayer.dmc_audio_play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v1, "com.htc.dlnamiddlelayer.dmc_audio_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v1, "com.htc.dlnamiddlelayer.dmc_video_play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v1, "com.htc.dlnamiddlelayer.dmc_video_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v1, "action_complete_one_download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v1, "com.htc.dlnamiddlelayer.dmc_destroy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 757
    return-void
.end method

.method private setUpSDIntentFilter()V
    .locals 2

    .prologue
    .line 729
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 730
    .local v0, intentSDFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 738
    return-void
.end method

.method private setWifiPowerSavingMode(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 628
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 629
    .local v0, wm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiPowerSavingMode(I)Z

    .line 632
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiPowerSavingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    return-void
.end method


# virtual methods
.method public CopyResource(ILjava/lang/String;Z)V
    .locals 8
    .parameter "aInputIDResource"
    .parameter "aOutputFileName"
    .parameter "afForceWrite"

    .prologue
    .line 359
    if-nez p3, :cond_0

    .line 360
    invoke-virtual {p0, p2}, Lcom/htc/dlnamiddlelayer/DLNAService;->FileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    :goto_0
    return-void

    .line 363
    :cond_0
    const/16 v5, 0x400

    new-array v3, v5, [C

    .line 367
    .local v3, theBuffer:[C
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    const/4 v5, 0x1

    invoke-virtual {p0, p2, v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 368
    .local v2, out:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 370
    .local v1, in:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, theLength:I
    if-lez v4, :cond_1

    .line 371
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStreamWriter;->write([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v2           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #theLength:I
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : Error :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/InputStreamReader;
    .restart local v2       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #theLength:I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 374
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public FileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "aFileName"

    .prologue
    .line 349
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 350
    .local v1, theTestExist:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 v2, 0x1

    .line 353
    .end local v1           #theTestExist:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized albumArtDownloadedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2466
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2467
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2469
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2472
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2467
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2474
    :catch_0
    move-exception v1

    .line 2476
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2466
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2480
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2481
    monitor-exit p0

    return-void
.end method

.method public cleanAlbumThumbDir()V
    .locals 9

    .prologue
    .line 384
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/com.htc.dlnamiddlelayer/cache/albumthumbs/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, albumThumbDirPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v5, thumbDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, list:[Ljava/lang/String;
    const-string v6, "DLNAMiddlelayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanAlbumThumbDir: count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 392
    new-instance v2, Ljava/io/File;

    aget-object v6, v4, v3

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v0           #albumThumbDirPath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #list:[Ljava/lang/String;
    .end local v5           #thumbDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public declared-synchronized contentAddedMsg(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "currentIndex"

    .prologue
    .line 2276
    monitor-enter p0

    :try_start_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentAddedMsg container : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 2279
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 2280
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2283
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2279
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2291
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2292
    monitor-exit p0

    return-void

    .line 2276
    .end local v7           #N:I
    .end local v8           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2285
    .restart local v7       #N:I
    .restart local v8       #i:I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized contentBrowsingDoneMsg(ILjava/lang/String;Ljava/lang/String;JJZ)V
    .locals 12
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"

    .prologue
    .line 2297
    monitor-enter p0

    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentBrowsingDoneMsg container : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lastIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isComplete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 2300
    .local v10, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 2301
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2304
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-interface/range {v2 .. v9}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2300
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2312
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2313
    monitor-exit p0

    return-void

    .line 2297
    .end local v10           #N:I
    .end local v11           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2306
    .restart local v10       #N:I
    .restart local v11       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2318
    monitor-enter p0

    :try_start_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentBrowsingErrorMsg container : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 2321
    .local v8, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 2322
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 2325
    :try_start_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2321
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2333
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2334
    monitor-exit p0

    return-void

    .line 2318
    .end local v8           #N:I
    .end local v9           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2327
    .restart local v8       #N:I
    .restart local v9       #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized contentThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2411
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2412
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2414
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2417
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2412
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2419
    :catch_0
    move-exception v1

    .line 2421
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2411
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2425
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2426
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2338
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2339
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2341
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2344
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2339
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2346
    :catch_0
    move-exception v1

    .line 2348
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2338
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2352
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2353
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerResponseMsg(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"

    .prologue
    .line 2357
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2358
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2360
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2363
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2358
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2365
    :catch_0
    move-exception v1

    .line 2367
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2357
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2371
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2372
    monitor-exit p0

    return-void
.end method

.method public destroyOtherMediaController(ILjava/lang/String;)V
    .locals 2
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2121
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2124
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->isOtherUsingRenderer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    if-nez p1, :cond_2

    .line 2127
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    goto :goto_0

    .line 2128
    :cond_2
    if-ne p1, v1, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public errorMsg(ILjava/lang/String;)V
    .locals 3
    .parameter "errorValue"
    .parameter "errorDescription"

    .prologue
    .line 2110
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-void
.end method

.method public declared-synchronized getContentDetailsMsg(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"

    .prologue
    .line 2615
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2616
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2618
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2621
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2616
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2623
    :catch_0
    move-exception v1

    .line 2625
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2615
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2629
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2630
    monitor-exit p0

    return-void
.end method

.method public getDMCNotificationInfo(I)Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
    .locals 3
    .parameter "cookie"

    .prologue
    .line 2634
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 2636
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 2638
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "DMC NotificationInfo : No MediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    const/4 v1, 0x0

    .line 2642
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->getNotificationInfo()Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;
    .locals 1
    .parameter "cookie"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    if-nez v0, :cond_0

    .line 1022
    const/4 v0, 0x0

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;
    .locals 1
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    if-nez v0, :cond_0

    .line 1030
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->getMediaController(ILjava/lang/String;)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    goto :goto_0
.end method

.method public getRendererThumbItem(ILjava/lang/String;)V
    .locals 4
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 2022
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    invoke-virtual {v2, p2}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getUPnPRenderer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v0

    .line 2024
    .local v0, renderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    if-eqz v0, :cond_0

    .line 2026
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetDeviceIconURL(J)Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, rendererThumbUrl:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2030
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->RENDERER_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->addServerThumbnail(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;)V

    .line 2035
    .end local v1           #rendererThumbUrl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2033
    .restart local v1       #rendererThumbUrl:Ljava/lang/String;
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "rendererThumbUrl = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getServerThumbItem(ILjava/lang/String;)V
    .locals 4
    .parameter "cookie"
    .parameter "serverID"

    .prologue
    .line 2005
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    invoke-virtual {v2, p2}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v0

    .line 2007
    .local v0, server:Lcom/awox/jUPnPCP/UPnPContentServer;
    if-eqz v0, :cond_0

    .line 2009
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->GetDeviceIconURL(J)Ljava/lang/String;

    move-result-object v1

    .line 2011
    .local v1, serverThumbUrl:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2013
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->SERVER_TUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->addServerThumbnail(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;)V

    .line 2018
    .end local v1           #serverThumbUrl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2016
    .restart local v1       #serverThumbUrl:Ljava/lang/String;
    :cond_1
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "serverThumbUrl = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized imageDownloadedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2448
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2449
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2451
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2454
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2449
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2456
    :catch_0
    move-exception v1

    .line 2458
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2448
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2462
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2463
    monitor-exit p0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 113
    const-class v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    .line 116
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onBind: BindCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missmatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 148
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/high16 v0, 0x7f04

    const-string v1, "ConfigPath.ini"

    invoke-virtual {p0, v0, v1, v11}, Lcom/htc/dlnamiddlelayer/DLNAService;->CopyResource(ILjava/lang/String;Z)V

    .line 154
    const v0, 0x7f040002

    const-string v1, "mediaCTRLMediaTypes.ini"

    invoke-virtual {p0, v0, v1, v11}, Lcom/htc/dlnamiddlelayer/DLNAService;->CopyResource(ILjava/lang/String;Z)V

    .line 156
    const v0, 0x7f040001

    const-string v1, "ControlPoint.ini"

    invoke-virtual {p0, v0, v1, v11}, Lcom/htc/dlnamiddlelayer/DLNAService;->CopyResource(ILjava/lang/String;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->readServiceTimeoutValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    .line 161
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 162
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 163
    .local v9, width:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 166
    .local v8, height:I
    if-le v9, v8, :cond_1

    .line 169
    sput v8, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 170
    sput v9, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;-><init>(Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    if-nez v0, :cond_2

    .line 184
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": mStack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_1
    return-void

    .line 174
    :cond_1
    sput v9, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 175
    sput v8, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-nez v0, :cond_3

    .line 190
    new-instance v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;

    invoke-direct {v5, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;-><init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/IServerCommandNotify;Lcom/htc/dlnamiddlelayer/IThumbnailCommand;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    if-nez v0, :cond_4

    .line 194
    new-instance v0, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-direct {v0, v1, p0, p0}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;-><init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/IRendererCommandNotify;Lcom/htc/dlnamiddlelayer/IThumbnailCommand;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    if-nez v0, :cond_5

    .line 198
    new-instance v0, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-direct {v0, v1}, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;-><init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->startStack()V

    .line 204
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->setUpSDIntentFilter()V

    .line 205
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->setUpNotifyIntentFilter()V

    .line 207
    new-instance v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;

    invoke-direct {v2, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/NotificationGenThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    .line 208
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->start()V

    .line 210
    new-instance v0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;

    invoke-direct {v2, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    .line 211
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->start()V

    .line 213
    new-instance v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;

    invoke-direct {v2, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    .line 214
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->start()V

    .line 216
    new-instance v0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 217
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->setContext(Landroid/content/Context;)V

    .line 218
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v0, p0}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->setMediaCtrlNotify(Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;)V

    .line 219
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    new-instance v1, Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;

    invoke-direct {v1, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->setResponseHanlder(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->setThumbnailDownloadThread(Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;)V

    .line 221
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    new-instance v1, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;

    invoke-direct {v1, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->setNotificationCBHandler(Landroid/os/Handler;)V

    .line 223
    new-instance v0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;

    invoke-direct {v0, p0, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/htc/dlnamiddlelayer/ContentDBController;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dlnamiddlelayer/ContentDBController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 227
    new-instance v0, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    .line 230
    :try_start_0
    const-string v0, "239.255.255.250"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mGroupAddr:Ljava/net/InetAddress;

    .line 231
    new-instance v0, Ljava/net/MulticastSocket;

    const/16 v1, 0x76c

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    .line 232
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mGroupAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_2
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->enableMulticast()V

    .line 239
    invoke-direct {p0, v11}, Lcom/htc/dlnamiddlelayer/DLNAService;->setWifiPowerSavingMode(I)V

    .line 241
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 243
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    if-nez v0, :cond_6

    .line 244
    new-instance v0, Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/ForegroundSetting;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->beginForegroundSetting()Z

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->cleanAlbumThumbDir()V

    goto/16 :goto_1

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    iput-boolean v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z

    .line 257
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://dlna/gallery_disable_dmc"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceObject:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://dlna/music_disable_dmc"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyThread:Lcom/htc/dlnamiddlelayer/NotificationGenThread;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->terminateThread()V

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->terminateThread()V

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mImageThread:Lcom/htc/dlnamiddlelayer/ImageDownloadThread;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->terminateThread()V

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    if-eqz v1, :cond_5

    .line 280
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    invoke-virtual {v1, v4}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->stopHandleBrowseMessage(Z)V

    .line 283
    :cond_5
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    if-eqz v1, :cond_6

    .line 285
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->removeAll()V

    .line 286
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    .line 289
    :cond_6
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    if-eqz v1, :cond_7

    .line 292
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->stopStack()V

    .line 295
    :cond_7
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    .line 296
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    .line 297
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mPushModule:Lcom/htc/dlnamiddlelayer/PushControllerCPModule;

    .line 298
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    .line 299
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 301
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mGroupAddr:Ljava/net/InetAddress;

    if-eqz v1, :cond_8

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mGroupAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 305
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->disableMulticast()V

    .line 313
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 315
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V

    .line 316
    invoke-direct {p0, v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V

    .line 318
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 320
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->releaseSystemResource()V

    .line 322
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGallerybitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 323
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGallerybitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_9
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicbitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 326
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCMusicbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    if-eqz v1, :cond_b

    .line 337
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mForegroundSetting:Lcom/htc/dlnamiddlelayer/ForegroundSetting;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/ForegroundSetting;->endForegroundSetting()Z

    .line 340
    :cond_b
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->cleanAlbumThumbDir()V

    .line 342
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 139
    const-class v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    .line 142
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRebind: BindCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 126
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    .line 127
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onUnbind: BindCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    :cond_1
    return v3
.end method

.method public declared-synchronized playlistCreatedResultMsg(ILjava/lang/String;JJ)V
    .locals 9
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"

    .prologue
    .line 2430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 2431
    .local v6, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 2433
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2431
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2438
    :catch_0
    move-exception v7

    .line 2440
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2430
    .end local v6           #N:I
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v8           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2444
    .restart local v6       #N:I
    .restart local v8       #i:I
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2445
    monitor-exit p0

    return-void
.end method

.method public readServiceTimeoutValue()J
    .locals 7

    .prologue
    .line 2647
    const-string v0, "Service_closeTime"

    .line 2649
    .local v0, sFileName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2650
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v4, "timeoutMillis"

    const-wide/32 v5, 0x927c0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2652
    .local v2, timeoutMillis:J
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Read service close timeout value"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    return-wide v2
.end method

.method public refreshDevices()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mStack:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->reSearchDevices()V

    .line 2117
    return-void
.end method

.method public registerUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 4
    .parameter "aMediaCtrl"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 408
    .local v0, index:I
    if-gez v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->acquireSystemResource()V

    .line 412
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register for using! Cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    return-void
.end method

.method public declared-synchronized rendererAddedMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "uniqueID"
    .parameter "rendererName"
    .parameter "thumbIconType"

    .prologue
    .line 2136
    monitor-enter p0

    :try_start_0
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Renderer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " added message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    new-instance v2, Lcom/htc/dlnainterface/DLNARendererData;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNARendererData;-><init>()V

    .line 2140
    .local v2, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/dlnainterface/DLNARendererData;->setRendererData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2142
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2143
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2148
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2143
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2156
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2157
    monitor-exit p0

    return-void

    .line 2136
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2149
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized rendererRemovedMsg(Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"

    .prologue
    .line 2161
    monitor-enter p0

    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renderer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removed message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2164
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2166
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2164
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2172
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2173
    monitor-exit p0

    return-void

    .line 2161
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2167
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized rendererThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    .line 2393
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2394
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2396
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xff

    if-ne p1, v3, :cond_1

    .line 2399
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2394
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2401
    :catch_0
    move-exception v1

    .line 2403
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2393
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2407
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2408
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized rendererUpdateMsg(I)V
    .locals 8
    .parameter "cookie"

    .prologue
    .line 2177
    monitor-enter p0

    :try_start_0
    const-string v6, "DLNAMiddlelayer"

    const-string v7, "Renderer list updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2180
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2181
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2185
    const/4 v3, 0x0

    .line 2186
    .local v3, rendererCount:I
    const/4 v1, 0x0

    .line 2187
    .local v1, filterCapability:I
    if-nez p1, :cond_2

    .line 2188
    const/4 v1, 0x6

    .line 2192
    :cond_0
    :goto_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .local v5, rendererDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dlnainterface/DLNARendererData;>;"
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    new-instance v7, Lcom/htc/dlnamiddlelayer/DLNAService$5;

    invoke-direct {v7, p0, v5}, Lcom/htc/dlnamiddlelayer/DLNAService$5;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->iterate(Lcom/htc/dlnamiddlelayer/ListIterator;)V

    .line 2209
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Lcom/htc/dlnainterface/DLNARendererData;

    .line 2210
    .local v4, rendererData:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2211
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v6, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2180
    .end local v1           #filterCapability:I
    .end local v3           #rendererCount:I
    .end local v4           #rendererData:[Lcom/htc/dlnainterface/DLNARendererData;
    .end local v5           #rendererDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dlnainterface/DLNARendererData;>;"
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2189
    .restart local v1       #filterCapability:I
    .restart local v3       #rendererCount:I
    :cond_2
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 2190
    const/4 v1, 0x1

    goto :goto_1

    .line 2218
    .end local v1           #filterCapability:I
    .end local v3           #rendererCount:I
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2219
    monitor-exit p0

    return-void

    .line 2177
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2212
    .restart local v0       #N:I
    .restart local v1       #filterCapability:I
    .restart local v2       #i:I
    .restart local v3       #rendererCount:I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public declared-synchronized serverAddedMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "serverName"

    .prologue
    .line 2041
    monitor-enter p0

    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2044
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2046
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2044
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2053
    monitor-exit p0

    return-void

    .line 2041
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2047
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized serverRemovedMsg(Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"

    .prologue
    .line 2057
    monitor-enter p0

    :try_start_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removed message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2060
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2062
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2060
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2068
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2069
    monitor-exit p0

    return-void

    .line 2057
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2063
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized serverThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    .line 2375
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2376
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2378
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xff

    if-ne p1, v3, :cond_1

    .line 2381
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2376
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2383
    :catch_0
    move-exception v1

    .line 2385
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2375
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2389
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2390
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized serverUpdateMsg(I)V
    .locals 6
    .parameter "cookie"

    .prologue
    .line 2073
    monitor-enter p0

    :try_start_0
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Server list updated"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2076
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2077
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2080
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .local v3, serverDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dlnainterface/DLNAServerData;>;"
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    new-instance v5, Lcom/htc/dlnamiddlelayer/DLNAService$4;

    invoke-direct {v5, p0, v3}, Lcom/htc/dlnamiddlelayer/DLNAService$4;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->iterate(Lcom/htc/dlnamiddlelayer/ListIterator;)V

    .line 2095
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/htc/dlnainterface/DLNAServerData;

    .line 2096
    .local v2, serverData:[Lcom/htc/dlnainterface/DLNAServerData;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2097
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v4, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2076
    .end local v2           #serverData:[Lcom/htc/dlnainterface/DLNAServerData;
    .end local v3           #serverDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dlnainterface/DLNAServerData;>;"
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2104
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2106
    monitor-exit p0

    return-void

    .line 2073
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2098
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public unRegisterUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 5
    .parameter "aMediaCtrl"

    .prologue
    const/4 v4, 0x1

    .line 418
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 419
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 422
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister and not use! Cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService;->releaseSystemResource()V

    .line 429
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCloseSelfHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mServiceCloseTimeoutMillis:J

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    :cond_1
    return-void
.end method

.method public declared-synchronized updateControlItemInfo(ILcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 5
    .parameter "cookie"
    .parameter "itemData"

    .prologue
    .line 2223
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    if-eqz v3, :cond_2

    .line 2226
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V

    .line 2229
    :cond_2
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2230
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2232
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 2235
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2230
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2237
    :catch_0
    move-exception v1

    .line 2239
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2223
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2243
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2245
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateControlItemThumbnail(ILjava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"

    .prologue
    .line 2562
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    if-eqz v3, :cond_2

    .line 2565
    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V

    .line 2568
    :cond_2
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2569
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2571
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 2574
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4, p5}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2569
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2576
    :catch_0
    move-exception v1

    .line 2578
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2562
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2582
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2584
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 5
    .parameter "cookie"
    .parameter "status"

    .prologue
    .line 2249
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mDMCGalleryType:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    if-eqz v3, :cond_2

    .line 2253
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V

    .line 2256
    :cond_2
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2257
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2259
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 2262
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2257
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2264
    :catch_0
    move-exception v1

    .line 2266
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2249
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2270
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2271
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateDownloadStoreAlbumArt(ILjava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"

    .prologue
    .line 2590
    monitor-enter p0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z

    if-eqz v3, :cond_0

    .line 2592
    invoke-direct {p0, p1, p5}, Lcom/htc/dlnamiddlelayer/DLNAService;->setNotification(ILjava/lang/String;)V

    .line 2595
    :cond_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2596
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2598
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2602
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v3, p2, p3, p4, p5}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V

    .line 2603
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDownloadedaAlbumArt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2596
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2605
    :catch_0
    move-exception v1

    .line 2607
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2590
    .end local v0           #N:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2611
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2612
    monitor-exit p0

    return-void
.end method

.method public writeServiceTimeoutValue(J)V
    .locals 5
    .parameter "timeoutMillis"

    .prologue
    .line 2659
    const-string v1, "Service_closeTime"

    .line 2661
    .local v1, sFileName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2663
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2664
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "timeoutMillis"

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2666
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2668
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Save service close timeout value"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    return-void
.end method
