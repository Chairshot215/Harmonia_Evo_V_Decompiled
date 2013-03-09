.class public Lcom/google/android/gm/UiHandler;
.super Ljava/lang/Object;
.source "UiHandler.java"


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/UiHandler;->mHandler:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/UiHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    return v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 32
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/UiHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/UiHandler$1;-><init>(Lcom/google/android/gm/UiHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "UiHandler is disabled in post(). Dropping Runnable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 47
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/UiHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/UiHandler$2;-><init>(Lcom/google/android/gm/UiHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "UiHandler is disabled in postDelayed(). Dropping Runnable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/UiHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    .line 65
    iget-boolean v1, p0, Lcom/google/android/gm/UiHandler;->mEnabled:Z

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 67
    .local v0, count:I
    if-lez v0, :cond_0

    .line 68
    const-string v1, "Gmail"

    const-string v2, "Disable UiHandler. Dropping %d Runnables."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/UiHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    .end local v0           #count:I
    :cond_1
    return-void
.end method
