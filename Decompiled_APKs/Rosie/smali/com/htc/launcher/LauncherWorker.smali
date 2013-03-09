.class public Lcom/htc/launcher/LauncherWorker;
.super Landroid/os/Handler;
.source "LauncherWorker.java"


# static fields
.field private static s_Instance:Lcom/htc/launcher/LauncherWorker;

.field private static s_WorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LauncherWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/LauncherWorker;->s_WorkerThread:Landroid/os/HandlerThread;

    .line 13
    sget-object v0, Lcom/htc/launcher/LauncherWorker;->s_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/launcher/LauncherWorker;->s_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/LauncherWorker;->LOG_TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static get()Lcom/htc/launcher/LauncherWorker;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/launcher/LauncherWorker;->s_Instance:Lcom/htc/launcher/LauncherWorker;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/htc/launcher/LauncherWorker;

    invoke-direct {v0}, Lcom/htc/launcher/LauncherWorker;-><init>()V

    sput-object v0, Lcom/htc/launcher/LauncherWorker;->s_Instance:Lcom/htc/launcher/LauncherWorker;

    .line 25
    :cond_0
    sget-object v0, Lcom/htc/launcher/LauncherWorker;->s_Instance:Lcom/htc/launcher/LauncherWorker;

    return-object v0
.end method
