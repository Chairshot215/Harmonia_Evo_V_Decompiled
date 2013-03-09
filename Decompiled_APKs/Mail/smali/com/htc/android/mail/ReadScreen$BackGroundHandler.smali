.class public Lcom/htc/android/mail/ReadScreen$BackGroundHandler;
.super Landroid/os/Handler;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackGroundHandler"
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5398
    sput-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->sLooper:Landroid/os/Looper;

    .line 5399
    sput-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 5423
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5424
    return-void
.end method

.method private static getBackGroundLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 5402
    sget-object v1, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 5403
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackGroundHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5404
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5406
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->sLooper:Landroid/os/Looper;

    .line 5408
    :cond_0
    sget-object v1, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->sLooper:Landroid/os/Looper;

    return-object v1
.end method

.method public static getInstance()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 5412
    sget-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5413
    const-class v1, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;

    monitor-enter v1

    .line 5414
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 5415
    new-instance v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;

    invoke-static {}, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->getBackGroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->mHandler:Landroid/os/Handler;

    .line 5417
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5419
    :cond_1
    sget-object v0, Lcom/htc/android/mail/ReadScreen$BackGroundHandler;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 5417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
