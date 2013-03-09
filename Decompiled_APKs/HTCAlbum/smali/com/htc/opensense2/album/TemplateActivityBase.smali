.class public abstract Lcom/htc/opensense2/album/TemplateActivityBase;
.super Landroid/app/Activity;
.source "TemplateActivityBase.java"

# interfaces
.implements Lcom/htc/opensense2/album/TemplateActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/TemplateActivityBase$1;,
        Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;,
        Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;,
        Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Landroid/app/Activity;",
        "Lcom/htc/opensense2/album/TemplateActivityInterface;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_DESTROYED:I = 0x3

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_STOPPED:I = 0x2


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TADAPTER;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

.field private mEnableBroadcaseReceiver:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIsScreenPortrait:Z

.field private mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense2/album/TemplateActivityBase",
            "<TADAPTER;>.TemplateContentObserver;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/TemplateActivityBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 560
    new-instance v0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;-><init>(Lcom/htc/opensense2/album/TemplateActivityBase;Lcom/htc/opensense2/album/TemplateActivityBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    .line 564
    iput v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    .line 565
    iput-boolean v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    .line 566
    iput-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/TemplateActivityBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/opensense2/album/TemplateActivityBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindContentObserver()V
    .locals 6

    .prologue
    .line 535
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v1, observerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onBindingContentObserver(Ljava/util/ArrayList;)V

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 541
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 543
    :cond_0
    new-instance v4, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    iget-object v5, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;-><init>(Lcom/htc/opensense2/album/TemplateActivityBase;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    .line 544
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 545
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 547
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private updateDisplaySize()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v3, 0x1

    .line 438
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/TemplateActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 439
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mScreenHeight:I

    sput v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    .line 440
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mScreenWidth:I

    sput v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_WIDTH:I

    .line 441
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 442
    .local v1, orientation:I
    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mIsScreenPortrait:Z

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 242
    iget v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v2, :cond_3

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense2/album/DisplayManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 254
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/DisplayManager;->isBlockSystemEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 265
    iget v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense2/album/DisplayManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 269
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/DisplayManager;->isBlockSystemEvent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 279
    iget v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense2/album/DisplayManager;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 283
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/DisplayManager;->isBlockSystemEvent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 449
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    .line 454
    new-instance v1, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/opensense2/album/TemplateActivityBase;Lcom/htc/opensense2/album/TemplateActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    sget-object v1, Lcom/htc/opensense2/album/TemplateActivityBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Register broadcast"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 500
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 424
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 415
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mScreenWidth:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 508
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x3

    .line 512
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    goto :goto_0
.end method

.method public handleActivityMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 194
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenPortrait()Z
    .locals 1

    .prologue
    .line 433
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mIsScreenPortrait:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 347
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    sget-object v0, Lcom/htc/opensense2/album/TemplateActivityBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][TemplateActivityBase][onActivityResult]:..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/DisplayManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 352
    return-void
.end method

.method public onBindingContentObserver(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    .local p1, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    return-void
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 481
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 369
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->updateDisplaySize()V

    .line 377
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v0, :cond_1

    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/DisplayManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onContentDataChange(Z)Z
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 530
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 157
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->updateDisplaySize()V

    .line 162
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onCreateDisplayManager()V

    .line 164
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->bindContentObserver()V

    .line 166
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/DisplayManager;->setActivityListener(Lcom/htc/opensense2/album/TemplateActivityInterface;)V

    .line 167
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 359
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/DisplayManager;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateDisplayManager()V
    .locals 1

    .prologue
    .line 150
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    new-instance v0, Lcom/htc/opensense2/album/DisplayManager;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/DisplayManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 174
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    .line 177
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/DisplayManager;->onDestroy()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mObserver:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;

    .line 185
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 199
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v1, :cond_0

    .line 200
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense2/album/DisplayManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 204
    .local v0, bret:Z
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 406
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 394
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 213
    iget v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/DisplayManager;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 217
    .local v0, bret:Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 321
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    .line 323
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/DisplayManager;->onPause()V

    .line 324
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 227
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 229
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 231
    iget-object v1, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/DisplayManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 232
    .local v0, bret:Z
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 332
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/DisplayManager;->onResume()V

    .line 335
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    .line 338
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 293
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/DisplayManager;->onStart()V

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->enableBroadcastReceiver()V

    .line 297
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 298
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 305
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I

    .line 306
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/DisplayManager;->onStop()V

    .line 312
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 313
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 4
    .parameter "bFullscreen"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>;"
    const/16 v1, 0x400

    .line 488
    invoke-virtual {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 489
    .local v0, win:Landroid/view/Window;
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 494
    :goto_0
    sget-object v1, Lcom/htc/opensense2/album/TemplateActivityBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setFullscreen]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 492
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
