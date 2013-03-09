.class Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardReadThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mErrorFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 248
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->init()V

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/VCardFile;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mSelectedVCardFileList:Ljava/util/List;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    .line 254
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->init()V

    .line 255
    return-void
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;Lcom/android/htccontacts/model/AccountWithDataSet;ZLcom/android/vcard/VCardSourceDetector;Ljava/util/List;I)Landroid/net/Uri;
    .locals 12
    .parameter "uri"
    .parameter "account"
    .parameter "showEntryParseProgress"
    .parameter "detector"
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            "Z",
            "Lcom/android/vcard/VCardSourceDetector;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 429
    .local p5, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    .line 430
    .local v9, context:Landroid/content/Context;
    invoke-virtual/range {p4 .. p4}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v2

    .line 431
    .local v2, vcardType:I
    if-nez v2, :cond_0

    .line 432
    const v0, 0x7f0a0008

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v2

    .line 436
    :cond_0
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 437
    .local v3, builder:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v8, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v8, v0}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 438
    .local v8, committer:Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v3, v8}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 439
    if-eqz p3, :cond_2

    .line 440
    new-instance v7, Lcom/android/htccontacts/ProgressShower;

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const v1, 0x7f0a02b7

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v7, v0, v1, v9, v4}, Lcom/android/htccontacts/ProgressShower;-><init>(Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 444
    .local v7, PS:Lcom/android/htccontacts/ProgressShower;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 445
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/ProgressShower;->disableIncrementProgress(Z)V

    .line 447
    :cond_1
    invoke-virtual {v3, v7}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 451
    .end local v7           #PS:Lcom/android/htccontacts/ProgressShower;
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v6, p6

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILcom/android/vcard/VCardInterpreter;ZLjava/util/List;I)I
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 452
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v11

    .line 455
    .local v11, e:Lcom/android/vcard/exception/VCardNestedException;
    const-string v0, "ImportVCardActivity"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v11           #e:Lcom/android/vcard/exception/VCardNestedException;
    :cond_3
    invoke-virtual {v8}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v10

    .line 458
    .local v10, createdUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    .line 259
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 260
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 262
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ImportVCardActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    return-void
.end method

