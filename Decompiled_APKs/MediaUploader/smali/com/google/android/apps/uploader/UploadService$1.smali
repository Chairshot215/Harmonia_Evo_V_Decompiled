.class Lcom/google/android/apps/uploader/UploadService$1;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Lcom/google/android/apps/uploader/UploadConnector$UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/UploadService;->upload(Lcom/google/android/apps/uploader/UploadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/UploadService;

.field final synthetic val$info:Lcom/google/android/apps/uploader/UploadInfo;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    iput-object p2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadApplicationFailure(Lcom/google/android/apps/uploader/ApplicationException;)V
    .locals 4
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 375
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.applicationFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    sget-object v2, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/ApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$200(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$900(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/RetryPolicy;->reset()V

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$500(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadNetworkFailure(Lcom/google/android/apps/uploader/NetworkException;)V
    .locals 6
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 338
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.networkFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z
    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->access$700(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z
    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->access$800(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/RetryPolicy;->incrementRetryInterval()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget-object v2, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_TO_RETRY:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/RetryPolicy;->getRetryIntervalResourceId()I

    move-result v3

    .line 346
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$200(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$900(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #calls: Lcom/google/android/apps/uploader/UploadService;->cancelCurrentUpload()V
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$1000(Lcom/google/android/apps/uploader/UploadService;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$500(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 351
    :cond_2
    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    .line 352
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/RetryPolicy;->reset()V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/RetryPolicy;->waitIndefinitely()V

    .line 359
    sget-object v1, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_TO_RETRY:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    .line 360
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadProgress(J)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/android/apps/uploader/UploadService;->lastProgressUpdate:J
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadService;->access$102(Lcom/google/android/apps/uploader/UploadService;J)J

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/UploadInfo;->setBytesUploaded(J)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$200(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadsQueue;->updateProgress(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->progressListener:Lcom/google/android/apps/uploader/UploadService$ProgressListener;
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$300(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadService$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->progressListener:Lcom/google/android/apps/uploader/UploadService$ProgressListener;
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$300(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadService$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getPercentageUploaded()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/UploadService$ProgressListener;->progressUpdated(I)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/RetryPolicy;->reset()V

    .line 309
    return-void
.end method

.method public onUploadRetry()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 325
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.retry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/uploader/UploadService;->secondChance:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/UploadService;->access$602(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/UploadInfo;->setBytesUploaded(J)V

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/RetryPolicy;->reset()V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$500(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadSuccess()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    .line 313
    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.uploadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    sget-object v2, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->COMPLETED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$200(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/RetryPolicy;->reset()V

    .line 319
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$1;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->access$500(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 320
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
