.class Lcom/sprint/dsa/DsaSystem$5;
.super Ljava/lang/Thread;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaSystem;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem$5;->this$0:Lcom/sprint/dsa/DsaSystem;

    .line 468
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 470
    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 473
    :cond_0
    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    sget-object v1, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem$5;->this$0:Lcom/sprint/dsa/DsaSystem;

    #getter for: Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/DsaSystem;->access$0(Lcom/sprint/dsa/DsaSystem;)Lcom/sprint/dsa/DsaClient;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "DSS"

    const-string v2, "release ConnectionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    sget-object v1, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "done:CM-release"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
