.class public Lcom/htc/idlescreen/base/reminderview/MusicView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/reminderview/MusicView$1;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;,
        Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MusicView"

.field private static final WHAT_UI_BOUNCE:I = 0x3ea

.field private static final WHAT_UI_HIDE_PANEL:I = 0x3e9


# instance fields
.field private mBArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mBCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mBSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mBounceBackMarker:Lcom/htc/fusion/fx/Marker;

.field private mBounceFrontMarker:Lcom/htc/fusion/fx/Marker;

.field private mDefaultMarker:Lcom/htc/fusion/fx/Marker;

.field private mFArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mFCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mFSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mInFront:Z

.field private mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

.field private mMinimumFlingVelocity:I

.field private mNextBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mNextListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;

.field private mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mPauseListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;

.field private mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mPlayListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;

.field private mPreBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mPreListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;

.field private mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

.field private mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

.field private mTlPanel:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    .line 68
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    .line 69
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPreListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;

    .line 70
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mNextListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;

    .line 71
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;

    .line 72
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;

    .line 93
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->initScene()V

    .line 95
    return-void
.end method

.method static synthetic access$2000(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/idlescreen/base/reminderview/MusicView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->scheduleHide()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceBackMarker:Lcom/htc/fusion/fx/Marker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceFrontMarker:Lcom/htc/fusion/fx/Marker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/idlescreen/base/reminderview/MusicView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mMinimumFlingVelocity:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/idlescreen/base/reminderview/MusicView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/MusicView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 83
    const-string v0, "Port/base/Lockscreen_music.m10"

    .line 84
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 85
    const-string v0, "Land/base/Lockscreen_music.m10"

    .line 87
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 88
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/MusicView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method

.method private scheduleHide()V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    .line 216
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    if-nez v0, :cond_0

    .line 217
    const-string v0, "MusicView"

    const-string v1, "scheduleHide"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 219
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 157
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 158
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPreBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 159
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mNextBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 160
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 161
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 162
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->uninit()V

    .line 164
    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->uninit()V

    .line 168
    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    .line 170
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 171
    return-void
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 25

    .prologue
    .line 100
    const-string v2, "MusicView"

    const-string v3, "initScene"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super/range {p0 .. p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    .line 103
    .local v6, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v2, "timeline.lockscreen_squarepanel"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mTlPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mTlPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 106
    const-string v2, "textlabel.lockscreenmusic"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v23

    check-cast v23, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 107
    .local v23, title:Lcom/htc/fusion/fx/controls/FxTextLabel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;

    const v3, 0x7f04004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 108
    .local v24, titleStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 110
    const-string v2, "timeline.Musicpanel_front"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v22

    check-cast v22, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 111
    .local v22, front:Lcom/htc/fusion/fx/FxTimelineControl;
    const-string v2, "dynamicimage.musiccover"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 112
    const-string v2, "textlabel.lockscreenmusic_song"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 113
    const-string v2, "textlabel.lockscreenmusic_artist"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 115
    const-string v2, "timeline.Musicpanel_back"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v21

    check-cast v21, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 116
    .local v21, back:Lcom/htc/fusion/fx/FxTimelineControl;
    const-string v2, "dynamicimage.musiccover"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 117
    const-string v2, "textlabel.lockscreenmusic_song"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 118
    const-string v2, "textlabel.lockscreenmusic_artist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 120
    const-string v2, "button.musiccontrol_previous"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPreBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 121
    const-string v2, "button.musiccontrol_next"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mNextBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 122
    const-string v2, "button.musiccontrol_play"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 123
    const-string v2, "button.musiccontrol_pause"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPreBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPreListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPreClickListner;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mNextBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mNextListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyNextClickListner;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPlayClickListner;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseListener:Lcom/htc/idlescreen/base/reminderview/MusicView$MyPauseClickListner;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 130
    const-string v2, "hitbox.backpanel_left"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 131
    .local v7, leftHit:Lcom/htc/fusion/fx/controls/FxHitbox;
    const-string v2, "hitbox.backpanel_right"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v16

    check-cast v16, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 132
    .local v16, rightHit:Lcom/htc/fusion/fx/controls/FxHitbox;
    const-string v2, "hitbox.backpanel_left"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 133
    .local v8, backLeftHit:Lcom/htc/fusion/fx/controls/FxHitbox;
    const-string v2, "hitbox.backpanel_right"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v17

    check-cast v17, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 134
    .local v17, backRightHit:Lcom/htc/fusion/fx/controls/FxHitbox;
    const-string v2, "flip_to_left_180"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v19

    .line 135
    .local v19, flipLeftToBack:Lcom/htc/fusion/fx/Marker;
    const-string v2, "flip_to_left_360"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v18

    .line 136
    .local v18, flipLeftToFront:Lcom/htc/fusion/fx/Marker;
    const-string v2, "flip_to_right_180"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v10

    .line 137
    .local v10, flipRightToBack:Lcom/htc/fusion/fx/Marker;
    const-string v2, "flip_to_right_360"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v9

    .line 138
    .local v9, flipRightToFront:Lcom/htc/fusion/fx/Marker;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;

    .line 140
    const-string v2, "touch_bounce2"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceBackMarker:Lcom/htc/fusion/fx/Marker;

    .line 141
    const-string v2, "touch_bounce"

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBounceFrontMarker:Lcom/htc/fusion/fx/Marker;

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    .line 144
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    const-string v4, "left"

    const/4 v5, 0x0

    const/high16 v11, 0x3f80

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Ljava/lang/String;ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    .line 145
    new-instance v11, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    const-string v13, "right"

    const/4 v14, 0x1

    const/high16 v20, -0x4080

    move-object/from16 v12, p0

    move-object v15, v6

    invoke-direct/range {v11 .. v20}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Ljava/lang/String;ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mLeftFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->init()V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->init()V

    .line 148
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mMinimumFlingVelocity:I

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->update()V

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "MusicView"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/idlescreen/base/util/MyUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 179
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 180
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    .line 182
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 184
    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    .line 189
    const-string v0, "MusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mInFront:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->scheduleHide()V

    .line 191
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 192
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 193
    return-void
.end method

.method public onTouchEvent(III)V
    .locals 2
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onTouchEvent(III)V

    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v0, "MusicView"

    const-string v1, "onTouchEvent down"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->scheduleHide()V

    .line 213
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->reset()V

    .line 197
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 198
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 199
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 200
    sget-object v1, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z

    .line 202
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/idlescreen/base/util/MyUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 205
    :cond_0
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/idlescreen/base/IdleState;->getMusicCtrl()Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    move-result-object v2

    .line 283
    .local v2, musicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isMusicPlaying()Z

    move-result v3

    .line 284
    .local v3, playing:Z
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->getCover()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->updateCover(Landroid/graphics/Bitmap;)V

    .line 292
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->updateButton(Z)V

    .line 293
    invoke-virtual {p0, v4, v0}, Lcom/htc/idlescreen/base/reminderview/MusicView;->updateSongName(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public updateButton(Z)V
    .locals 3
    .parameter "playing"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 299
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPlayBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 303
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mPauseBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateCover(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "cover"

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    .local v0, noCover:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 317
    .end local v0           #noCover:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBCover:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateSongName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "artist"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 329
    :goto_0
    if-eqz p2, :cond_1

    .line 330
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 337
    :goto_1
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBSong:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mFArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView;->mBArtlist:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method
