.class public Lcom/htc/music/MiniPlayer;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MiniPlayer$NonUIHandler;,
        Lcom/htc/music/MiniPlayer$MiniPlayerCreator;
    }
.end annotation


# static fields
.field private static final ACTION_NEXT_SONG:I = 0x2711

.field private static final ACTION_PREV_SONG:I = 0x2712

.field private static final ACTION_RELOAD_QUEUE:I = 0x2713

.field private static final DECODE_ALBUM_ART:I = 0x2714

.field private static final Decode_BitMap:Ljava/lang/String; = "DECODED_BITMAP"

.field private static final TAG:Ljava/lang/String; = "[MiniPlayer]"


# instance fields
.field isMonitoring:Z

.field private isReleased:Z

.field loadTrackFail:Z

.field protected mContext:Landroid/app/Activity;

.field private mDLNAMode:I

.field public mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

.field private mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mInternalEnough:Z

.field private mIsServiceBinded:Z

.field private mLauncherListener:Landroid/view/View$OnClickListener;

.field private mMaxNotifyAlbumArtSideLen:I

.field protected mNext:Lcom/htc/widget/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPlayPause:Lcom/htc/widget/HtcFooterButton;

.field protected mPlayerContainer:Lcom/htc/widget/HtcFooter;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field protected mPrevious:Lcom/htc/widget/RepeatingImageButton;

.field private mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field protected mThumb:Lcom/htc/widget/HeaderBarImage;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbPath:Ljava/lang/String;

.field protected mTrackDetail:Lcom/htc/widget/HeaderBarText;

.field private mUIHandler:Landroid/os/Handler;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x48

    iput v1, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iput v3, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    iput-boolean v3, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    iput-boolean v3, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    new-instance v1, Lcom/htc/music/MiniPlayer$1;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$1;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    new-instance v1, Lcom/htc/music/MiniPlayer$2;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$2;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    iput-boolean v3, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    new-instance v1, Lcom/htc/music/MiniPlayer$3;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$3;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/MiniPlayer$4;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$4;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/MiniPlayer$5;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$5;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/MiniPlayer$6;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$6;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/MiniPlayer$7;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$7;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNextListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/htc/music/MiniPlayer$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$8;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    new-instance v1, Lcom/htc/music/MiniPlayer$9;

    invoke-direct {v1, p0}, Lcom/htc/music/MiniPlayer$9;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    invoke-virtual {p0, p1}, Lcom/htc/music/MiniPlayer;->initializeView(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->initNonUiHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MiniPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/MiniPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MiniPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MiniPlayer;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MiniPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->doPauseResume()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/MiniPlayer;)Lcom/htc/music/MiniPlayer$NonUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    return-object v0
.end method

.method private doPauseResume()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager;->playpause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private initNonUiHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiniPlayerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/music/MiniPlayer$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    return-void
.end method

