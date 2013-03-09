.class public Lcom/android/htccontacts/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ExportVCardActivity$1;,
        Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;,
        Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;,
        Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;,
        Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;,
        Lcom/android/htccontacts/ExportVCardActivity$CancelListener;
    }
.end annotation


# static fields
.field private static final ALLOW_LONG_FILE_NAME:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExportVCardActivity"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

.field private mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

.field private mErrorReason:Ljava/lang/String;

.field private mExportingFileName:Ljava/lang/String;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

.field private mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

.field private mTargetDirectory:Ljava/lang/String;

.field private mTargetFileName:Ljava/lang/String;

.field private mUsePhoneStorage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mUsePhoneStorage:Z

    .line 121
    new-instance v0, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    .line 136
    new-instance v0, Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    .line 168
    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;)Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ExportVCardActivity;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ExportVCardActivity;)Landroid/app/SearchManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/htccontacts/ExportVCardActivity;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v0

    return-object v0
.end method

.method private getAppropriateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "destDirectory"

    .prologue
    .line 594
    const/4 v3, 0x0

    .line 598
    .local v3, fileNumberStringLength:I
    const/4 v3, 0x0

    iget v8, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileIndexMaximum:I

    .local v8, tmp:I
    :goto_0
    if-lez v8, :cond_0

    .line 599
    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v8, v8, 0xa

    goto :goto_0

    .line 602
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%s%0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "d%s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, bodyFormat:Ljava/lang/String;
    iget v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileIndexMinimum:I

    .local v4, i:I
    :goto_1
    iget v9, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileIndexMaximum:I

    if-gt v4, v9, :cond_4

    .line 621
    const/4 v6, 0x1

    .line 624
    .local v6, numberIsAvailable:Z
    const/4 v0, 0x0

    .line 625
    .local v0, body:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ExportVCardActivity;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 626
    .local v7, possibleExtension:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileNamePrefix:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileNameSuffix:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v2, Ljava/io/File;

    const-string v9, "%s/%s.%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 630
    const/4 v6, 0x0

    .line 634
    .end local v2           #file:Ljava/io/File;
    .end local v7           #possibleExtension:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 635
    const-string v9, "%s/%s.%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/htccontacts/ExportVCardActivity;->mFileNameExtension:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 643
    .end local v0           #body:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #numberIsAvailable:Z
    :goto_2
    return-object v9

    .line 620
    .restart local v0       #body:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #numberIsAvailable:Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 638
    .end local v0           #body:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #numberIsAvailable:Z
    :cond_4
    iget-boolean v9, p0, Lcom/android/htccontacts/ExportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v9, :cond_5

    .line 639
    const v9, 0x7f0a029f

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    .line 643
    :goto_3
    const/4 v9, 0x0

    goto :goto_2

    .line 641
    :cond_5
    const v9, 0x7f0a029e

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    goto :goto_3
.end method

.method private getCount()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 477
    const/4 v7, 0x0

    .line 478
    .local v7, rtn:I
    const/4 v3, 0x0

    .line 479
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND deleted = \'0\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 491
    :cond_0
    if-eqz v6, :cond_1

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_1
    return v7

    .line 482
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    const-string v3, "ext_account_Type <> \'com.htc.socialnetwork.facebook\'"

    goto :goto_0

    .line 491
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_3
    throw v0
.end method

