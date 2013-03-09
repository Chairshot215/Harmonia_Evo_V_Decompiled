.class public Lcom/htc/musicenhancer/EnhancerService;
.super Landroid/app/Service;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;,
        Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;,
        Lcom/htc/musicenhancer/EnhancerService$GenerateFingerprintListener;,
        Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;,
        Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;,
        Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;,
        Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;,
        Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;,
        Lcom/htc/musicenhancer/EnhancerService$PreviousAction;
    }
.end annotation


# static fields
.field static final ACTION_FIRST_AUTO_DOWNLOAD:Ljava/lang/String; = "com.htc.musicenhancer.action_first_download"

.field static final ACTION_PRESS_CANCEL_NOTIF:Ljava/lang/String; = "com.htc.musicenhancer.action_press_cancel_notif"

.field static final ACTION_START_DOWNLOAD:Ljava/lang/String; = "action_start_download"

.field static final ACTION_START_MUSIC_ACTIVITY:Ljava/lang/String; = "action_start_music_activity"

.field private static ALBUM_ID:Ljava/lang/String; = null

.field private static FAIL_COUNT:Ljava/lang/String; = null

.field public static final FIRST_DOWNLOAD:Ljava/lang/String; = "fisrt_download"

.field private static IDLE_DELAY:I = 0x0

.field private static final MSG_BACKUP_DATABASE:I = 0x4

.field private static final MSG_DELETE_ALBUM_ART:I = 0x3

.field private static final MSG_SHUT_DOWN_SERVICE:I = 0x64

.field private static final MSG_START_DOWNLOAD_AFTER_SCANNING:I = 0x1

.field private static final MSG_SYNC_MDPROVIDER:I = 0x0

.field private static final MSG_UPDATE_ALBUM:I = 0x2

.field private static final NOTIFICATION_DOWNLOADING:I = 0x1

.field private static final NOTIFICATION_DOWNLOAD_CANCEL:I = 0x3

.field private static final NOTIFICATION_DOWNLOAD_COMPLETED:I = 0x2

.field private static final NOTIFICATION_FIRST_DOWNLOAD:I = 0x4

.field private static final NOTIFICATION_SCANNING_FILES:I = 0x5

.field static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "HtcMusicEnhancer"

.field static final SHOW_DATA_FEE_DIALOG:Ljava/lang/String; = "show_data_fee_dialog"

.field static final STATUS_DOWNLOADING:C = '\u0001'

.field static final STATUS_IDLE:C = '\u0000'

.field static final STATUS_PENDING:C = '\u0002'

.field public static final TAG:Ljava/lang/String; = "[EnhancerService]"

.field private static final UIMSG_GENERATE_FINGERPRINT_COMPLETED:I = 0x8

.field private static final UIMSG_HANDLE_NETWORK_ERROR:I = 0x5

.field private static final UIMSG_QUERY_UPDATE_ALL_COMPLETED:I = 0x6

.field private static final UIMSG_QUERY_UPDATE_ONE_COMPLETED:I = 0x7

.field private static final UIMSG_RECOGNIZE_MUSIC_COMPLETED:I = 0x9

.field private static final UIMSG_REMOVE_DOWNLOADALBUMINFO:I = 0x4

.field private static final UIMSG_START_DOWNLOAD_AFTER_SCANNING:I = 0x3

.field private static final UIMSG_START_FINGERPRINT:I = 0x1

.field private static final UIMSG_START_RECOGNIZE:I = 0x2

.field static mLogWriter:Lcom/htc/musicenhancer/util/LogWriter; = null

.field private static final sAlbumIdColumn:I = 0x0

.field private static final sAlbumKeyColumn:I = 0x1

