.class Lcom/sprint/ce/updater/UpdaterService$4;
.super Ljava/lang/Thread;
.source "UpdaterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterService;->checkForUpdates(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterService;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    .line 336
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->acquireWakeLock()V
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$5(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 341
    const/4 v1, 0x1

    .line 342
    .local v1, gotSession:Z
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v4}, Lcom/sprint/ce/updater/DownloadUtil;->requestDataSession(Landroid/content/Context;)Z

    move-result v1

    .line 346
    :cond_0
    if-eqz v1, :cond_1

    .line 347
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$13(Lcom/sprint/ce/updater/UpdaterService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v6}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sprint/ce/updater/DownloadUtil;->checkForUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ce/updater/Response;

    move-result-object v3

    .line 348
    .local v3, r:Lcom/sprint/ce/updater/Response;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 349
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$14(Lcom/sprint/ce/updater/UpdaterService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sprint/ce/updater/Response;->getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->performBroadcast(Ljava/util/List;)V
    invoke-static {v4, v2}, Lcom/sprint/ce/updater/UpdaterService;->access$15(Lcom/sprint/ce/updater/UpdaterService;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    .end local v3           #r:Lcom/sprint/ce/updater/Response;
    :cond_1
    invoke-static {v7}, Lcom/sprint/ce/updater/UpdaterService;->access$8(Z)V

    .line 359
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$10(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 360
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v4}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 362
    :cond_2
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #setter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/sprint/ce/updater/UpdaterService;->access$11(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V

    .line 363
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$12(Lcom/sprint/ce/updater/UpdaterService;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    .line 365
    .end local v1           #gotSession:Z
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "SprintUpdater"

    const-string v5, "unexpected runtime exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-static {v7}, Lcom/sprint/ce/updater/UpdaterService;->access$8(Z)V

    .line 359
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$10(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 360
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v4}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v4}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 362
    :cond_3
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #setter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/sprint/ce/updater/UpdaterService;->access$11(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V

    .line 363
    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$12(Lcom/sprint/ce/updater/UpdaterService;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 358
    invoke-static {v7}, Lcom/sprint/ce/updater/UpdaterService;->access$8(Z)V

    .line 359
    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$10(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 360
    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z
    invoke-static {v5}, Lcom/sprint/ce/updater/UpdaterService;->access$3(Lcom/sprint/ce/updater/UpdaterService;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    invoke-static {v5}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 362
    :cond_4
    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #setter for: Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/sprint/ce/updater/UpdaterService;->access$11(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V

    .line 363
    iget-object v5, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterService$4;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #getter for: Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I
    invoke-static {v6}, Lcom/sprint/ce/updater/UpdaterService;->access$12(Lcom/sprint/ce/updater/UpdaterService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    .line 364
    throw v4
.end method
