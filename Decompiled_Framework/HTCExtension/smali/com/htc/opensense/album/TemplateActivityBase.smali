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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableOrientationMonitor:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    iput-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/TemplateActivityBase;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    return v0
.end method

.method private updateDisplaySize()V
    .locals 4

    const/4 v3, 0x1

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenHeight:I

    sput v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenWidth:I

    sput v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_WIDTH:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mIsScreenPortrait:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected DUMMYADATER(Landroid/widget/BaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

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

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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

    iget v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    new-instance v1, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/album/TemplateActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public enableOrientationMonitor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableOrientationMonitor:Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mScreenWidth:I

    return v0
.end method

.method public getSensorOrientaion()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

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

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    return v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScreenPortrait()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mIsScreenPortrait:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/DisplayManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->updateDisplaySize()V

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/DisplayManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

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

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDefaultBitmapColorDepth(I)V

    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->updateDisplaySize()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onCreateDisplayManager()V

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/DisplayManager;->setActivityListener(Lcom/htc/opensense/album/TemplateActivityInterface;)V

    new-instance v0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x139b

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense/album/util/OrientationSensorMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mOrientationMonitor:Lcom/htc/opensense/album/util/OrientationSensorMonitor;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

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

    new-instance v0, Lcom/htc/opensense/album/DisplayManager;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/DisplayManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

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

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense/album/DisplayManager;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

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

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/DisplayManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

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

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onStart()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mEnableBroadcaseReceiver:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->enableBroadcastReceiver()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mState:I

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/TemplateActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/DisplayManager;->onStop()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

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

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/DisplayManager;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public abstract setFullscreen(Z)V
.end method
