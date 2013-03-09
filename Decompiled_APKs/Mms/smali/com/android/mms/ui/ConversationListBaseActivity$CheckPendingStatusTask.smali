.class Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;
.super Landroid/os/AsyncTask;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckPendingStatusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field bInterrupted:Z

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3407
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3408
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->bInterrupted:Z

    .line 3409
    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->pauseRestore(Z)V

    .line 3410
    return-void
.end method


# virtual methods
.method checkBackupStatus()Z
    .locals 1

    .prologue
    .line 3434
    invoke-static {}, Lcom/android/mms/ui/BackupActivity;->isBackuping()Z

    move-result v0

    return v0
.end method

.method checkDBUpgradeStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3446
    sget-boolean v1, Lcom/android/mms/MmsApp;->mNeedToUpdateDate2:Z

    if-eqz v1, :cond_1

    .line 3447
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    if-nez v1, :cond_0

    .line 3448
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    new-instance v2, Lcom/android/mms/task/UpdateDate2Task;

    invoke-direct {v2}, Lcom/android/mms/task/UpdateDate2Task;-><init>()V

    iput-object v2, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    .line 3449
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->start()V

    .line 3451
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3452
    const/4 v0, 0x1

    .line 3458
    :cond_1
    :goto_0
    return v0

    .line 3454
    :cond_2
    sput-boolean v0, Lcom/android/mms/MmsApp;->mNeedToUpdateDate2:Z

    goto :goto_0
.end method

.method checkDeletingStatus()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3413
    const/4 v6, 0x0

    .line 3414
    .local v6, bProviderDeleting:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3416
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    const-string v2, "get-DeletingStatus"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3417
    .local v1, DELETING_STATUS_URI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3418
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3419
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3420
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3421
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v6, 0x1

    .line 3423
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3429
    .end local v1           #DELETING_STATUS_URI:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v0, "ConversationListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startDelete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    sget-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    or-int/2addr v0, v6

    return v0

    .restart local v1       #DELETING_STATUS_URI:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    move v6, v9

    .line 3421
    goto :goto_0

    .line 3425
    .end local v1           #DELETING_STATUS_URI:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 3426
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method checkRestoreStatus()Z
    .locals 1

    .prologue
    .line 3438
    invoke-static {}, Lcom/android/mms/ui/RestoreActivity;->isRestoring()Z

    move-result v0

    return v0
.end method

.method checkSeparatingStatus()Z
    .locals 1

    .prologue
    .line 3442
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isSeparating()Z

    move-result v0

    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 3477
    const-string v2, "ConversationListBaseActivity"

    const-string v3, "CheckPendingStatusTask >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const/4 v0, 0x0

    .line 3479
    .local v0, dlgtype:I
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->bInterrupted:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkDeletingStatus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkBackupStatus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkRestoreStatus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkSeparatingStatus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkDBUpgradeStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3480
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v2, :cond_1

    .line 3481
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkSeparatingStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3482
    const/4 v0, 0x1

    .line 3483
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 3496
    :cond_1
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3497
    :catch_0
    move-exception v1

    .line 3498
    .local v1, e:Ljava/lang/InterruptedException;
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->bInterrupted:Z

    .line 3499
    invoke-static {v4}, Lcom/android/mms/ui/RestoreActivity;->pauseRestore(Z)V

    goto :goto_0

    .line 3484
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkBackupStatus()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkRestoreStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3485
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkBackupStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    .line 3486
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3485
    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    .line 3487
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->checkDBUpgradeStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3488
    const/4 v0, 0x4

    .line 3489
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3491
    :cond_6
    const/4 v0, 0x5

    .line 3492
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3503
    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->bInterrupted:Z

    if-nez v2, :cond_8

    .line 3504
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->startQueryConversation()V

    .line 3506
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->startAsnycQueryCMAS()V

    .line 3511
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3404
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3516
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    .line 3517
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3541
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    .line 3542
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "CheckPendingStatusTask <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    return-void

    .line 3519
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3523
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3524
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3525
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3528
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3531
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3404
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
