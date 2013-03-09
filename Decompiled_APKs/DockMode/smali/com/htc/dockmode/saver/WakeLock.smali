.class public Lcom/htc/dockmode/saver/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisableKeyguard:Z

.field private mWakeLock:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mWakeLock:Z

    .line 10
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mDisableKeyguard:Z

    .line 13
    iput-object p1, p0, Lcom/htc/dockmode/saver/WakeLock;->mActivity:Landroid/app/Activity;

    .line 14
    return-void
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mWakeLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mDisableKeyguard:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mDisableKeyguard:Z

    .line 43
    iget-object v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/dockmode/saver/WakeLock;->disableKeyguard(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static disableKeyguard(Landroid/view/Window;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Lcom/htc/dockmode/saver/WakeLock;->getWakeLockFlag()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    return-void
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mDisableKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mDisableKeyguard:Z

    .line 57
    iget-object v0, p0, Lcom/htc/dockmode/saver/WakeLock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/dockmode/saver/WakeLock;->enableKeyguard(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static enableKeyguard(Landroid/view/Window;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    .local v0, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 64
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    return-void
.end method

.method private static getWakeLockFlag()I
    .locals 1

    .prologue
    .line 69
    const/high16 v0, 0x68

    return v0
.end method


# virtual methods
.method public setWakeLock(Z)V
    .locals 3
    .parameter "hold"

    .prologue
    .line 17
    iget-boolean v2, p0, Lcom/htc/dockmode/saver/WakeLock;->mWakeLock:Z

    if-ne v2, p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 20
    :cond_0
    iput-boolean p1, p0, Lcom/htc/dockmode/saver/WakeLock;->mWakeLock:Z

    .line 21
    iget-object v2, p0, Lcom/htc/dockmode/saver/WakeLock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 22
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 24
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 25
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    iget-boolean v2, p0, Lcom/htc/dockmode/saver/WakeLock;->mWakeLock:Z

    if-eqz v2, :cond_2

    .line 30
    invoke-direct {p0}, Lcom/htc/dockmode/saver/WakeLock;->disableKeyguard()V

    goto :goto_0

    .line 27
    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/htc/dockmode/saver/WakeLock;->enableKeyguard()V

    goto :goto_0
.end method
