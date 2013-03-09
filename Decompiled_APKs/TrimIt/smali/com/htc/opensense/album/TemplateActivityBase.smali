.class public abstract Lcom/htc/opensense/album/TemplateActivityBase;
.super Landroid/app/Activity;
.source "TemplateActivityBase.java"

# interfaces
.implements Lcom/htc/opensense/album/TemplateActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/TemplateActivityBase$1;,
        Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;,
        Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Landroid/app/Activity;",
        "Lcom/htc/opensense/album/TemplateActivityInterface;"
    }
.end annotation


# static fields
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

.field protected mDispMgr:Lcom/htc/opensense/album/DisplayManager;

.field private mEnableBroadcaseReceiver:Z

.field private mEnableOrientationMonitor:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIsScreenPortrait:Z

.field private mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 459
    new-instance v0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    .line 463
    iput v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    .line 464
    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableOrientationMonitor:Z

    .line 465
    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    .line 466
    iput-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/TemplateActivityBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    return v0
.end method

.method private updateDisplaySize()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v3, 0x1

    .line 369
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 370
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenHeight:I

    sput v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    .line 371
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenWidth:I

    sput v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_WIDTH:I

    .line 372
    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 373
    .local v1, orientation:I
    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mIsScreenPortrait:Z

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected DUMMYADATER(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    .local p1, adapter:Landroid/widget/BaseAdapter;,"TADAPTER;"
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 190
    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 195
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/DisplayManager;->isBlockSystemEvent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 205
    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 210
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/DisplayManager;->isBlockSystemEvent()Z

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
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 220
    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 225
    .local v0, bret:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/DisplayManager;->isBlockSystemEvent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 380
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    .line 385
    new-instance v1, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/album/TemplateActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public enableOrientationMonitor(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 413
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iput-boolean p1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableOrientationMonitor:Z

    .line 414
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 433
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 355
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 346
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenWidth:I

    return v0
.end method

.method public getSensorOrientaion()I
    .locals 1

    .prologue
    .line 406
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->getCurrentOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 439
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    return v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 151
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenPortrait()Z
    .locals 1

    .prologue
    .line 364
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mIsScreenPortrait:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 302
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/DisplayManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 423
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 323
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->updateDisplaySize()V

    .line 331
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v0, :cond_1

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/DisplayManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 116
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 120
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDefaultBitmapColorDepth(I)V

    .line 122
    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->updateDisplaySize()V

    .line 124
    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onCreateDisplayManager()V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/DisplayManager;->setActivityListener(Lcom/htc/opensense/album/TemplateActivityInterface;)V

    .line 127
    new-instance v0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x139b

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense/album/util/OrientationSensorMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 313
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/DisplayManager;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateDisplayManager()V
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    new-instance v0, Lcom/htc/opensense/album/DisplayManager;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/DisplayManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 135
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    .line 138
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onDestroy()V

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 159
    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense/album/DisplayManager;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 164
    .local v0, bret:Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 264
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    .line 269
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onPause()V

    .line 270
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 173
    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 179
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 180
    .local v0, bret:Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 278
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onResume()V

    .line 285
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    .line 288
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 235
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onStart()V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->enableBroadcastReceiver()V

    .line 239
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 240
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 248
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    .line 249
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/TemplateActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onStop()V

    .line 255
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 256
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 291
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>;"
    const-string v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::onWindowFocusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/DisplayManager;->onWindowFocusChanged(Z)V

    .line 294
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 295
    return-void
.end method

.method public abstract setFullscreen(Z)V
.end method