.method private isSearchDialogActived()Landroid/app/SearchManager;
    .locals 4

    .prologue
    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 415
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ImportVCardActivity"

    const-string v3, "IllegalArgumentException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    :catch_1
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "ImportVCardActivity"

    const-string v3, "IllegalStateException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private readOneVCardFile(Landroid/net/Uri;ILcom/android/vcard/VCardInterpreter;ZLjava/util/List;I)I
    .locals 12
    .parameter "uri"
    .parameter "vcardType"
    .parameter "interpreter"
    .parameter "throwNestedException"
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lcom/android/vcard/VCardInterpreter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    .line 470
    .local p5, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 472
    .local v5, rtn:I
    :try_start_0
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 473
    .local v4, is:Ljava/io/InputStream;
    const/16 v6, 0x1e

    move/from16 v0, p6

    if-ne v0, v6, :cond_1

    .line 474
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse vCard file with VCardParser_V30(without version check), vCardType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    iput-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 476
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_8

    .line 477
    const/16 v5, 0x1e

    .line 485
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 486
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7

    .line 555
    if-eqz v4, :cond_0

    .line 557
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_0
    :goto_1
    move v6, v5

    .line 603
    .end local v4           #is:Ljava/io/InputStream;
    :goto_2
    return v6

    .line 479
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse vCard file with VCardParser_V21, vCardType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    iput-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_8

    .line 481
    const/16 v5, 0x15

    goto :goto_0

    .line 487
    :catch_0
    move-exception v2

    .line 488
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_4
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get VCardVersionException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardVersionException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 493
    :goto_3
    :try_start_6
    instance-of v6, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_2

    .line 495
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 498
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    .line 501
    :try_start_7
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    iput-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 502
    const/16 v5, 0x1e

    .line 503
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 504
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 505
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_2

    .line 555
    if-eqz v4, :cond_0

    .line 557
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_1

    .line 558
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 506
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_2
    move-exception v3

    .line 507
    .local v3, e2:Lcom/android/vcard/exception/VCardVersionException;
    const/4 v5, 0x0

    .line 508
    :try_start_9
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    const-string v7, "vCard with unspported version."

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 555
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 557
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_8

    .line 555
    :cond_3
    :goto_4
    :try_start_b
    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_8

    .line 562
    .end local v4           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 563
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException was emitted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 566
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v6}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 571
    :goto_5
    if-eqz p5, :cond_7

    .line 572
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 510
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .line 511
    .local v2, e1:Lcom/android/vcard/exception/VCardException;
    :try_start_c
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get vCardException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 513
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 516
    :goto_7
    :try_start_e
    instance-of v6, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_4

    .line 518
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 520
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v4

    .line 523
    :try_start_f
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    iput-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 524
    const/16 v5, 0x1e

    .line 525
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 526
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 527
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_f .. :try_end_f} :catch_6

    .line 555
    if-eqz v4, :cond_0

    .line 557
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_1

    .line 579
    .end local v2           #e1:Lcom/android/vcard/exception/VCardException;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 580
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    const-string v6, "ImportVCardActivity"

    const-string v7, "VCardNotSupportedException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    instance-of v6, v1, Lcom/android/vcard/exception/VCardNestedException;

    if-eqz v6, :cond_8

    if-eqz p4, :cond_8

    .line 582
    check-cast v1, Lcom/android/vcard/exception/VCardNestedException;

    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    throw v1

    .line 528
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v3

    .line 529
    .restart local v3       #e2:Lcom/android/vcard/exception/VCardVersionException;
    const/4 v5, 0x0

    .line 530
    :try_start_11
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    const-string v7, "vCard with unspported version."

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 532
    .end local v2           #e1:Lcom/android/vcard/exception/VCardException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v2

    .line 533
    .local v2, e1:Ljava/lang/IllegalArgumentException;
    const-string v6, "ImportVCardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get IllegalArgumentException, try to parse with VCardParser_V30(without version check)... Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 535
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 538
    :goto_8
    :try_start_13
    instance-of v6, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_5

    .line 540
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 542
    :cond_5
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v4

    .line 545
    :try_start_14
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    iput-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 546
    const/16 v5, 0x1e

    .line 547
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/vcard/VCardParser;->setIgnoreVersionCheck(Z)V

    .line 548
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 549
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_14 .. :try_end_14} :catch_9

    .line 555
    if-eqz v4, :cond_0

    .line 557
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_1

    .line 592
    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_8
    move-exception v1

    .line 593
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    const-string v6, "ImportVCardActivity"

    const-string v7, "VCardException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    if-eqz p5, :cond_a

    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 550
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v2       #e1:Ljava/lang/IllegalArgumentException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_9
    move-exception v3

    .line 551
    .restart local v3       #e2:Lcom/android/vcard/exception/VCardVersionException;
    const/4 v5, 0x0

    .line 552
    :try_start_16
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    const-string v7, "vCard with unspported version."

    invoke-direct {v6, v7}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 568
    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    .end local v4           #is:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    :cond_6
    const-string v6, "ImportVCardActivity"

    const-string v7, "readOneVCardFile, ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 574
    :cond_7
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v7, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v11, 0x7f0a02af

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/htccontacts/ImportVCardActivity;->access$900(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 584
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :cond_8
    if-eqz p5, :cond_9

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :goto_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 587
    :cond_9
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v7, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v11, 0x7f0a02b0

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/htccontacts/ImportVCardActivity;->access$900(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/Runnable;)V

    goto :goto_a

    .line 597
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    :cond_a
    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v7, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v11, 0x7f0a02b1

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/htccontacts/ImportVCardActivity;->access$900(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 491
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_a
    move-exception v6

    goto/16 :goto_3

    .line 514
    .local v2, e1:Lcom/android/vcard/exception/VCardException;
    :catch_b
    move-exception v6

    goto/16 :goto_7

    .line 536
    .local v2, e1:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v6

    goto/16 :goto_8

    .line 558
    .end local v2           #e1:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v7

    goto/16 :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mCanceled:Z

    .line 608
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    .line 614
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 617
    const-string v0, "ImportVCardActivity"

    const-string v1, "mReadThread.onCancel is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->cancel()V

    .line 619
    return-void
.end method

.method public run()V
    .locals 36

    .prologue
    .line 275
    const/16 v34, 0x1

    .line 276
    .local v34, shouldCallFinish:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 283
    .local v3, targetUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 292
    new-instance v9, Lcom/android/htccontacts/HtcVCardEntryCounter;

    invoke-direct {v9}, Lcom/android/htccontacts/HtcVCardEntryCounter;-><init>()V

    .line 293
    .local v9, counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    new-instance v5, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v5}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .local v5, detector:Lcom/android/vcard/VCardSourceDetector;
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILcom/android/vcard/VCardInterpreter;ZLjava/util/List;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 307
    .local v16, result:I
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v8

    .line 308
    .local v8, estimatedVCardType:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILcom/android/vcard/VCardInterpreter;ZLjava/util/List;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 320
    .end local v8           #estimatedVCardType:I
    :goto_1
    if-nez v16, :cond_4

    .line 321
    const/16 v34, 0x0

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :goto_2
    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 385
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v33

    .line 386
    .local v33, searchManager:Landroid/app/SearchManager;
    if-eqz v33, :cond_14

    .line 387
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run() finally, Search dialog is still activity, do not destroy ImportVCardActivity..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    move-result-object v2

    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    :goto_3
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 410
    .end local v33           #searchManager:Landroid/app/SearchManager;
    :cond_1
    :goto_4
    return-void

    .line 300
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    :catch_0
    move-exception v26

    .line 301
    .local v26, e:Lcom/android/vcard/exception/VCardNestedException;
    const/16 v16, 0x0

    .line 302
    .restart local v16       #result:I
    :try_start_3
    const-string v2, "ImportVCardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must not reach here. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 376
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    .end local v26           #e:Lcom/android/vcard/exception/VCardNestedException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_d

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :goto_5
    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 385
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v33

    .line 386
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    if-eqz v33, :cond_f

    .line 387
    const-string v4, "ImportVCardActivity"

    const-string v6, "VCardReadThread.run() finally, Search dialog is still activity, do not destroy ImportVCardActivity..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 376
    .end local v33           #searchManager:Landroid/app/SearchManager;
    :cond_3
    :goto_6
    throw v2

    .line 310
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .restart local v16       #result:I
    :catch_1
    move-exception v27

    .line 311
    .local v27, e2:Lcom/android/vcard/exception/VCardNestedException;
    const/16 v16, 0x0

    .line 312
    :try_start_4
    const-string v2, "ImportVCardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Must not reach here. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    .end local v27           #e2:Lcom/android/vcard/exception/VCardNestedException;
    :cond_4
    invoke-virtual {v9}, Lcom/android/htccontacts/HtcVCardEntryCounter;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 326
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v30, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 330
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v32

    .line 331
    .local v32, is:Ljava/io/InputStream;
    const/16 v2, 0x5000

    new-array v0, v2, [B

    move-object/from16 v24, v0

    .line 332
    .local v24, b:[B
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 333
    const-string v2, "result"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 334
    const-string v2, "acc_type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v4

    iget-object v4, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v2, "acc_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v4

    iget-object v4, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v4}, Lcom/android/htccontacts/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :goto_7
    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 385
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v33

    .line 386
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    if-eqz v33, :cond_1e

    .line 387
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run() finally, Search dialog is still activity, do not destroy ImportVCardActivity..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_3

    .line 338
    .end local v24           #b:[B
    .end local v32           #is:Ljava/io/InputStream;
    .end local v33           #searchManager:Landroid/app/SearchManager;
    :catch_2
    move-exception v2

    .line 341
    .end local v30           #i:Landroid/content/Intent;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v6, 0x7f0a02ac

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/htccontacts/HtcVCardEntryCounter;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v14, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->doActuallyReadOneVCard(Landroid/net/Uri;Lcom/android/htccontacts/model/AccountWithDataSet;ZLcom/android/vcard/VCardSourceDetector;Ljava/util/List;I)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_17

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :goto_8
    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 385
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v33

    .line 386
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    if-eqz v33, :cond_19

    .line 387
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run() finally, Search dialog is still activity, do not destroy ImportVCardActivity..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_3

    .line 348
    .end local v33           #searchManager:Landroid/app/SearchManager;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v6, 0x7f0a02ad

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mSelectedVCardFileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mSelectedVCardFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_a
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/htccontacts/VCardFile;

    .line 354
    .local v35, vcardFile:Lcom/android/htccontacts/VCardFile;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mCanceled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_c

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_21

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :goto_a
    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 385
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v33

    .line 386
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    if-eqz v33, :cond_23

    .line 387
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run() finally, Search dialog is still activity, do not destroy ImportVCardActivity..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    move-result-object v2

    goto/16 :goto_3

    .line 358
    .end local v33           #searchManager:Landroid/app/SearchManager;
    :cond_c
    const/16 v16, 0x0

    .line 359
    .restart local v16       #result:I
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v35 .. v35}, Lcom/android/htccontacts/VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 360
    .restart local v3       #targetUri:Landroid/net/Uri;
    new-instance v5, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v5}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 362
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    const/16 v19, 0x0

    const/16 v21, 0x1

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    invoke-direct/range {v17 .. v23}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILcom/android/vcard/VCardInterpreter;ZLjava/util/List;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_3

    move-result v16

    .line 364
    if-eqz v16, :cond_a

    .line 370
    :goto_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v14, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->doActuallyReadOneVCard(Landroid/net/Uri;Lcom/android/htccontacts/model/AccountWithDataSet;ZLcom/android/vcard/VCardSourceDetector;Ljava/util/List;I)Landroid/net/Uri;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 380
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v16           #result:I
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v35           #vcardFile:Lcom/android/htccontacts/VCardFile;
    :cond_d
    const-string v4, "ImportVCardActivity"

    const-string v6, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 393
    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v25, builder:Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 395
    .local v29, first:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 396
    .local v28, fileName:Ljava/lang/String;
    if-eqz v29, :cond_11

    .line 397
    const/16 v29, 0x0

    .line 401
    :goto_d
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 390
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto/16 :goto_6

    .line 404
    .end local v33           #searchManager:Landroid/app/SearchManager;
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    .restart local v29       #first:Z
    .restart local v31       #i$:Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v11, 0x7f0a02ae

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 399
    .restart local v28       #fileName:Ljava/lang/String;
    :cond_11
    const-string v4, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 380
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .restart local v16       #result:I
    :cond_12
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 393
    :cond_13
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 395
    .restart local v29       #first:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 396
    .restart local v28       #fileName:Ljava/lang/String;
    if-eqz v29, :cond_16

    .line 397
    const/16 v29, 0x0

    .line 401
    :goto_f
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 390
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    :goto_10
    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto/16 :goto_4

    .line 404
    .end local v33           #searchManager:Landroid/app/SearchManager;
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .restart local v16       #result:I
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    .restart local v29       #first:Z
    .restart local v31       #i$:Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v10, 0x7f0a02ae

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    :goto_11
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 399
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .restart local v16       #result:I
    .restart local v28       #fileName:Ljava/lang/String;
    :cond_16
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 380
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    :cond_17
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 393
    :cond_18
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 395
    .restart local v29       #first:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 396
    .restart local v28       #fileName:Ljava/lang/String;
    if-eqz v29, :cond_1b

    .line 397
    const/16 v29, 0x0

    .line 401
    :goto_13
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 390
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    goto :goto_10

    .line 404
    .end local v33           #searchManager:Landroid/app/SearchManager;
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    .restart local v29       #first:Z
    .restart local v31       #i$:Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v10, 0x7f0a02ae

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    goto :goto_11

    .line 399
    .restart local v28       #fileName:Ljava/lang/String;
    :cond_1b
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 380
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .restart local v16       #result:I
    .restart local v24       #b:[B
    .restart local v30       #i:Landroid/content/Intent;
    .restart local v32       #is:Ljava/io/InputStream;
    :cond_1c
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 393
    :cond_1d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 395
    .restart local v29       #first:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 396
    .restart local v28       #fileName:Ljava/lang/String;
    if-eqz v29, :cond_20

    .line 397
    const/16 v29, 0x0

    .line 401
    :goto_15
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 390
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    goto/16 :goto_10

    .line 404
    .end local v33           #searchManager:Landroid/app/SearchManager;
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    .restart local v29       #first:Z
    .restart local v31       #i$:Ljava/util/Iterator;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v10, 0x7f0a02ae

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 399
    .restart local v28       #fileName:Ljava/lang/String;
    :cond_20
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 380
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v9           #counter:Lcom/android/htccontacts/HtcVCardEntryCounter;
    .end local v16           #result:I
    .end local v24           #b:[B
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .end local v30           #i:Landroid/content/Intent;
    .end local v32           #is:Ljava/io/InputStream;
    .restart local v35       #vcardFile:Lcom/android/htccontacts/VCardFile;
    :cond_21
    const-string v2, "ImportVCardActivity"

    const-string v4, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 393
    :cond_22
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 395
    .restart local v29       #first:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_16
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 396
    .restart local v28       #fileName:Ljava/lang/String;
    if-eqz v29, :cond_25

    .line 397
    const/16 v29, 0x0

    .line 401
    :goto_17
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 390
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .restart local v33       #searchManager:Landroid/app/SearchManager;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    goto/16 :goto_10

    .line 404
    .end local v33           #searchManager:Landroid/app/SearchManager;
    .restart local v25       #builder:Ljava/lang/StringBuilder;
    .restart local v29       #first:Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v10, 0x7f0a02ae

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 399
    .restart local v28       #fileName:Ljava/lang/String;
    :cond_25
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 367
    .end local v25           #builder:Ljava/lang/StringBuilder;
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #first:Z
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #result:I
    :catch_3
    move-exception v2

    goto/16 :goto_b
.end method