.method private isDMP()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocal()Z
    .locals 1

    iget v0, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToDMR()Z
    .locals 2

    iget v0, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDLNAMode(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readDLNAMode, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MiniPlayer;->mDLNAMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindMediaPlayer()V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[MiniPlayer]"

    const-string v1, "someone called bindService again but service already binded!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsServiceBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[MiniPlayer]"

    const-string v1, "dispatchKeyEvent"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCServiceManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    return-object v0
.end method

.method protected initGlancelauncher()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected initNextBtn()V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_titlebar_btn"

    const v3, 0x208072d

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_next_song_rest"

    const v3, 0x208090d

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto :goto_0
.end method

.method protected initPlayPauseBtn()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    return-void
.end method

.method protected initPreviousBtn()V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_titlebar_btn"

    const v3, 0x208072d

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_previous_song_rest"

    const v3, 0x2080934

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto :goto_0
.end method

.method protected initializeView(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f08009e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/RepeatingImageButton;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Lcom/htc/widget/HtcFooter;

    const v2, 0x7f0800a0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/RepeatingImageButton;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initGlancelauncher()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPreviousBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initNextBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPlayPauseBtn()V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    return-void
.end method

.method public refreshInfo()V
    .locals 7

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const-string v4, "[MiniPlayer]"

    const-string v5, "playback service system not ready!! try to reload queue"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->IsReloadAllMusicForQueue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v5, 0x2713

    invoke-virtual {v4, v5}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v3, v5, v6}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateNextBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePrevBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected registerEventReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.dmcsvcman.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.dmcsvcman.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "[MiniPlayer]"

    const-string v2, "registerEventReceiver"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected setArtistName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultThumb()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method protected setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iput-object p2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    goto :goto_1
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HeaderBarText;

    const-string v1, "-- --"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[MiniPlayer]"

    const-string v1, "mTrackDetail is NULL!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/htc/music/MiniPlayer;->readDLNAMode(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[MiniPlayer]"

    const-string v1, "create mDMCSvcMan"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/DMCServiceManager;-><init>(Landroid/app/Activity;Landroid/content/ServiceConnection;I)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePrevBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateNextBtn()V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->registerEventReceiver()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->bindMediaPlayer()V

    goto :goto_1
.end method

.method public stopMonitor()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unRegisterEventReceiver()V

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager;->release()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    goto :goto_0
.end method

.method protected unBindMediaPlayer()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-void
.end method

.method protected unRegisterEventReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDMCInfo()V
    .locals 5

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto :goto_0
.end method

.method protected updateDMCThumb()V
    .locals 7

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/htc/music/DMCServiceManager;->getDMCThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v4, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v4}, Lcom/htc/music/DMCServiceManager;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, v2, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v2, :cond_7

    :cond_6
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateNextBtn()V
    .locals 4

    const v3, 0x208090b

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_next_song_disable"

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_next_song_disable"

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/RepeatingImageButton;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNext:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_next_song_rest"

    const v3, 0x208090d

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method protected updatePlayPauseBtn()V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->isPlaying()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_icon_glance_pause_rest"

    const v5, 0x2080916

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFooterButton;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_icon_glance_play_disable"

    const v5, 0x2080926

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFooterButton;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_icon_glance_play_rest"

    const v5, 0x2080928

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_2
.end method

.method protected updatePrevBtn()V
    .locals 4

    const v3, 0x2080932

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_previous_song_disable"

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_previous_song_disable"

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/RepeatingImageButton;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPrevious:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_icon_glance_previous_song_rest"

    const v3, 0x2080934

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method protected updateThumb()V
    .locals 5

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->isToDMR()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "[MiniPlayer]"

    const-string v4, "DMC mode, but mService is not null & we called update local thumb"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v3, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0
.end method

.method public updateTrackInfo()V
    .locals 21

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    const-string v2, "[MiniPlayer]"

    const-string v3, "Service is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v17

    if-nez v17, :cond_0

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_0
    :goto_0
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    :goto_2
    return-void

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v17

    if-nez v17, :cond_2

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_2
    :goto_3
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_1b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v16, :cond_e

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v20

    if-nez v8, :cond_b

    if-nez v20, :cond_b

    const-string v2, "[MiniPlayer]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v13, :cond_5

    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v20

    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v13, 0x0

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_6
    if-eqz v8, :cond_7

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_8
    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    :cond_9
    if-eqz v20, :cond_a

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v14, -0x1

    const/4 v15, -0x1

    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v14, :cond_b

    if-le v15, v14, :cond_b

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v20

    :cond_b
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v17

    if-nez v17, :cond_c

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_c
    :goto_6
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v11

    :try_start_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v10

    :try_start_9
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v17

    if-nez v17, :cond_d

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_d
    :goto_7
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_19

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v18

    if-eqz v19, :cond_f

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_f

    if-ltz v18, :cond_f

    move-object/from16 v0, v19

    array-length v2, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    move/from16 v0, v18

    if-gt v2, v0, :cond_11

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v17

    if-nez v17, :cond_10

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_10
    :goto_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_1d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const/16 v2, 0xb

    :try_start_d
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v4, v2

    aget v2, v19, v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is_music>=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v2

    if-eqz v2, :cond_13

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-result v17

    if-nez v17, :cond_13

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_13
    :goto_9
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "artist"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_16
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MiniPlayer;->isDMP()Z

    move-result v3

    if-eqz v3, :cond_17

    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v17

    if-nez v17, :cond_17

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_17
    :goto_a
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_18

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    :goto_b
    throw v2

    :catch_2
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v5, 0x7f070001

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto :goto_b

    :catch_3
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    :goto_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_2

    :catch_4
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c

    :catch_5
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c

    :catch_6
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c

    :catch_7
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c

    :catch_8
    move-exception v11

    const/4 v8, 0x0

    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c
.end method
