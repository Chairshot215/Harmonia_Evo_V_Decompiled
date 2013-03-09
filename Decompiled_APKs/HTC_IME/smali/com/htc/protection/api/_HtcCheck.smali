.class public Lcom/htc/protection/api/_HtcCheck;
.super Lcom/htc/protection/api/ProEngine$ProInvocationHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "com.htc.util.htcresutil.resutil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method load()V
    .locals 0

    return-void
.end method

.method declared-synchronized unload()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
