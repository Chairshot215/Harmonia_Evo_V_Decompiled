.class public Lcom/android/browser/BackgroundHandler;
.super Ljava/lang/Object;
.source "BackgroundHandler.java"


# static fields
.field static mThreadPool:Ljava/util/concurrent/ExecutorService;

.field static sLooperThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    .line 31
    sget-object v0, Lcom/android/browser/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BackgroundHandler;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 36
    sget-object v0, Lcom/android/browser/BackgroundHandler;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method public static getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/browser/BackgroundHandler;->sLooperThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
