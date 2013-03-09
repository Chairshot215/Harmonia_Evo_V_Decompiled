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

    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailAccount;->mIsFolderIdListFirstTimeQuery:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    iput-object p1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/htc/util/mail/MailAccount;->mName:Ljava/lang/String;

    if-nez p5, :cond_1

    const-string p5, ""

    :cond_1
    iput-object p5, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    if-nez p6, :cond_2

    const-string p6, ""

    :cond_2
    iput-object p6, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    iput p7, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    iput p8, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    iput p9, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    iput p10, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    iput p11, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    iput p12, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    move/from16 v0, p13

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    move/from16 v0, p14

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->refreshFolderIdList()V

    return-void
.end method

.method private isFoldersExist()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->getFolderPathNameList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildFolderPathNameArray()[Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

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

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

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

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v7, 0x0

    :cond_0
    :goto_0
    return-wide v7

    :cond_1
    const-wide/16 v7, 0x0

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

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_lastupdatetime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

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

    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getColorIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mColorIndex:I

    return v0
.end method

.method public getDefaultFolder()Lcom/htc/util/mail/Folder;
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    iget v4, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method public getDefaultFolderId()I
    .locals 1

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

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder(J)Lcom/htc/util/mail/Folder;
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->getRootFolder()Lcom/htc/util/mail/Folder;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/Folder;

    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->getFolderId()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-nez v6, :cond_2

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isInBoxFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isDraftFolder()Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/32 v4, 0x7ffffffc

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v5

    if-eqz v5, :cond_7

    const-wide/32 v4, 0x7ffffffb

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isSentFolder()Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/32 v4, 0x7ffffffd

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    goto/16 :goto_0

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

    goto/16 :goto_0

    :cond_a
    move-object v2, v4

    goto/16 :goto_0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/htc/util/mail/Folder;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/util/mail/MailAccount;->isFoldersExist()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method public getFolderId(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x7ffffffe

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    goto :goto_0

    :cond_1
    const v0, 0x7ffffffd

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    goto :goto_0

    :cond_2
    const v0, 0x7ffffffc

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDraftFolderId:I

    goto :goto_0

    :cond_3
    const v0, 0x7ffffffb

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    goto :goto_0

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

    iget-wide v0, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    return-wide v0
.end method

.method public getInBoxFolderId()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultFolderId:I

    return v0
.end method

.method public abstract getMessagesWhere(J)Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

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

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mOutFolderId:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mProtocol:I

    return v0
.end method

.method public getRootFolder()Lcom/htc/util/mail/Folder;
    .locals 11

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    return-object v0
.end method

.method public getSentFolderId()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mSentFolderId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrashFolderId()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailAccount;->mTrashFolderId:I

    return v0
.end method

.method public abstract getUnreadMail()I
.end method

.method public handleDelFolders(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/htc/util/mail/MailAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailAccount"

    const-string v1, "handleNewMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/util/mail/IAccountListener;->onNewMessages(JJ)V

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/util/mail/Folder$BasicMessageInfo;

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/util/mail/IAccountListener;->onAccountSyncCompleted(J)V

    goto :goto_0
.end method

.method public handleSyncStart()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    iget-wide v1, p0, Lcom/htc/util/mail/MailAccount;->mId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/util/mail/IAccountListener;->onAccountSync(J)V

    goto :goto_0
.end method

.method public isCombinedAccount()Z
    .locals 4

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

    const/4 v0, 0x1

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

    iget-boolean v0, p0, Lcom/htc/util/mail/MailAccount;->mIsSyncing:Z

    return v0
.end method

.method public abstract refreshFolderIdList()V
.end method

.method public abstract refreshFolders()V
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mRootFolder:Lcom/htc/util/mail/Folder;

    :cond_2
    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mFolderIdList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/MailAccount;->mIsFolderIdListFirstTimeQuery:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public resetDefaultAccount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    return-void
.end method

.method public abstract sendMail(Lcom/htc/util/mail/MailMessage;)Z
.end method

.method public setAccountListener(Lcom/htc/util/mail/IAccountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/MailAccount;->mAccountListener:Lcom/htc/util/mail/IAccountListener;

    return-void
.end method

.method public setDefaultAccount()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/MailAccount;->mDefaultAccount:I

    return-void
.end method

.method public abstract syncAccount(J)Z
.end method
