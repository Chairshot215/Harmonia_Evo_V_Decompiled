.class public abstract Lcom/htc/util/mail/MailAccount;
.super Ljava/lang/Object;
.source "MailAccount.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailAccount"


# instance fields
.field protected folderPathNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccountListener:Lcom/htc/util/mail/IAccountListener;

.field protected mColorIndex:I

.field protected mContext:Landroid/content/Context;

.field protected mDefaultAccount:I

.field protected mDefaultFolderId:I

.field protected mDelFolderIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDraftFolderId:I

.field protected mEmailAddress:Ljava/lang/String;

.field protected mFolderIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:J

.field protected mIsFolderIdListFirstTimeQuery:Z

.field private mIsSyncing:Z

.field protected mLastFolderIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;

.field protected mNewFolderIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutFolderId:I

.field protected mProtocol:I

.field protected mRootFolder:Lcom/htc/util/mail/Folder;

.field protected mSentFolderId:I

.field protected mTitle:Ljava/lang/String;

.field protected mTrashFolderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "name"
    .parameter "desc"
    .parameter "email"
    .parameter "protocol"
    .parameter "defaultFolderId"
    .parameter "trashFolderId"
    .parameter "sentFolderId"
    .parameter "draftFolderId"
    .parameter "outFolderId"
    .parameter "defaultaccount"
    .parameter "colorindex"

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    .line 48
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mName:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailAccount;->mIsFolderIdListFirstTimeQuery:Z

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    .line 477
    iput-object p1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    .line 478
    iput-wide p2, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    .line 479
    if-nez p4, :cond_0

    .line 480
    const-string p4, ""

    .line 481
    :cond_0
    iput-object p4, p0, Lcom/htc/util/mail/MailAccount;->mName:Ljava/lang/String;

    .line 482
    if-nez p5, :cond_1

    .line 483
    const-string p5, ""

    .line 484
    :cond_1
    iput-object p5, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    .line 485
    if-nez p6, :cond_2

    .line 486
    const-string p6, ""

    .line 487
    :cond_2
    iput-object p6, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    .line 488
    iput p7, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    .line 489
    iput p8, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    .line 490
    iput p9, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    .line 491
    iput p10, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    .line 492
    iput p11, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    .line 493
    iput p12, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    .line 494
    move/from16 v0, p13

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    .line 495
    move/from16 v0, p14

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    .line 497
    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->refreshFolderIdList()V

    .line 498
    return-void
.end method

