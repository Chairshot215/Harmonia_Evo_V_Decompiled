.class public Lcom/htc/fusion/fx/FxView;
.super Landroid/widget/FrameLayout;
.source "FxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxView$FxSurfaceView;,
        Lcom/htc/fusion/fx/FxView$UiThreadDispose;
    }
.end annotation


# instance fields
.field private mDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

.field private mViewObject:Lcom/htc/fusion/fx/FxViewObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/fusion/fx/FxView;->initialize(ZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/fusion/fx/FxView;->initialize(ZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/fusion/fx/FxView;->initialize(ZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/fusion/fx/FxView;->initialize(ZIZ)V

    return-void
.end method

.method static synthetic access$001(Lcom/htc/fusion/fx/FxView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/fusion/fx/FxView;Lcom/htc/fusion/fx/FxViewObject;)Lcom/htc/fusion/fx/FxViewObject;
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object p1
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Unknown application"

    goto :goto_0
.end method

.method private initLivePreview(ZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/fusion/fx/FxViewObject;->initLivePreviewHost(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fusion/fx/FxView;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setLivePreviewDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initialize(ZIZ)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/fusion/fx/FxView;->mDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-direct {v0, v1, v2}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxViewObject;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxView;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fusion/fx/FxView;->initLivePreview(ZIZ)V

    return-void
.end method


# virtual methods
.method public addScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    :cond_0
    return-void
.end method

.method public createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, p1, p2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, p1, p2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 5

    iget-object v2, p0, Lcom/htc/fusion/fx/FxView;->mDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/FxView$UiThreadDispose;-><init>(Lcom/htc/fusion/fx/FxView;)V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->run()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-class v2, Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/htc/fusion/fx/FxView;

    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxView;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxViewObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getViewObject()Lcom/htc/fusion/fx/FxViewObject;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxViewObject;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->pause()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    :cond_0
    return-void
.end method

.method public perfReportsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->perfReportsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 1

    new-instance v0, Lcom/htc/fusion/fx/FxView$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/FxView$1;-><init>(Lcom/htc/fusion/fx/FxView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    :cond_0
    return-void
.end method

.method protected resetJavaView()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-static {}, Lcom/htc/fusion/fx/controls/FxListView;->resume()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    :cond_0
    return-void
.end method

.method public setClearColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->setClearColor(I)V

    :cond_0
    return-void
.end method

.method public setFormat(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    if-eqz v0, :cond_0

    const-string v0, "mode10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxView.setFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->setFormat(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    if-eqz v0, :cond_0

    const-string v0, "mode10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxView.setVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public waitForLivePreviewConnected()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->waitForLivePreviewConnected()V

    :cond_0
    return-void
.end method

.method public writePerfReport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->writePerfReport(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
