.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final MSG_PRESENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SlideshowActivity"

.field public static mIsAutoPlaying:Z

.field private static mMediaController:Lcom/android/mms/ui/MediaController;


# instance fields
.field private IsView:Z

.field private NONE_PLAY:I

.field private RESUME_PLAY:I

.field private extract:Landroid/view/View$OnClickListener;

.field private list:Landroid/view/View$OnClickListener;

.field mBrightLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mIsBrightLocked:Z

.field private mIsPaused:Z

.field private mIsPlaying:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mModel:Lcom/android/mms/model/SlideshowModel;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOneSlideMode:Z

.field private mPlayerHandler:Landroid/os/Handler;

.field mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mbInit:Z

.field private next:Landroid/view/View$OnClickListener;

.field private prev:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/SlideshowActivity;->mIsAutoPlaying:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->NONE_PLAY:I

    .line 83
    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->RESUME_PLAY:I

    .line 86
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->IsView:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOneSlideMode:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    .line 106
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPlayerHandler:Landroid/os/Handler;

    .line 308
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->prev:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->next:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$7;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->list:Landroid/view/View$OnClickListener;

    .line 404
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$8;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->extract:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 653
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseBackLightLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->IsView:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->RESUME_PLAY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->NONE_PLAY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->acquireBackLightLock()V

    return-void
.end method

.method static synthetic access$900()Lcom/android/mms/ui/MediaController;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    return-object v0
.end method

.method private declared-synchronized acquireBackLightLock()V
    .locals 3

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getMediaController()Lcom/android/mms/ui/MediaController;
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    return-object v0
.end method

.method private initMediaController()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 458
    new-instance v2, Lcom/android/mms/ui/MediaController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MediaController;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    .line 459
    sget-object v2, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    new-instance v3, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MediaController;->setMediaPlayer(Lcom/android/mms/ui/MediaController$MediaPlayerControl;)V

    .line 460
    const v2, 0x7f0e00c0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 461
    .local v1, rootLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 464
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 465
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 466
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 467
    sget-object v2, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mOneSlideMode:Z

    if-nez v2, :cond_0

    .line 473
    sget-object v2, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->prev:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->next:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 477
    :cond_0
    sget-object v2, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->extract:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MediaController;->setExtractListListeners(Landroid/view/View$OnClickListener;)V

    .line 478
    return-void
.end method

.method private declared-synchronized releaseBackLightLock()V
    .locals 2

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 704
    move-object v0, p1

    .line 705
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$12;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 428
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->RESUME_PLAY:I

    if-ne p1, v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->acquireBackLightLock()V

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyMMSPlayMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 134
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 135
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v9, "pref_key_play_mode"

    const-string v10, "manual"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, mode:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 137
    const-string v9, "auto"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 138
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/ui/SlideshowActivity;->mIsAutoPlaying:Z

    .line 139
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    .line 150
    .end local v2           #mode:Ljava/lang/String;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x200

    const/16 v11, 0x200

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 155
    const v9, 0x7f030038

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 159
    .local v4, msg:Landroid/net/Uri;
    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMessageUri:Landroid/net/Uri;

    .line 164
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v4, v9}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 172
    .local v3, model:Lcom/android/mms/model/SlideshowModel;
    const v9, 0x7f0e00c1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/SlideView;

    .line 174
    .local v8, view:Lcom/android/mms/ui/SlideView;
    const-string v9, "SlideshowPresenter"

    invoke-static {v9, p0, v8, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 178
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 179
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 180
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mOneSlideMode:Z

    .line 184
    :cond_1
    const-string v9, "power"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 193
    .local v5, pm:Landroid/os/PowerManager;
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v10, p0, v3}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v7, v9

    check-cast v7, [Ljava/lang/Object;

    .line 261
    .local v7, status:[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mbInit:Z

    .line 262
    const/4 v9, 0x1

    aget-object v9, v7, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    .line 263
    iget-object v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v9, 0x2

    aget-object v9, v7, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 273
    .end local v7           #status:[Ljava/lang/Object;
    :goto_1
    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    if-nez v9, :cond_2

    .line 274
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowControllerAtStart()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 284
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    .end local v3           #model:Lcom/android/mms/model/SlideshowModel;
    .end local v5           #pm:Landroid/os/PowerManager;
    .end local v8           #view:Lcom/android/mms/ui/SlideView;
    :cond_3
    :goto_2
    return-void

    .line 141
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #msg:Landroid/net/Uri;
    .restart local v2       #mode:Ljava/lang/String;
    .restart local v6       #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const-string v9, "manual"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/mms/ui/SlideshowActivity;->mIsAutoPlaying:Z

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    goto/16 :goto_0

    .line 166
    .end local v2           #mode:Ljava/lang/String;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #msg:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v9, "SlideshowActivity"

    const-string v10, "Cannot present the slide show."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_2

    .line 267
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #model:Lcom/android/mms/model/SlideshowModel;
    .restart local v5       #pm:Landroid/os/PowerManager;
    .restart local v8       #view:Lcom/android/mms/ui/SlideView;
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/mms/ui/SlideshowActivity;->mbInit:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 610
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 611
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseBackLightLock()V

    .line 612
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 624
    sparse-switch p1, :sswitch_data_0

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaController;->show()V

    .line 650
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 634
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 635
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaController;->hide()V

    goto :goto_0

    .line 641
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportHWMenuController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaController;->updateController()V

    goto :goto_0

    .line 624
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 553
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z

    .line 556
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseBackLightLock()V

    .line 560
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    .line 562
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 571
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mbInit:Z

    .line 572
    return-void

    .line 565
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x400

    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 500
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v3}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 514
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mbInit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->acquireBackLightLock()V

    .line 518
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$11;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 533
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 535
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->acquireBackLightLock()V

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 299
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 300
    .local v0, status:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mbInit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 302
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 303
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 576
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 595
    :cond_1
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    if-eqz v0, :cond_2

    .line 596
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaController;->hide()V

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 603
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseBackLightLock()V

    .line 605
    return-void

    .line 585
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    goto :goto_0
.end method
