.class Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
.super Ljava/lang/Thread;
.source "ImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportSimContactsThread"
.end annotation


# instance fields
.field public doneCounts:I

.field mCanceled:Z

.field private mSDNTotalCount:I

.field mStop:Z

.field private mTotalCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/ImportSIMActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 312
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    .line 313
    const-string v0, "ImportSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 305
    iput-boolean v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mStop:Z

    .line 307
    iput v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    .line 308
    iput v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mSDNTotalCount:I

    .line 309
    iput v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    .line 314
    invoke-direct {p0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->init()V

    .line 315
    return-void
.end method

.method private convertIdToRecordNumber()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/android/htccontacts/ImportSIMActivity;->access$602(Lcom/android/htccontacts/ImportSIMActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 341
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$700(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 342
    sget-object v3, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$700(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 345
    .local v1, queryRecordNumUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 349
    .local v8, recordNumber:J
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$600(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v8           #recordNumber:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 355
    .end local v1           #queryRecordNumUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    .line 326
    .local v0, context:Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ImportSIMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 328
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ImportSIMActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 330
    return-void
.end method

.method private isRecordNumberSelected(Ljava/lang/Long;Z)Z
    .locals 3
    .parameter "number"
    .parameter "isSDN"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, rtn:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$600(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$600(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$800(Lcom/android/htccontacts/ImportSIMActivity;)[Z

    move-result-object v2

    if-nez v2, :cond_1

    .line 362
    const/4 v1, 0x1

    .line 372
    :cond_0
    :goto_1
    return v1

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$800(Lcom/android/htccontacts/ImportSIMActivity;)[Z

    move-result-object v2

    array-length v2, v2

    if-le v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$800(Lcom/android/htccontacts/ImportSIMActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-ne v2, p2, :cond_2

    .line 366
    const/4 v1, 0x1

    .line 367
    goto :goto_1

    .line 359
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ImportSIMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 334
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 322
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    .line 551
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 554
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 558
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->showSecondDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$200(Lcom/android/htccontacts/ImportSIMActivity;)V

    .line 562
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->setStop()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string v0, "ImportSIMActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 29

    .prologue
    .line 377
    const-string v2, "ImportSIMActivity"

    const-string v4, "start import SIM contacts..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 380
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->convertIdToRecordNumber()V

    .line 382
    const-string v2, "ImportSIMActivity"

    const-string v4, "Query SIM contacts..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->resolveIntent()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 385
    .local v3, uri:Landroid/net/Uri;
    const/16 v27, 0x0

    .line 387
    .local v27, simCursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/htccontacts/ImportSIMActivity;->access$900()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 392
    :goto_0
    const/16 v19, 0x1

    .line 393
    .local v19, last_result:I
    const/16 v18, 0x0

    .line 395
    .local v18, index:I
    if-eqz v27, :cond_5

    .line 396
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    .line 398
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 402
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mStop:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 403
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 404
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 405
    .local v20, record_number:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->isRecordNumberSelected(Ljava/lang/Long;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    const-string v2, "ImportSIMActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecordNumber: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is not selected"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 388
    .end local v18           #index:I
    .end local v19           #last_result:I
    .end local v20           #record_number:J
    :catch_0
    move-exception v16

    .line 389
    .local v16, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "ImportSIMActivity"

    const-string v4, "UnsupportedOperationException..."

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 537
    .end local v3           #uri:Landroid/net/Uri;
    .end local v16           #e:Ljava/lang/UnsupportedOperationException;
    .end local v27           #simCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 410
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v18       #index:I
    .restart local v19       #last_result:I
    .restart local v20       #record_number:J
    .restart local v27       #simCursor:Landroid/database/Cursor;
    :cond_0
    :try_start_3
    const-string v2, "ImportSIMActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecordNumber: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is selected, insert contact name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "name"

    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v2, "com.anddroid.contacts.sim"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    iget-object v4, v4, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, name:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, number:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, number1:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    const/4 v7, 0x0

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/ImportSIMActivity;->access$1000(Lcom/android/htccontacts/ImportSIMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 418
    .local v22, result:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_4

    .line 419
    move/from16 v19, v22

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    move/from16 v0, v22

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->getSaveToSimResultString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$1100(Lcom/android/htccontacts/ImportSIMActivity;I)Ljava/lang/String;

    move-result-object v17

    .line 421
    .local v17, error_msg:Ljava/lang/String;
    const-string v2, "ImportSIMActivity"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v2, 0x3

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    .line 433
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #number1:Ljava/lang/String;
    .end local v8           #email:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v17           #error_msg:Ljava/lang/String;
    .end local v20           #record_number:J
    .end local v22           #result:I
    :cond_1
    if-eqz v27, :cond_2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 434
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_2
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 444
    const-string v2, "ImportSIMActivity"

    const-string v4, "Query SDN contacts..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v2, "content://icc/htc_sdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 447
    .local v11, sdn_uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/android/htccontacts/ImportSIMActivity;->access$900()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 449
    .local v24, sdnCursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 451
    .local v25, sdn_index:I
    if-eqz v24, :cond_f

    .line 452
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mSDNTotalCount:I

    .line 454
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mStop:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mSDNTotalCount:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_7

    .line 459
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 460
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 461
    .restart local v20       #record_number:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->isRecordNumberSelected(Ljava/lang/Long;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 462
    const-string v2, "ImportSIMActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecordNumber: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is not selected"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 427
    .end local v11           #sdn_uri:Landroid/net/Uri;
    .end local v24           #sdnCursor:Landroid/database/Cursor;
    .end local v25           #sdn_index:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    iget-object v4, v4, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    const/4 v7, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v0, v2, v4, v1, v7}, Lcom/htc/util/contacts/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;II)I

    .line 429
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    goto/16 :goto_2

    .line 439
    .end local v20           #record_number:J
    :cond_5
    const/16 v19, 0x4

    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    goto/16 :goto_3

    .line 466
    .restart local v11       #sdn_uri:Landroid/net/Uri;
    .restart local v20       #record_number:J
    .restart local v24       #sdnCursor:Landroid/database/Cursor;
    .restart local v25       #sdn_index:I
    :cond_6
    const-string v2, "ImportSIMActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecordNumber: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is selected, insert contact name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "name"

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v2, "com.anddroid.contacts.sim"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    iget-object v4, v4, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 470
    .restart local v9       #name:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    .restart local v5       #number:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 472
    .restart local v6       #number1:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 473
    .restart local v8       #email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    const/4 v7, 0x0

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/ImportSIMActivity;->access$1000(Lcom/android/htccontacts/ImportSIMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 474
    .restart local v22       #result:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_e

    .line 475
    move/from16 v19, v22

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    move/from16 v0, v22

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->getSaveToSimResultString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$1100(Lcom/android/htccontacts/ImportSIMActivity;I)Ljava/lang/String;

    move-result-object v17

    .line 477
    .restart local v17       #error_msg:Ljava/lang/String;
    const-string v2, "ImportSIMActivity"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v2, 0x3

    move/from16 v0, v22

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    .line 489
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #number1:Ljava/lang/String;
    .end local v8           #email:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v17           #error_msg:Ljava/lang/String;
    .end local v20           #record_number:J
    .end local v22           #result:I
    :cond_7
    if-eqz v24, :cond_8

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 490
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 500
    .end local v11           #sdn_uri:Landroid/net/Uri;
    .end local v24           #sdnCursor:Landroid/database/Cursor;
    .end local v25           #sdn_index:I
    :cond_8
    :goto_6
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 502
    .local v23, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_10

    .line 503
    :cond_9
    const-string v2, "error"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    move/from16 v0, v19

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->getSaveToSimResultString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$1100(Lcom/android/htccontacts/ImportSIMActivity;I)Ljava/lang/String;

    move-result-object v17

    .line 505
    .restart local v17       #error_msg:Ljava/lang/String;
    const-string v2, "error_msg"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    .end local v17           #error_msg:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Lcom/android/htccontacts/ImportSIMActivity;->setResult(ILandroid/content/Intent;)V

    .line 511
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mStop:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_11

    const/16 v28, 0x1

    .line 513
    .local v28, stopping:Z
    :goto_8
    if-eqz v28, :cond_a

    .line 514
    const-string v2, "ImportSIMActivity"

    const-string v4, "Pause importing and wait for cancel"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    .line 517
    if-nez v28, :cond_b

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 526
    :cond_b
    :goto_9
    const-string v2, "ImportSIMActivity"

    const-string v4, "end import all"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->isSearchDialogActived()Landroid/app/SearchManager;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$1200(Lcom/android/htccontacts/ImportSIMActivity;)Landroid/app/SearchManager;

    move-result-object v26

    .line 528
    .local v26, searchManager:Landroid/app/SearchManager;
    if-eqz v26, :cond_13

    .line 529
    const-string v2, "ImportSIMActivity"

    const-string v4, "ImportSimContactsThread.run(), Search dialog is still activity, do not destroy ImportSimContactsActivity..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$1300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 539
    return-void

    .line 483
    .end local v23           #resultIntent:Landroid/content/Intent;
    .end local v26           #searchManager:Landroid/app/SearchManager;
    .end local v28           #stopping:Z
    .restart local v11       #sdn_uri:Landroid/net/Uri;
    .restart local v20       #record_number:J
    .restart local v24       #sdnCursor:Landroid/database/Cursor;
    .restart local v25       #sdn_index:I
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    iget-object v4, v4, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    const/4 v7, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v2, v4, v1, v7}, Lcom/htc/util/contacts/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;II)I

    .line 485
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportSIMActivity;->access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    goto/16 :goto_5

    .line 495
    .end local v20           #record_number:J
    :cond_f
    const/16 v19, 0x4

    .line 496
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mTotalCount:I

    goto/16 :goto_6

    .line 507
    .end local v11           #sdn_uri:Landroid/net/Uri;
    .end local v24           #sdnCursor:Landroid/database/Cursor;
    .end local v25           #sdn_index:I
    .restart local v23       #resultIntent:Landroid/content/Intent;
    :cond_10
    const-string v2, "error"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_7

    .line 511
    :cond_11
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 521
    .restart local v28       #stopping:Z
    :cond_12
    const-string v2, "ImportSIMActivity"

    const-string v4, "ImportSimContactsThread.run(), ImportSIMActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 532
    .restart local v26       #searchManager:Landroid/app/SearchManager;
    :cond_13
    if-nez v28, :cond_c

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportSIMActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a
.end method

.method public setCancel()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mCanceled:Z

    .line 543
    return-void
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->mStop:Z

    .line 547
    return-void
.end method
