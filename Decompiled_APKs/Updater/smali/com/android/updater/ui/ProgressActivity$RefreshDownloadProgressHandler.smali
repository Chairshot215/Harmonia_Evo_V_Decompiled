.class Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;
.super Landroid/os/Handler;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDownloadProgressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/ProgressActivity;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/ProgressActivity;Lcom/android/updater/ui/ProgressActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;-><init>(Lcom/android/updater/ui/ProgressActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    .line 369
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10}, Lcom/android/updater/ui/ProgressActivity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 538
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v10, "com.android.updater.VERIFY_FOTA_PKG"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Lcom/android/updater/ui/ProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 385
    .local v5, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$400(Lcom/android/updater/ui/ProgressActivity;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 386
    :try_start_0
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    .line 387
    const-string v10, "UpdaterAPK | ProgressActivity"

    const-string v12, "In Hander: No download record!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v11

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 392
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 393
    .local v7, nCurStatus:I
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #setter for: Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I
    invoke-static {v10, v7}, Lcom/android/updater/ui/ProgressActivity;->access$702(Lcom/android/updater/ui/ProgressActivity;I)I

    .line 394
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v12, 0x3

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 395
    .local v8, nTotal:I
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v12, 0x2

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 396
    .local v6, nCur:I
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v12, 0x4

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, filePath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v12, 0x5

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 403
    .local v1, destination:I
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 408
    const/4 v5, 0x0

    .line 412
    :cond_2
    if-nez v5, :cond_3

    .line 414
    if-ne v8, v6, :cond_7

    if-nez v8, :cond_7

    .line 415
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 416
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$900(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 430
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 432
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 434
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060009

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 468
    :cond_4
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const/4 v11, 0x1

    #calls: Lcom/android/updater/ui/ProgressActivity;->setOkBtnCenter(Z)V
    invoke-static {v10, v11}, Lcom/android/updater/ui/ProgressActivity;->access$1200(Lcom/android/updater/ui/ProgressActivity;Z)V

    .line 517
    :goto_2
    if-nez v5, :cond_15

    .line 519
    const-string v9, ""

    .line 521
    .local v9, strMsg:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1900(Lcom/android/updater/ui/ProgressActivity;)I

    move-result v10

    if-lez v10, :cond_5

    .line 522
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1900(Lcom/android/updater/ui/ProgressActivity;)I

    move-result v8

    .line 523
    if-le v6, v8, :cond_5

    .line 524
    move v6, v8

    .line 528
    :cond_5
    if-lez v8, :cond_6

    .line 529
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v11, v8

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Lcom/android/updater/util/UpdaterUtil;->getPercentageText(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 531
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #calls: Lcom/android/updater/ui/ProgressActivity;->getMBsize(I)Ljava/lang/String;
    invoke-static {v11, v6}, Lcom/android/updater/ui/ProgressActivity;->access$2000(Lcom/android/updater/ui/ProgressActivity;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    if-gtz v8, :cond_14

    const/4 v10, -0x1

    :goto_3
    #calls: Lcom/android/updater/ui/ProgressActivity;->getMBsize(I)Ljava/lang/String;
    invoke-static {v12, v10}, Lcom/android/updater/ui/ProgressActivity;->access$2000(Lcom/android/updater/ui/ProgressActivity;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 532
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$2100(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .end local v9           #strMsg:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 399
    .end local v1           #destination:I
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #nCur:I
    .end local v7           #nCurStatus:I
    .end local v8           #nTotal:I
    :catch_0
    move-exception v2

    .line 400
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v10, "UpdaterAPK | ProgressActivity"

    const-string v12, "RefreshDownloadProgressHandler failed!"

    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 419
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #destination:I
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v6       #nCur:I
    .restart local v7       #nCurStatus:I
    .restart local v8       #nTotal:I
    :cond_7
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 420
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$900(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 421
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 422
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 423
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    goto/16 :goto_1

    .line 435
    :cond_8
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #calls: Lcom/android/updater/ui/ProgressActivity;->isDownloadStorageError(I)Z
    invoke-static {v10, v7}, Lcom/android/updater/ui/ProgressActivity;->access$1100(Lcom/android/updater/ui/ProgressActivity;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.server.checkin.FOTA_READY"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, alertIntent:Landroid/content/Intent;
    if-nez v1, :cond_9

    .line 441
    const-string v10, "storage_error"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    :goto_5
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10, v0}, Lcom/android/updater/ui/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    goto/16 :goto_0

    .line 443
    :cond_9
    const-string v10, "generic_error"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 449
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_a
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x1e7

    if-ne v7, v10, :cond_b

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.server.checkin.FOTA_READY"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v10, "apn_error"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10, v0}, Lcom/android/updater/ui/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    goto/16 :goto_0

    .line 458
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_b
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.server.checkin.FOTA_READY"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v0       #alertIntent:Landroid/content/Intent;
    const-string v10, "generic_error"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10, v0}, Lcom/android/updater/ui/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v10}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    goto/16 :goto_0

    .line 476
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_c
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1300(Lcom/android/updater/ui/ProgressActivity;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 479
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1400(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const v12, 0x7f060056

    invoke-virtual {v11, v12}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 482
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060085

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 514
    :goto_6
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-virtual {v11}, Lcom/android/updater/ui/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v11

    #calls: Lcom/android/updater/ui/ProgressActivity;->setOkBtnCenter(Z)V
    invoke-static {v10, v11}, Lcom/android/updater/ui/ProgressActivity;->access$1200(Lcom/android/updater/ui/ProgressActivity;Z)V

    goto/16 :goto_2

    .line 484
    :cond_d
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f06004a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 487
    :cond_e
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1300(Lcom/android/updater/ui/ProgressActivity;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 489
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 490
    :cond_f
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1500(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const v12, 0x7f060006

    invoke-virtual {v11, v12}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060008

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 495
    :cond_10
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1600(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const v12, 0x7f060056

    invoke-virtual {v11, v12}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 498
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060086

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 500
    :cond_11
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060079

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 505
    :cond_12
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1300(Lcom/android/updater/ui/ProgressActivity;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    invoke-static {v10}, Lcom/android/updater/util/UpdaterNetworkCheck;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 507
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1700(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const v12, 0x7f060056

    invoke-virtual {v11, v12}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060078

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 511
    :cond_13
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    const v12, 0x7f060006

    invoke-virtual {v11, v12}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #getter for: Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f060008

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .restart local v9       #strMsg:Ljava/lang/String;
    :cond_14
    move v10, v8

    .line 531
    goto/16 :goto_3

    .line 535
    .end local v9           #strMsg:Ljava/lang/String;
    :cond_15
    iget-object v10, p0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/ProgressActivity;

    #calls: Lcom/android/updater/ui/ProgressActivity;->SetVerifyState()V
    invoke-static {v10}, Lcom/android/updater/ui/ProgressActivity;->access$000(Lcom/android/updater/ui/ProgressActivity;)V

    goto/16 :goto_4
.end method