.method private getExportingVCardDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 502
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v2, :cond_0

    .line 503
    const v2, 0x7f0a02a6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0a02a7

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mExportingFileName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 507
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 510
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f0a0299

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 512
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 513
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 514
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-direct {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 515
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 518
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v2
.end method

.method private isSearchDialogActived()Landroid/app/SearchManager;
    .locals 4

    .prologue
    .line 327
    :try_start_0
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ExportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 328
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ExportVCardActivity"

    const-string v3, "IllegalArgumentException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "ExportVCardActivity"

    const-string v3, "IllegalStateException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const v1, 0x7f0a029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 348
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 343
    .restart local p1
    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 345
    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelExport()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->cancel()V

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    .line 683
    :cond_0
    return-void
.end method

.method public getErrorDialogWithReason()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 667
    const-string v0, "ExportVCardActivity"

    const-string v1, "Error reason must have been set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 670
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02a1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02a0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public getExportConfirmationDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "ExportVCardActivity"

    const-string v1, "Target file name is empty, which must not be!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getErrorDialogWithReason()Landroid/app/Dialog;

    move-result-object v0

    .line 655
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02a9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "bundle"

    .prologue
    .line 354
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 356
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 357
    new-instance v7, Ljava/io/File;

    const-string v17, "/sdcard/ct_backup"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 359
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 360
    const-string v17, "/sdcard/ct_backup"

    const/16 v18, 0x1ff

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 364
    .end local v7           #file:Ljava/io/File;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 365
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 366
    const-string v17, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, accountName:Ljava/lang/String;
    const-string v17, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, accountType:Ljava/lang/String;
    const-string v17, "use_phone_storage"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mUsePhoneStorage:Z

    .line 369
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 370
    new-instance v17, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    .line 377
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mUsePhoneStorage:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/util/ContactsUtils;->getImportExportPath(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mTargetDirectory:Ljava/lang/String;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 380
    const/16 v16, 0x0

    .line 381
    .local v16, type:Ljava/lang/String;
    const/4 v13, 0x0

    .line 382
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 383
    .local v11, lastIndexOfDot:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 388
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x40

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 389
    .local v8, firstIndexOfAt:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 394
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileNamePrefix:Ljava/lang/String;

    .line 398
    .end local v8           #firstIndexOfAt:I
    .end local v11           #lastIndexOfDot:I
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :goto_3
    const v17, 0x7f0a000c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileNameSuffix:Ljava/lang/String;

    .line 399
    const v17, 0x7f0a000d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileNameExtension:Ljava/lang/String;

    .line 401
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mExtensionsToConsider:Ljava/util/Set;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mExtensionsToConsider:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    const v17, 0x7f0a000e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, additionalExtensions:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 407
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_4
    if-ge v9, v12, :cond_7

    aget-object v6, v5, v9

    .line 408
    .local v6, extension:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 409
    .local v15, trimed:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mExtensionsToConsider:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 373
    .end local v4           #additionalExtensions:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #extension:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #trimed:Ljava/lang/String;
    :cond_3
    const-string v17, "ExportVCardActivity"

    const-string v18, "intent does not exist"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    .restart local v11       #lastIndexOfDot:I
    .restart local v13       #name:Ljava/lang/String;
    .restart local v16       #type:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 392
    .restart local v8       #firstIndexOfAt:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ExportVCardActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 396
    .end local v8           #firstIndexOfAt:I
    .end local v11           #lastIndexOfDot:I
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :cond_6
    const v17, 0x7f0a000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileNamePrefix:Ljava/lang/String;

    goto/16 :goto_3

    .line 415
    .restart local v4       #additionalExtensions:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ExportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 416
    .local v14, resources:Landroid/content/res/Resources;
    const/high16 v17, 0x7f0d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileIndexMinimum:I

    .line 417
    const v17, 0x7f0d0001

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mFileIndexMaximum:I

    .line 419
    new-instance v17, Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity$CancelListener;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ExportVCardActivity;->startExportVCardToSdCard()V

    .line 421
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x104000a

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, rtn:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 471
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 472
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 473
    .end local v1           #rtn:Landroid/app/Dialog;
    .local v2, rtn:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 428
    .end local v2           #rtn:Ljava/lang/Object;
    .restart local v1       #rtn:Landroid/app/Dialog;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getExportConfirmationDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 429
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 430
    .restart local v2       #rtn:Ljava/lang/Object;
    goto :goto_0

    .line 434
    .end local v2           #rtn:Ljava/lang/Object;
    :sswitch_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02a1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 440
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 442
    .restart local v2       #rtn:Ljava/lang/Object;
    goto :goto_0

    .line 445
    .end local v2           #rtn:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getErrorDialogWithReason()Landroid/app/Dialog;

    move-result-object v1

    .line 446
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 447
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 448
    .restart local v2       #rtn:Ljava/lang/Object;
    goto :goto_0

    .line 451
    .end local v2           #rtn:Ljava/lang/Object;
    :sswitch_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02a2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 456
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-boolean v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_0

    .line 457
    const v3, 0x7f0a02a3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a5

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 460
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 461
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ExportVCardActivity$CancelListener;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 462
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 463
    .restart local v2       #rtn:Ljava/lang/Object;
    goto/16 :goto_0

    .line 466
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #rtn:Ljava/lang/Object;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getExportingVCardDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 467
    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v2, v1

    .line 468
    .restart local v2       #rtn:Ljava/lang/Object;
    goto/16 :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x7f070008 -> :sswitch_3
        0x7f070010 -> :sswitch_0
        0x7f070011 -> :sswitch_4
        0x7f070012 -> :sswitch_2
        0x7f0a029e -> :sswitch_1
        0x7f0a029f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 553
    const-string v0, "ExportVCardActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->cancel()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    .line 561
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 523
    const v0, 0x7f070012

    if-ne p1, v0, :cond_0

    .line 524
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p0}, Lcom/android/htccontacts/ExportVCardActivity;->getErrorReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 531
    :goto_0
    return-void

    .line 525
    .restart local p2
    :cond_0
    const v0, 0x7f070010

    if-ne p1, v0, :cond_1

    .line 526
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    const v0, 0x7f0a02a9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 536
    const-string v0, "ExportVCardActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public startExportVCardToSdCard()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, targetDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    .line 588
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->getAppropriateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    .line 577
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2

    .line 578
    const-string v1, "/sdcard/ct_backup/contacts.vcf"

    iput-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_3
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method
