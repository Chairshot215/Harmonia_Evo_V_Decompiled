.class Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerFactory"
.end annotation


# instance fields
.field private mClosed:Z

.field private final mName:Ljava/lang/String;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mName:Ljava/lang/String;

    .line 968
    iput p2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mPriority:I

    .line 969
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/htc/android/rosie/home/HostWidgetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 960
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized open()V
    .locals 3

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 973
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mPriority:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    .line 974
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_0
    monitor-exit p0

    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 1

    .prologue
    .line 980
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    :cond_0
    monitor-exit p0

    return-void

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 989
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mClosed:Z

    if-eqz v1, :cond_0

    .line 992
    :goto_0
    return-object v0

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->open()V

    .line 992
    new-instance v1, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;

    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Lcom/htc/android/rosie/home/HostWidgetManager$1;)V

    move-object v0, v1

    goto :goto_0
.end method
