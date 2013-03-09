.class Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;
.super Ljava/lang/Thread;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActualMovingThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mCanceled:Z

    .line 445
    iput-object p2, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 446
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 447
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MoveContactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 448
    return-void
.end method

.method private isSearchDialogActived()Landroid/app/SearchManager;
    .locals 4

    .prologue
    .line 656
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/MoveContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 657
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-object v1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MoveContactsActivity"

    const-string v3, "IllegalArgumentException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 662
    :catch_1
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MoveContactsActivity"

    const-string v3, "IllegalStateException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mCanceled:Z

    .line 633
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 629
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->cancel()V

    .line 637
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity;->finish()V

    .line 640
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v0

    .line 645
    .local v0, searchManager:Landroid/app/SearchManager;
    if-eqz v0, :cond_0

    .line 646
    const-string v1, "MoveContactsActivity"

    const-string v2, "ActualMovingThread.onDismiss, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v1}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 652
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 44

    .prologue
    .line 452
    const/16 v40, 0x1

    .line 453
    .local v40, shouldCallFinish:Z
    const/4 v5, 0x0

    .line 454
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "contact_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "display_name"

    aput-object v3, v4, v2

    .line 455
    .local v4, rawContactsProjection:[Ljava/lang/String;
    const/16 v34, 0x0

    .line 458
    .local v34, mSourceRawContactsId:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$300(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$300(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    .line 460
    .local v20, accountCount:Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND deleted = \'0\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "data_set IS NULL "

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 475
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 476
    if-nez v34, :cond_4

    .line 477
    const-string v2, "MoveContactsActivity"

    const-string v3, "mSourceRawContactsId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 606
    if-eqz v34, :cond_0

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .local v39, searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_1c

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    :goto_1
    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 622
    .end local v20           #accountCount:Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_1
    :goto_2
    return-void

    .line 460
    .restart local v20       #accountCount:Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_set = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 468
    .end local v20           #accountCount:Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
    :cond_3
    const-string v2, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFromAccountIndex is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/MoveContactsActivity;->access$300(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 481
    .restart local v20       #accountCount:Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
    :cond_4
    :try_start_1
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v41

    .line 482
    .local v41, size:I
    if-eqz v41, :cond_5

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_9

    .line 484
    :cond_5
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 488
    :goto_3
    const/16 v34, 0x0

    .line 606
    if-eqz v34, :cond_6

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_1d

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 485
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :catch_0
    move-exception v24

    .line 486
    .local v24, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v2, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteException on Cursor#close(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 488
    .end local v24           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    const/16 v34, 0x0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 606
    .end local v41           #size:I
    :catchall_1
    move-exception v2

    if-eqz v34, :cond_7

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_1b

    .line 615
    const-string v3, "MoveContactsActivity"

    const-string v6, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 606
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_8
    :goto_4
    throw v2

    .line 493
    .restart local v41       #size:I
    :cond_9
    :try_start_5
    const-string v2, "_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 495
    .local v33, mIdColumn:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 497
    :goto_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_23

    .line 498
    const-wide/16 v12, -0x1

    .local v12, pid:J
    const-wide/16 v14, -0x1

    .line 499
    .local v14, cid:J
    const/16 v26, 0x0

    .line 500
    .local v26, entityIterator:Landroid/content/EntityIterator;
    const/16 v29, 0x1

    .line 501
    .local v29, forceLink:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mCanceled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_b

    .line 606
    if-eqz v34, :cond_a

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_1e

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 504
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_b
    :try_start_6
    const-string v2, "display_name"

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 505
    .local v23, displayName:Ljava/lang/String;
    const-string v2, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing data for display name:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 509
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 510
    .local v37, rawContactId:Ljava/lang/String;
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 512
    const-string v5, "_id=?"

    .line 513
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v37, v10, v2

    .line 514
    .local v10, selectionArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 515
    .local v7, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v26

    .line 518
    if-nez v26, :cond_d

    .line 519
    const-string v2, "MoveContactsActivity"

    const-string v3, "EntityIterator is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 606
    if-eqz v34, :cond_c

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_1f

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 523
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_d
    :try_start_7
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 524
    const-string v2, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data does not exist. rawContactId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 606
    if-eqz v34, :cond_e

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_20

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 529
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_f
    :try_start_8
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v36, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    .line 531
    .local v21, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/MoveContactsActivity;->access$600(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 532
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/MoveContactsActivity;->access$600(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 533
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_10
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 536
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Entity;

    .line 538
    .local v25, entity:Landroid/content/Entity;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_11
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 539
    .local v35, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    .line 540
    .local v22, contentValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 541
    .local v32, key:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 545
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 546
    const/16 v29, 0x0

    .line 549
    :cond_12
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 550
    const-string v2, "data2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v42

    .line 551
    .local v42, type:I
    const/4 v2, 0x2

    move/from16 v0, v42

    if-ne v0, v2, :cond_13

    .line 552
    const/16 v29, 0x0

    .line 557
    .end local v42           #type:I
    :cond_13
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    .line 558
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 559
    const-string v2, "mimetype"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v43

    .line 562
    .local v43, valueset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_14
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 563
    .local v27, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 564
    .local v28, entrykey:Ljava/lang/String;
    const-string v2, "data_sync1"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "data_sync2"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "data_sync3"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "data_sync4"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "_id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 572
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 576
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 579
    .end local v27           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v28           #entrykey:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 582
    .end local v22           #contentValues:Landroid/content/ContentValues;
    .end local v25           #entity:Landroid/content/Entity;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v32           #key:Ljava/lang/String;
    .end local v35           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v43           #valueset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_16
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 585
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v38

    .line 586
    .local v38, results:[Landroid/content/ContentProviderResult;
    if-eqz v38, :cond_17

    move-object/from16 v0, v38

    array-length v2, v0

    if-lez v2, :cond_17

    .line 587
    const/4 v2, 0x0

    aget-object v2, v38, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 588
    const-string v2, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One contact inserted, uri:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, v38, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 598
    :cond_17
    if-eqz v29, :cond_18

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_18

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_18

    .line 599
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const/16 v16, 0x1

    const-wide/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->setAggregationException(JJIJLandroid/content/ContentResolver;)V
    invoke-static/range {v11 .. v19}, Lcom/android/htccontacts/MoveContactsActivity;->access$1100(Lcom/android/htccontacts/MoveContactsActivity;JJIJLandroid/content/ContentResolver;)V

    .line 602
    :cond_18
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_5

    .line 590
    .end local v38           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v24

    .line 591
    .local v24, e:Landroid/os/RemoteException;
    const-string v2, "MoveContactsActivity"

    const-string v3, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual/range {v24 .. v24}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 606
    if-eqz v34, :cond_19

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_19

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_21

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 593
    .end local v24           #e:Landroid/os/RemoteException;
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :catch_2
    move-exception v24

    .line 594
    .local v24, e:Landroid/content/OperationApplicationException;
    :try_start_b
    const-string v2, "MoveContactsActivity"

    const-string v3, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual/range {v24 .. v24}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 606
    if-eqz v34, :cond_1a

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_22

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 618
    .end local v7           #uri:Landroid/net/Uri;
    .end local v10           #selectionArgs:[Ljava/lang/String;
    .end local v12           #pid:J
    .end local v14           #cid:J
    .end local v21           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v23           #displayName:Ljava/lang/String;
    .end local v24           #e:Landroid/content/OperationApplicationException;
    .end local v26           #entityIterator:Landroid/content/EntityIterator;
    .end local v29           #forceLink:Z
    .end local v33           #mIdColumn:I
    .end local v36           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v37           #rawContactId:Ljava/lang/String;
    .end local v41           #size:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    :goto_8
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .restart local v41       #size:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    .restart local v12       #pid:J
    .restart local v14       #cid:J
    .restart local v26       #entityIterator:Landroid/content/EntityIterator;
    .restart local v29       #forceLink:Z
    .restart local v33       #mIdColumn:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v10       #selectionArgs:[Ljava/lang/String;
    .restart local v23       #displayName:Ljava/lang/String;
    .restart local v37       #rawContactId:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    .restart local v21       #builder:Landroid/content/ContentProviderOperation$Builder;
    .local v24, e:Landroid/os/RemoteException;
    .restart local v36       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    .local v24, e:Landroid/content/OperationApplicationException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_8

    .line 606
    .end local v7           #uri:Landroid/net/Uri;
    .end local v10           #selectionArgs:[Ljava/lang/String;
    .end local v12           #pid:J
    .end local v14           #cid:J
    .end local v21           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v23           #displayName:Ljava/lang/String;
    .end local v24           #e:Landroid/content/OperationApplicationException;
    .end local v26           #entityIterator:Landroid/content/EntityIterator;
    .end local v29           #forceLink:Z
    .end local v36           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v37           #rawContactId:Ljava/lang/String;
    .end local v39           #searchManager:Landroid/app/SearchManager;
    :cond_23
    if-eqz v34, :cond_24

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_24

    .line 607
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v39

    .line 614
    .restart local v39       #searchManager:Landroid/app/SearchManager;
    if-eqz v39, :cond_25

    .line 615
    const-string v2, "MoveContactsActivity"

    const-string v3, "ActualMovingThread.run() finally, Search dialog is still activity, do not destroy ExportVCardActivity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/MoveContactsActivity;->access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_1

    .line 618
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto/16 :goto_8
.end method