.field private static final sDlColumns:[Ljava/lang/String;

.field private static final sMdColumns:[Ljava/lang/String;


# instance fields
.field private final DOWNLOAD_PROCESS:Ljava/lang/String;

.field private final INTERRUPT_WHEN_SCANNING:Ljava/lang/String;

.field private final NETWORK_CHECK_DELAY_TIME:I

.field private final PREVIOUS_ACTION:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

.field private mCurrStatus:I

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

.field private mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

.field private mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIsAutoUpdate:Z

.field private mIsFirstDownload:Z

.field private mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

.field private mNotification:Landroid/app/Notification;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

.field private mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

.field private mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

.field private mServiceStartId:I

.field private mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

.field private mUpdateAlbumArt:Lcom/htc/musicenhancer/UpdateAlbumArt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const-string v0, "fail_count"

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService;->FAIL_COUNT:Ljava/lang/String;

    .line 91
    const-string v0, "album_id"

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService;->ALBUM_ID:Ljava/lang/String;

    .line 97
    const v0, 0xea60

    sput v0, Lcom/htc/musicenhancer/EnhancerService;->IDLE_DELAY:I

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService;->mLogWriter:Lcom/htc/musicenhancer/util/LogWriter;

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService;->sMdColumns:[Ljava/lang/String;

    .line 154
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v2

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService;->sDlColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/musicenhancer/EnhancerService;->NETWORK_CHECK_DELAY_TIME:I

    .line 108
    new-instance v0, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    .line 109
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

    .line 110
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

    .line 111
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mUpdateAlbumArt:Lcom/htc/musicenhancer/UpdateAlbumArt;

    .line 112
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    .line 113
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    .line 114
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    .line 115
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    .line 116
    iput v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mServiceStartId:I

    .line 117
    iput v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 119
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 120
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    .line 122
    iput-boolean v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsAutoUpdate:Z

    .line 126
    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    .line 127
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->NONE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 128
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->NONE:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 129
    iput-boolean v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    .line 130
    const-string v0, "previous_action"

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->PREVIOUS_ACTION:Ljava/lang/String;

    .line 131
    const-string v0, "donwload_process"

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->DOWNLOAD_PROCESS:Ljava/lang/String;

    .line 132
    const-string v0, "interrupt_when_scanning"

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->INTERRUPT_WHEN_SCANNING:Ljava/lang/String;

    .line 603
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$1;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/EnhancerService$1;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1139
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$2;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/EnhancerService$2;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    .line 1241
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$3;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/EnhancerService$3;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1551
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->loadPrevAction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/musicenhancer/EnhancerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->handleNetworkError(I)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->FAIL_COUNT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->ALBUM_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/musicenhancer/EnhancerService;ILcom/htc/musicenhancer/FingerprintResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/musicenhancer/EnhancerService;->generateFingerprintCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/musicenhancer/EnhancerService;ILcom/htc/musicenhancer/SearchResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/musicenhancer/EnhancerService;->recognizeMusicListenerCompleted(ILcom/htc/musicenhancer/SearchResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/musicenhancer/EnhancerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/musicenhancer/EnhancerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/UpdateAlbumArt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mUpdateAlbumArt:Lcom/htc/musicenhancer/UpdateAlbumArt;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    return-object v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->sMdColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->sDlColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/EnhancerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showDownloadingNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/musicenhancer/EnhancerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->completedDownload(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/GenerateFingerprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/RecognizeMusic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/musicenhancer/EnhancerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isInterruptWhenScanning()Z

    move-result v0

    return v0
.end method

.method private addDownloadingNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 894
    const-string v3, "[EnhancerService]"

    const-string v4, "addNotification"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, title:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "action_notification_downloading"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, notificationIntent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-static {p0, v7, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 903
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030001

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    .line 908
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x48

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 910
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x1020006

    const v5, 0x7f020002

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 912
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f080002

    iget-object v5, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v5}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 915
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #notificationIntent:Landroid/content/Intent;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->clearAllNotification()V

    .line 916
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showDownloadingNotification()V

    .line 917
    return-void
.end method

.method private autoUpdateAlbum(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 293
    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->AUTO_UPDATE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 295
    const-string v1, "show_data_fee_dialog"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    .local v0, showDataFee:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isWifiOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/musicenhancer/EnhancerService;->showDataFeeWarningDialog(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->setAutoUpdateSetting(I)V

    .line 302
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 306
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0

    .line 308
    :cond_2
    iput-boolean v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsAutoUpdate:Z

    .line 309
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    .line 310
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0
.end method

.method private clearAllNotification()V
    .locals 2

    .prologue
    .line 1006
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1007
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1008
    return-void
.end method

.method private completedDownload(Z)V
    .locals 2
    .parameter "showNotification"

    .prologue
    .line 534
    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->END:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 535
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->savePrevAction()V

    .line 536
    if-eqz p1, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showCompletedNotification()V

    .line 538
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_download_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 542
    const-string v1, "Completed download"

    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private generateFingerprintCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V
    .locals 3
    .parameter "albumId"
    .parameter "fingerprintResult"

    .prologue
    .line 1368
    const-string v1, "[EnhancerService]"

    const-string v2, "GenerateFingerprint OnCompleted"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    if-nez p2, :cond_0

    .line 1370
    const-string v1, "[EnhancerService]"

    const-string v2, "FingerprintResult is null"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->remove(I)V

    .line 1372
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1405
    :goto_0
    return-void

    .line 1376
    :cond_0
    invoke-virtual {p2}, Lcom/htc/musicenhancer/FingerprintResult;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1378
    :pswitch_1
    invoke-virtual {p2}, Lcom/htc/musicenhancer/FingerprintResult;->getFingerprintData()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, fingerprintData:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1380
    invoke-direct {p0, p1, v0}, Lcom/htc/musicenhancer/EnhancerService;->recognizeByFingerprint(ILjava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_1
    const-string v1, "[EnhancerService]"

    const-string v2, "fingerprint data is null, use recognizeByTest"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->recognizeByText(I)V

    goto :goto_0

    .line 1389
    .end local v0           #fingerprintData:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->stopUpdateThisAlbum(I)V

    goto :goto_0

    .line 1393
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->stopUpdateThisAlbum(I)V

    goto :goto_0

    .line 1398
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->recognizeByText(I)V

    goto :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleNetworkError(I)V
    .locals 5
    .parameter "albumId"

    .prologue
    .line 1271
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1274
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 1275
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1277
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1279
    :cond_0
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network is not connected : activeNetworkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownloadWhenNoConnection()V

    .line 1289
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 1283
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const-string v2, "[EnhancerService]"

    const-string v3, "Network is recovered retry"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->retry(I)V

    goto :goto_0

    .line 1287
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v2, "[EnhancerService]"

    const-string v3, "Can\'t get connectivitManager"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAutoUpdateEnabled()Z
    .locals 1

    .prologue
    .line 551
    invoke-static {p0}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isBackgroundDataEnabled()Z
    .locals 2

    .prologue
    .line 546
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 547
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const/4 v1, 0x1

    .line 559
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInterruptWhenScanning()Z
    .locals 3

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "interrupt_when_scanning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isScanning()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 563
    const/4 v8, 0x0

    .line 564
    .local v8, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 565
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 566
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 586
    :goto_0
    return v2

    .line 571
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 574
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 575
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v9, :cond_1

    .line 576
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 577
    const-string v2, "external"

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 579
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is Scanning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v8

    .line 586
    goto :goto_0

    .line 582
    :catch_0
    move-exception v7

    .line 583
    .local v7, ex:Ljava/lang/Exception;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isScanning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isWifiOnly()Z
    .locals 3

    .prologue
    .line 372
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_WIFI_ONLY_flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    return v0
.end method

.method private loadFirstDownload()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fisrt_download"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    .line 1100
    return-void
.end method

.method private loadPrevAction()V
    .locals 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "previous_action"

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->valueOf(Ljava/lang/String;)Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 1092
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPreference previous action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "donwload_process"

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->valueOf(Ljava/lang/String;)Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 1095
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPreference mDownloadProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method private match(I[B)V
    .locals 3
    .parameter "albumId"
    .parameter "AlbumArtData"

    .prologue
    .line 1503
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener STATE_MATCH"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1506
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-nez v0, :cond_0

    .line 1507
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in match"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :goto_0
    return-void

    .line 1511
    :cond_0
    if-eqz p2, :cond_1

    .line 1512
    invoke-virtual {v0, p2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumArt([B)V

    .line 1513
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1518
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAlbumArtToDataBase(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto :goto_0

    .line 1515
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    goto :goto_1
.end method

.method private noMatch(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1523
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-nez v0, :cond_0

    .line 1524
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in noMatch"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1529
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAlbumArtToDataBase(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto :goto_0
.end method

.method private recognizeByFingerprint(ILjava/lang/String;)V
    .locals 3
    .parameter "albumId"
    .parameter "fingerprintData"

    .prologue
    .line 1420
    const-string v1, "[EnhancerService]"

    const-string v2, "recognizeByFingerprint"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1423
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0, p2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setFingerprintData(Ljava/lang/String;)V

    .line 1425
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1429
    :goto_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startRecognize()V

    .line 1430
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1431
    return-void

    .line 1427
    :cond_0
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in recognizeByFingerprint"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recognizeByText(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 1434
    const-string v1, "[EnhancerService]"

    const-string v2, "recognizeByText"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1436
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v0, :cond_0

    .line 1437
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1441
    :goto_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startRecognize()V

    .line 1442
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1443
    return-void

    .line 1439
    :cond_0
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in recognizeByText"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recognizeMusicListenerCompleted(ILcom/htc/musicenhancer/SearchResult;)V
    .locals 4
    .parameter "albumId"
    .parameter "searchResult"

    .prologue
    .line 1465
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener OnCompleted"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p2}, Lcom/htc/musicenhancer/SearchResult;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1500
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1469
    :pswitch_1
    invoke-virtual {p2}, Lcom/htc/musicenhancer/SearchResult;->getAlbumArt()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/htc/musicenhancer/EnhancerService;->match(I[B)V

    goto :goto_0

    .line 1474
    :pswitch_2
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener STATE_NO_MATCH"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->noMatch(I)V

    goto :goto_0

    .line 1480
    :pswitch_3
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener STATE_NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1484
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1489
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_4
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener WEBSERVCIE_ERROR"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->retry(I)V

    goto :goto_0

    .line 1493
    :pswitch_5
    const-string v1, "[EnhancerService]"

    const-string v2, "RecognizeMusicListener UNKNOWN_ERROR"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->retry(I)V

    goto :goto_0

    .line 1466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private removeshoutdownServiceDelay()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 601
    :cond_0
    return-void
.end method

.method private retry(I)V
    .locals 4
    .parameter "albumId"

    .prologue
    .line 1253
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry albumId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1256
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-nez v0, :cond_0

    .line 1257
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in retry"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :goto_0
    return-void

    .line 1261
    :cond_0
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->canRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1263
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    goto :goto_0

    .line 1265
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1266
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAlbumArtToDataBase(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto :goto_0
.end method

.method private savePrevAction()V
    .locals 5

    .prologue
    .line 1066
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1067
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "previous_action"

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-virtual {v3}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1068
    const-string v2, "donwload_process"

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-virtual {v3}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1069
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviousAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-virtual {v4}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProcess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-virtual {v4}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v1

    .line 1074
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in ed.apply(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveScanningProterties(Z)V
    .locals 5
    .parameter "isInterrupt"

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1080
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "interrupt_when_scanning"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1083
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v1

    .line 1085
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in saveScanningAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAutoUpdateSetting(I)V
    .locals 5
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 1829
    const-string v2, "[EnhancerService]"

    const-string v3, "DialogActivity autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1831
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1832
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1835
    return-void
.end method

.method private showCancelNotification()V
    .locals 12

    .prologue
    const v11, 0x7f080002

    const v10, 0x7f020002

    const/4 v9, 0x0

    .line 941
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 942
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .line 944
    .local v2, notification:Landroid/app/Notification;
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v10, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 947
    .restart local v2       #notification:Landroid/app/Notification;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030001

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 948
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.musicenhancer.action_press_cancel_notif"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v3, notificationIntent:Landroid/content/Intent;
    const/high16 v6, 0x800

    invoke-static {p0, v9, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 951
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 952
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020006

    invoke-virtual {v6, v7, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 954
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    invoke-virtual {v6, v11, v7, v9, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 956
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    iget-object v8, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v8}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v8

    invoke-virtual {v6, v11, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 960
    const-string v4, "0%"

    .line 961
    .local v4, percent:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v6}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    iget-object v6, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v6}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 964
    .local v5, percentage:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 969
    .end local v5           #percentage:I
    :goto_0
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f080001

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 970
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 971
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 973
    return-void

    .line 966
    :cond_0
    const-string v6, "[EnhancerService]"

    const-string v7, "Total count is 0"

    invoke-static {v6, v7}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCompletedNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1011
    invoke-virtual {p0, v11}, Lcom/htc/musicenhancer/EnhancerService;->stopForeground(Z)V

    .line 1012
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, title:Ljava/lang/String;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1014
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f020001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1016
    .local v3, notification:Landroid/app/Notification;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "action_start_music_activity"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v4, notificationIntent:Landroid/content/Intent;
    const/high16 v6, 0x4000

    invoke-static {p0, v10, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1019
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, notifText:Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->getUpdatedCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 1023
    invoke-virtual {v3, p0, v5, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1024
    invoke-virtual {v1, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1025
    return-void
.end method

.method private showConnectionFailDialog()V
    .locals 2

    .prologue
    .line 1117
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_CONNECTION_FAIL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->startActivity(Landroid/content/Intent;)V

    .line 1121
    return-void
.end method

.method private showDataFeeWarningDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "extras"
    .parameter "action"

    .prologue
    .line 1107
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_DATA_FEE_WARNING:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1112
    :cond_0
    sget-object v1, Lcom/htc/musicenhancer/DialogActivity;->DOWNLOAD_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->startActivity(Landroid/content/Intent;)V

    .line 1114
    return-void
.end method

.method private showDownloadingNotification()V
    .locals 7

    .prologue
    .line 920
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v2

    if-ltz v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080002

    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v4}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v4

    iget-object v5, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v5}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 926
    const-string v0, "0%"

    .line 927
    .local v0, percent:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v3}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 930
    .local v1, percentage:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    .end local v1           #percentage:I
    :goto_0
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080001

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 936
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v2, v3}, Lcom/htc/musicenhancer/EnhancerService;->startForeground(ILandroid/app/Notification;)V

    .line 938
    .end local v0           #percent:Ljava/lang/String;
    :cond_0
    return-void

    .line 932
    .restart local v0       #percent:Ljava/lang/String;
    :cond_1
    const-string v2, "[EnhancerService]"

    const-string v3, "Total count is 0"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showFirstDownloadNotification()V
    .locals 12

    .prologue
    const v11, 0x7f080002

    const v10, 0x7f020002

    const/4 v9, 0x0

    .line 976
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 977
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .line 978
    .local v2, notification:Landroid/app/Notification;
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v10, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 981
    .restart local v2       #notification:Landroid/app/Notification;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030001

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 982
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.musicenhancer.action_first_download"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .local v3, notificationIntent:Landroid/content/Intent;
    const/high16 v6, 0x800

    invoke-static {p0, v9, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 985
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 986
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020006

    invoke-virtual {v6, v7, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 988
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    invoke-virtual {v6, v11, v7, v9, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 990
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    iget-object v8, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v8}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v8

    invoke-virtual {v6, v11, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 994
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, title:Ljava/lang/String;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v7, 0x7f08

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 997
    const-string v4, "0%"

    .line 999
    .local v4, percent:Ljava/lang/String;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f080001

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1000
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 1001
    const/4 v6, 0x4

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1003
    return-void
.end method

.method private showScanningNotification()V
    .locals 12

    .prologue
    const v11, 0x7f080002

    const v10, 0x7f020002

    const/4 v9, 0x0

    .line 1039
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/htc/musicenhancer/EnhancerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1040
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .line 1041
    .local v2, notification:Landroid/app/Notification;
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v10, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1044
    .restart local v2       #notification:Landroid/app/Notification;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030001

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1045
    new-instance v3, Landroid/content/Intent;

    const-string v6, "action_start_music_activity"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v3, notificationIntent:Landroid/content/Intent;
    const/high16 v6, 0x800

    invoke-static {p0, v9, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1048
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1049
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020006

    invoke-virtual {v6, v7, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1051
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    invoke-virtual {v6, v11, v7, v9, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1053
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v7

    iget-object v8, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v8}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v8

    invoke-virtual {v6, v11, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1057
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1058
    .local v5, title:Ljava/lang/String;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v7, 0x7f08

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1059
    const-string v4, "0%"

    .line 1060
    .local v4, percent:Ljava/lang/String;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f080001

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1061
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 1062
    const/4 v6, 0x5

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1063
    return-void
.end method

.method private shutdownServiceDelay()V
    .locals 4

    .prologue
    .line 590
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 593
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    sget v2, Lcom/htc/musicenhancer/EnhancerService;->IDLE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startFingerprint()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 870
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 871
    const-string v0, "[EnhancerService]"

    const-string v1, "mHandler is null service is destoryed"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startRecognize()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 882
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 883
    const-string v0, "[EnhancerService]"

    const-string v1, "mHandler is null service is destoryed"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private stopUpdateThisAlbum(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 1408
    const-string v1, "[EnhancerService]"

    const-string v2, "FingerprintResult no track"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 1410
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v0, :cond_0

    .line 1411
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 1412
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAlbumArtToDataBase(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 1416
    :goto_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1417
    return-void

    .line 1414
    :cond_0
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null in stopUpdateThisAlbum"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAlbumArtToDataBase(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 3
    .parameter "downloadAlbumInfo"

    .prologue
    .line 1125
    if-eqz p1, :cond_1

    .line 1126
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1127
    const-string v1, "[EnhancerService]"

    const-string v2, "updateAlbumArtToDataBase"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1137
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1132
    :cond_0
    const-string v1, "[EnhancerService]"

    const-string v2, "mNonUiHandler is null in updateAlbumArtToDataBase"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_1
    const-string v1, "[EnhancerService]"

    const-string v2, "downloadAlbumInfo == null updateAlbumArtToDataBase"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAlbumOnStart(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 334
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isAutoUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-boolean v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showFirstDownloadNotification()V

    .line 368
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 342
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0

    .line 344
    :cond_2
    iput-boolean v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsAutoUpdate:Z

    .line 345
    invoke-direct {p0, v3}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    .line 346
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->AUTO_UPDATE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 347
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->loadPrevAction()V

    .line 353
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->START:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->UPDATE_ALL:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    if-ne v0, v1, :cond_6

    .line 355
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 359
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0

    .line 361
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    goto :goto_0

    .line 365
    :cond_6
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    goto :goto_0
.end method

.method private updateAllAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 265
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->UPDATE_ALL:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreviousAction:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 267
    iget-boolean v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isWifiOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/musicenhancer/EnhancerService;->showDataFeeWarningDialog(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {p0}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showConnectionFailDialog()V

    .line 273
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showScanningNotification()V

    .line 279
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 281
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    .line 285
    iput-boolean v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsAutoUpdate:Z

    .line 286
    invoke-direct {p0, v1}, Lcom/htc/musicenhancer/EnhancerService;->saveScanningProterties(Z)V

    goto :goto_0
.end method

.method private updateCurrAlbum(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 317
    iget-boolean v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isWifiOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/htc/musicenhancer/EnhancerService;->showDataFeeWarningDialog(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v2, "album_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 321
    .local v0, album:I
    invoke-static {p0}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showConnectionFailDialog()V

    .line 324
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "audio_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, audioId:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/musicenhancer/EnhancerService;->updateCurrentAlbum(II)V

    goto :goto_0
.end method

.method static writeLog(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 1825
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->mLogWriter:Lcom/htc/musicenhancer/util/LogWriter;

    invoke-virtual {v0, p0}, Lcom/htc/musicenhancer/util/LogWriter;->writeLog(Ljava/lang/String;)V

    .line 1826
    return-void
.end method


# virtual methods
.method cancelDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 493
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->savePrevAction()V

    .line 494
    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->NONE:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 495
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 496
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->cancel()V

    .line 497
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/GenerateFingerprint;->cancel()V

    .line 498
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/RecognizeMusic;->cancel()V

    .line 499
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/musicenhancer/EnhancerService;->stopForeground(Z)V

    .line 504
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->removeAll()V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_download_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 508
    return-void
.end method

.method cancelDownload(ZZ)V
    .locals 2
    .parameter "isInterrupt"
    .parameter "showNotification"

    .prologue
    .line 511
    const-string v0, "[EnhancerService]"

    const-string v1, "cancel Download"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz p2, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->showCancelNotification()V

    .line 518
    :goto_0
    if-nez p1, :cond_0

    .line 519
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->END:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload()V

    .line 523
    return-void

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->clearAllNotification()V

    goto :goto_0
.end method

.method cancelDownloadWhenNoConnection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 526
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    if-nez v0, :cond_0

    .line 527
    const-string v0, "[EnhancerService]"

    const-string v1, "The status is idle. Do not need to cancel."

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    goto :goto_0
.end method

.method initConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, config:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    :try_start_0
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v3, "14993408-87DAC127CCB4721E18B61BC0E8C497D8"

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/gracenote/mmid/MobileSDK/GNConfig;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    const-string v2, "webservices.isInlineCoverArtEnabled"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "webservices.coverArtSizePreference"

    const-string v3, "LARGE, MEDIUM, XLARGE"

    invoke-virtual {v0, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "isGenreCoverArtEnabled"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 439
    :goto_0
    return-object v2

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runtime exception thrown by  GNConfig.init process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 438
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "[EnhancerService]"

    const-string v4, "Fail to init GNConfig"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isDownloading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 485
    iget v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIdle()Z
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPending()Z
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 163
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 165
    const-string v4, "[EnhancerService]"

    const-string v5, "onCreate + "

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->initConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v0

    .line 167
    .local v0, config:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    new-instance v4, Lcom/htc/musicenhancer/GenerateFingerprint;

    invoke-direct {v4, v0}, Lcom/htc/musicenhancer/GenerateFingerprint;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

    .line 168
    new-instance v4, Lcom/htc/musicenhancer/RecognizeMusic;

    invoke-direct {v4, v0}, Lcom/htc/musicenhancer/RecognizeMusic;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

    .line 169
    new-instance v4, Lcom/htc/musicenhancer/UpdateAlbumArt;

    invoke-direct {v4, p0}, Lcom/htc/musicenhancer/UpdateAlbumArt;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mUpdateAlbumArt:Lcom/htc/musicenhancer/UpdateAlbumArt;

    .line 170
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    new-instance v5, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;

    invoke-direct {v5, p0}, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    invoke-virtual {v4, v5}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->registerOnCompletedListener(Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;)V

    .line 172
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;

    new-instance v5, Lcom/htc/musicenhancer/EnhancerService$GenerateFingerprintListener;

    invoke-direct {v5, p0}, Lcom/htc/musicenhancer/EnhancerService$GenerateFingerprintListener;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    invoke-virtual {v4, v5}, Lcom/htc/musicenhancer/GenerateFingerprint;->registerOnCompletedListener(Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;)V

    .line 174
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;

    new-instance v5, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;

    invoke-direct {v5, p0}, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    invoke-virtual {v4, v5}, Lcom/htc/musicenhancer/RecognizeMusic;->registerOnCompletedListener(Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;)V

    .line 177
    new-instance v4, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    invoke-direct {v4, p0, v6}, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;-><init>(Lcom/htc/musicenhancer/EnhancerService;Lcom/htc/musicenhancer/EnhancerService$1;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    .line 178
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v1, connectivityIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/htc/musicenhancer/EnhancerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance v4, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    invoke-direct {v4, p0, v6}, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;-><init>(Lcom/htc/musicenhancer/EnhancerService;Lcom/htc/musicenhancer/EnhancerService$1;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    .line 185
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v3, unMountintentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/htc/musicenhancer/EnhancerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "action_notification_downloading"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v4, "action_cancel_download"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v4, "action_auto_update_album"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v4, "action_update_all_album"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v4, "action_update_current_album"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/musicenhancer/EnhancerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    const-string v4, "HtcMusicEnhancer"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/htc/musicenhancer/EnhancerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mPreferences:Landroid/content/SharedPreferences;

    .line 203
    new-instance v4, Lcom/htc/musicenhancer/util/LogWriter;

    invoke-direct {v4}, Lcom/htc/musicenhancer/util/LogWriter;-><init>()V

    sput-object v4, Lcom/htc/musicenhancer/EnhancerService;->mLogWriter:Lcom/htc/musicenhancer/util/LogWriter;

    .line 204
    sget-object v4, Lcom/htc/musicenhancer/EnhancerService;->mLogWriter:Lcom/htc/musicenhancer/util/LogWriter;

    invoke-virtual {v4}, Lcom/htc/musicenhancer/util/LogWriter;->open()V

    .line 207
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "DownloadAlbumArtHandlerThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 208
    iget-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v4, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    iget-object v5, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;-><init>(Lcom/htc/musicenhancer/EnhancerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    .line 210
    const-string v4, "[EnhancerService]"

    const-string v5, "onCreate - "

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    const-string v0, "[EnhancerService]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mConnectivityReceiver:Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mUnmountReceiver:Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 396
    iput-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 401
    iput-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    .line 403
    :cond_4
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;

    .line 408
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 411
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    iput-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 415
    :cond_6
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService;->mLogWriter:Lcom/htc/musicenhancer/util/LogWriter;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/util/LogWriter;->close()V

    .line 416
    return-void

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 215
    const-string v1, "[EnhancerService]"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput p3, p0, Lcom/htc/musicenhancer/EnhancerService;->mServiceStartId:I

    .line 218
    if-nez p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V

    .line 220
    const-string v1, "[EnhancerService]"

    const-string v2, "onStartCommand intent NULL"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return v5

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 226
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->loadFirstDownload()V

    .line 230
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is first Download = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mIsFirstDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "action_update_all_album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAllAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    const-string v1, "action_auto_update_album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->autoUpdateAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :cond_4
    const-string v1, "action_update_current_album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService;->updateCurrAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :cond_5
    const-string v1, "action_sync_mdprovider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 238
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_6

    .line 239
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DownloadAlbumArtHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 240
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 242
    :cond_6
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    if-nez v1, :cond_7

    .line 243
    new-instance v1, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;-><init>(Lcom/htc/musicenhancer/EnhancerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    .line 245
    :cond_7
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 246
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->removeMessages(I)V

    .line 248
    :cond_8
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 249
    const-string v1, "[EnhancerService]"

    const-string v2, "Send Message to what"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 251
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 252
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 253
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mNonUiHandler:Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 254
    :cond_9
    const-string v1, "action_activity_on_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 255
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->updateAlbumOnStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_a
    const-string v1, "action_cancel_download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "[EnhancerService]"

    const-string v2, "received cancel download"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v4, v4}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    goto/16 :goto_0
.end method

.method queryDownloadAlbumArtCompleted(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 5
    .parameter "downloadAlbumInfo"

    .prologue
    .line 1344
    if-eqz p1, :cond_0

    .line 1345
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v0

    .line 1346
    .local v0, albumId:I
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received update current album onCompleted. Album id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setIsUpdateCurrent(Z)V

    .line 1348
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2, v0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v1

    .line 1349
    .local v1, originalDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v1, :cond_1

    .line 1350
    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    const-string v2, "[EnhancerService]"

    const-string v3, "originalDownloadAlbumInfo.currentStatus() == DownloadAlbumInfo.STATUS_IDLE"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2, v0, p1, v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->replaceAndInsertToTop(ILcom/htc/musicenhancer/DownloadAlbumInfo;Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 1354
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1365
    .end local v0           #albumId:I
    .end local v1           #originalDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :cond_0
    :goto_0
    return-void

    .line 1359
    .restart local v0       #albumId:I
    .restart local v1       #originalDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :cond_1
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v2, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->add(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 1360
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->addDownloadingNotification()V

    .line 1361
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1362
    const-string v2, "[EnhancerService]"

    const-string v3, "original download album info is not exist"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method queryDownloadAlbumArtCompleted([Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    .locals 4
    .parameter "downloadAlbumInfos"
    .parameter "failCount"

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->add([Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 1327
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1, p2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->setFailCount(I)V

    .line 1328
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1331
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->addDownloadingNotification()V

    .line 1332
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    .line 1341
    :goto_0
    return-void

    .line 1334
    :cond_0
    const/4 v0, 0x1

    .line 1335
    .local v0, showNotification:Z
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isAutoUpdateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    const-string v1, "[EnhancerService]"

    const-string v2, "Auto update. Nothing need to update don\'w show notification"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/4 v0, 0x0

    .line 1339
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/musicenhancer/EnhancerService;->completedDownload(Z)V

    goto :goto_0
.end method

.method public startDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 445
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    const-string v0, "[EnhancerService]"

    const-string v1, "startDownload"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->START:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadProcess:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 448
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->savePrevAction()V

    .line 449
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->removeshoutdownServiceDelay()V

    .line 450
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iput v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 452
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->clear()V

    .line 453
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->start()V

    .line 468
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iput v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 456
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->startFingerprint()V

    goto :goto_0

    .line 459
    :cond_1
    iput v3, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 460
    const-string v0, "[EnhancerService]"

    const-string v1, "album is downloading. Skip this action"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload - fail isBackgroundDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isBackgroundDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isExternalStorageMounted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->isExternalStorageMounted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    goto :goto_0
.end method

.method public updateCurrentAlbum(II)V
    .locals 2
    .parameter "albumId"
    .parameter "audioId"

    .prologue
    .line 471
    const-string v0, "[EnhancerService]"

    const-string v1, "updateCurrentAlbum start"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I

    .line 474
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService;->removeshoutdownServiceDelay()V

    .line 475
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService;->mQueryDownloadAlbumArt:Lcom/htc/musicenhancer/QueryDownloadAlbumArt;

    invoke-virtual {v0, p1, p2}, Lcom/htc/musicenhancer/QueryDownloadAlbumArt;->queryAlbumId(II)I

    .line 476
    const-string v0, "[EnhancerService]"

    const-string v1, "updateCurrentAlbum end"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method
