.class Lcom/sprint/ce/updater/UpdaterService$3;
.super Ljava/lang/Thread;
.source "UpdaterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterService;->runUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterService;

.field private final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iput p2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->val$startId:I

    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->startAbortTimer()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$2(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->acquireWakeLock()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$5(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 125
    const/4 v1, 0x1

    .line 126
    .local v1, gotSession:Z
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v3}, Lcom/sprint/ce/updater/DeviceUtil;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v3

    #setter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v2, v3}, Lcom/sprint/ce/updater/UpdaterService;->access$6(Lcom/sprint/ce/updater/UpdaterService;Z)V

    .line 127
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v2}, Lcom/sprint/ce/updater/DownloadUtil;->requestDataSession(Landroid/content/Context;)Z

    move-result v1

    .line 131
    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->performUpdateCheck()Z
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$7(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-virtual {v2}, Lcom/sprint/ce/updater/UpdaterService;->downloadAndInstallUpdates()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-virtual {v2}, Lcom/sprint/ce/updater/UpdaterService;->updateLastUpdateTimestamp()V

    .line 136
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$8(Z)V

    .line 137
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget v3, p0, Lcom/sprint/ce/updater/UpdaterService$3;->val$startId:I

    #calls: Lcom/sprint/ce/updater/UpdaterService;->reschedule(I)V
    invoke-static {v2, v3}, Lcom/sprint/ce/updater/UpdaterService;->access$9(Lcom/sprint/ce/updater/UpdaterService;I)V

    .line 138
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$10(Lcom/sprint/ce/updater/UpdaterService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v2}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->cancelAbortTimer()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$4(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 154
    .end local v1           #gotSession:Z
    :goto_1
    return-void

    .line 143
    .restart local v1       #gotSession:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->handleFailedAttempt()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$0(Lcom/sprint/ce/updater/UpdaterService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    .end local v1           #gotSession:Z
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Throwable;
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$8(Z)V

    .line 147
    const-string v2, "SprintUpdater"

    const-string v3, "unexpected runtime exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->handleFailedAttempt()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$0(Lcom/sprint/ce/updater/UpdaterService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v2}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->cancelAbortTimer()V
    invoke-static {v2}, Lcom/sprint/ce/updater/UpdaterService;->access$4(Lcom/sprint/ce/updater/UpdaterService;)V

    goto :goto_1

    .line 149
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 150
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v3}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v3}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterService$3;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->cancelAbortTimer()V
    invoke-static {v3}, Lcom/sprint/ce/updater/UpdaterService;->access$4(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 153
    throw v2
.end method