.method private isFoldersExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 361
    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->getFolderPathNameList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 369
    :cond_1
    :goto_0
    return v0

    .line 367
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildFolderPathNameArray()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object v2

    .line 550
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 551
    .local v3, size:I
    if-eqz v3, :cond_0

    .line 553
    new-array v2, v3, [Ljava/lang/String;

    .line 556
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 557
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/mail/Folder;

    invoke-virtual {v4}, Lcom/htc/util/mail/Folder;->getFolderPathName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MailAccount"

    const-string v5, "MailAccount get folder path name exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_0
    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 575
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-eqz v0, :cond_1

    .line 576
    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    .line 578
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 579
    return-void

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAccountsUpdateTime()J
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v7, 0x0

    .line 515
    :cond_0
    :goto_0
    return-wide v7

    .line 508
    :cond_1
    const-wide/16 v7, 0x0

    .line 509
    .local v7, time:J
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_lastupdatetime"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 512
    const-string v0, "_lastupdatetime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 514
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAllFolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getColorIndex()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    return v0
.end method

.method public getDefaultFolder()Lcom/htc/util/mail/Folder;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    .line 196
    .local v0, f:Lcom/htc/util/mail/Folder;
    iget v4, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 198
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 199
    goto :goto_0
.end method

.method public getDefaultFolderId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    return v0
.end method

.method public abstract getDelFolderList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getDraftFolderId()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder(J)Lcom/htc/util/mail/Folder;
    .locals 8
    .parameter "folderId"

    .prologue
    const/4 v4, 0x0

    .line 400
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->getRootFolder()Lcom/htc/util/mail/Folder;

    move-result-object v2

    .line 426
    :goto_0
    return-object v2

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 403
    :cond_1
    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 404
    :try_start_0
    iget-object v6, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/Folder;

    .line 406
    .local v2, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->getFolderId()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-nez v6, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 408
    .end local v2           #f:Lcom/htc/util/mail/Folder;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 412
    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 413
    .local v1, accs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 414
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    .line 415
    .restart local v2       #f:Lcom/htc/util/mail/Folder;
    if-eqz v2, :cond_4

    .line 416
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isInBoxFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isDraftFolder()Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/32 v4, 0x7ffffffc

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    .line 418
    :cond_6
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v5

    if-eqz v5, :cond_7

    const-wide/32 v4, 0x7ffffffb

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    .line 419
    :cond_7
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isSentFolder()Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/32 v4, 0x7ffffffd

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto/16 :goto_0

    .line 420
    :cond_8
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isTrashFolder()Z

    move-result v5

    if-eqz v5, :cond_9

    const-wide/32 v4, 0x7ffffffe

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move-object v2, v4

    .line 421
    goto/16 :goto_0

    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #accs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    .end local v2           #f:Lcom/htc/util/mail/Folder;
    :cond_a
    move-object v2, v4

    .line 426
    goto/16 :goto_0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/htc/util/mail/Folder;
    .locals 5
    .parameter "folderPathName"

    .prologue
    const/4 v2, 0x0

    .line 386
    if-nez p1, :cond_0

    move-object v0, v2

    .line 396
    :goto_0
    return-object v0

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 391
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    .line 393
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 395
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 396
    goto :goto_0
.end method

.method public getFolderId(I)I
    .locals 1
    .parameter "kind"

    .prologue
    .line 179
    const v0, 0x7fffffff

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    .line 185
    :goto_0
    return v0

    .line 180
    :cond_0
    const v0, 0x7ffffffe

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    goto :goto_0

    .line 181
    :cond_1
    const v0, 0x7ffffffd

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    goto :goto_0

    .line 182
    :cond_2
    const v0, 0x7ffffffc

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    goto :goto_0

    .line 183
    :cond_3
    const v0, 0x7ffffffb

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    goto :goto_0

    .line 185
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract getFolderPathNameList()[Ljava/lang/String;
.end method

.method public abstract getFoldersWhere()Ljava/lang/String;
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    return-wide v0
.end method

.method public getInBoxFolderId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    return v0
.end method

.method public abstract getMessagesWhere(J)Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNewFolderList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getOutFolderId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    return v0
.end method

.method public getRootFolder()Lcom/htc/util/mail/Folder;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 602
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/htc/util/mail/Folder;

    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "root"

    const-string v5, "root"

    const-wide/16 v6, -0x1

    const/4 v10, -0x1

    move-object v2, p0

    move v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/htc/util/mail/Folder;-><init>(Landroid/content/Context;Lcom/htc/util/mail/MailAccount;Lcom/htc/util/mail/MailAccount;Ljava/lang/String;Ljava/lang/String;JIII)V

    iput-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    return-object v0
.end method

.method public getSentFolderId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrashFolderId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    return v0
.end method

.method public abstract getUnreadMail()I
.end method

.method public handleDelFolders(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, delFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    .line 678
    :cond_0
    return-void

    .line 673
    :cond_1
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 676
    .local v7, folderId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/util/mail/IAccountListener;->onFolderDeleted(JJJ)V

    goto :goto_0
.end method

.method public handleDelMessage(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, delMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    return-void

    .line 289
    :cond_1
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 292
    .local v10, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    iget-wide v3, v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;->folderId:J

    iget-wide v5, v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    const-wide/16 v7, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/htc/util/mail/IAccountListener;->onMessageDeleted(JJJJ)V

    goto :goto_0
.end method

.method public handleNewFolders(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, newFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    .line 665
    :cond_0
    return-void

    .line 660
    :cond_1
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 663
    .local v7, folderId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/util/mail/IAccountListener;->onFolderCreated(JJJ)V

    goto :goto_0
.end method

.method public handleNewMessage(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    sget-boolean v0, Lcom/htc/util/mail/MailAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailAccount"

    const-string v1, "handleNewMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_2

    .line 282
    :cond_1
    return-void

    .line 273
    :cond_2
    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/util/mail/IAccountListener;->onNewMessages(JJ)V

    .line 278
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 279
    .local v10, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    iget-wide v3, v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;->folderId:J

    iget-wide v5, v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    const-wide/16 v7, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/htc/util/mail/IAccountListener;->onMessageAdded(JJJJ)V

    goto :goto_0
.end method

.method public handleSyncFinished()V
    .locals 3

    .prologue
    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    .line 695
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/util/mail/IAccountListener;->onAccountSyncCompleted(J)V

    goto :goto_0
.end method

.method public handleSyncStart()V
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    .line 685
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_0

    .line 688
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/util/mail/IAccountListener;->onAccountSync(J)V

    goto :goto_0
.end method

.method public isCombinedAccount()Z
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultAccount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 223
    iget v1, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSyncState()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    return v0
.end method

.method public abstract refreshFolderIdList()V
.end method

.method public abstract refreshFolders()V
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 620
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 621
    iget-object v3, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    .line 623
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->release()V

    goto :goto_0

    .line 628
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 626
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 627
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 628
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-eqz v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->release()V

    .line 633
    iput-object v4, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 637
    :cond_3
    iput-object v4, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    .line 639
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 640
    :cond_4
    iput-object v4, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    .line 642
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 643
    :cond_5
    iput-object v4, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    .line 646
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 647
    :cond_6
    iput-object v4, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    .line 650
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/MailAccount;->mIsFolderIdListFirstTimeQuery:Z

    .line 652
    return-void
.end method

.method public resetDefaultAccount()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    .line 252
    return-void
.end method

.method public abstract sendMail(Lcom/htc/util/mail/MailMessage;)Z
.end method

.method public setAccountListener(Lcom/htc/util/mail/IAccountListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    .line 263
    return-void
.end method

.method public setDefaultAccount()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    .line 238
    return-void
.end method

.method public abstract syncAccount(J)Z
.end method
