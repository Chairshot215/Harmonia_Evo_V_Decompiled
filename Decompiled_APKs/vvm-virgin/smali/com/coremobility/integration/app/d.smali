.class final Lcom/coremobility/integration/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    sget-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/e;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->c()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/coremobility/integration/app/d;->a:Z

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->c()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/app/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
