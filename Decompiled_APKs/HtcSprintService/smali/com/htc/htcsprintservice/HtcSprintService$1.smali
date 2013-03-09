.class Lcom/htc/htcsprintservice/HtcSprintService$1;
.super Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;
.source "HtcSprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsprintservice/HtcSprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsprintservice/HtcSprintService;


# direct methods
.method constructor <init>(Lcom/htc/htcsprintservice/HtcSprintService;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    invoke-direct {p0}, Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/htcsprintservice/HtcSprintService;->access$100(Lcom/htc/htcsprintservice/HtcSprintService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 54
    new-instance v2, Lcom/htc/htcsprintservice/HtcSprintService$1$1;

    invoke-direct {v2, p0}, Lcom/htc/htcsprintservice/HtcSprintService$1$1;-><init>(Lcom/htc/htcsprintservice/HtcSprintService$1;)V

    .line 71
    .local v2, t:Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
    iget-object v3, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/htcsprintservice/HtcSprintService;->access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 72
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->setID(I)V

    .line 73
    invoke-virtual {v2}, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v3, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/htcsprintservice/HtcSprintService;->access$200(Lcom/htc/htcsprintservice/HtcSprintService;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;->getStrResult()Ljava/lang/String;

    move-result-object v1

    .line 82
    monitor-exit v4

    move-object v3, v1

    .line 90
    .end local v2           #t:Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
    :goto_1
    return-object v3

    .line 77
    .restart local v2       #t:Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
    :catch_0
    move-exception v0

    .line 78
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v3, "HtcSpcService"

    const-string v5, "sync err"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 90
    .end local v2           #t:Lcom/htc/htcsprintservice/HtcSprintService$CmdThread;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public reboot()V
    .locals 4

    .prologue
    .line 36
    const-string v2, "HtcSpcService"

    const-string v3, "rfunc"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 38
    .local v1, uid:I
    iget-object v2, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    const/4 v3, 0x2

    #calls: Lcom/htc/htcsprintservice/HtcSprintService;->checkCallKey(II)Z
    invoke-static {v2, v3, v1}, Lcom/htc/htcsprintservice/HtcSprintService;->access$000(Lcom/htc/htcsprintservice/HtcSprintService;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    const-string v2, "HtcSpcService"

    const-string v3, "wrong key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v2, "HtcSpcService"

    const-string v3, "excute rfunc"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/htc/htcsprintservice/HtcSprintService$1;->this$0:Lcom/htc/htcsprintservice/HtcSprintService;

    #getter for: Lcom/htc/htcsprintservice/HtcSprintService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htcsprintservice/HtcSprintService;->access$100(Lcom/htc/htcsprintservice/HtcSprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "oem-13"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
