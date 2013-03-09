.class public Lcom/htc/util/mail/RealAccount;
.super Lcom/htc/util/mail/MailAccount;
.source "RealAccount.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RealAccount"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/RealAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 0
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
    .line 59
    invoke-direct/range {p0 .. p14}, Lcom/htc/util/mail/MailAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/util/mail/RealAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/util/mail/RealAccount;->doRefreshFolderIdList()V

    return-void
.end method

.method private declared-synchronized doRefreshFolderIdList()V
    .locals 8

    .prologue
    .line 277
    monitor-enter p0

    const/4 v6, 0x0

    .line 280
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    .line 286
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/htc/util/mail/RealAccount;->getFoldersWhere()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_3

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    :cond_3
    iget-boolean v0, p0, Lcom/htc/util/mail/RealAccount;->mIsFolderIdListFirstTimeQuery:Z

    if-eqz v0, :cond_5

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/RealAccount;->mIsFolderIdListFirstTimeQuery:Z

    .line 305
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_5
    if-eqz v6, :cond_6

    .line 314
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :catch_0
    move-exception v7

    .line 310
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "RealAccount"

    const-string v1, "doRefreshFolderIdList"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    if-eqz v6, :cond_6

    .line 314
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 277
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_7

    .line 314
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private getUnread(II)I
    .locals 10
    .parameter "serverType"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 147
    const/4 v6, 0x0

    .line 149
    .local v6, c:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v1, 0x0

    .line 159
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 163
    .local v3, where:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 164
    .local v8, num:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    if-eqz v6, :cond_0

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 174
    :cond_0
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8           #num:I
    :cond_1
    :goto_1
    return v8

    .line 154
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 155
    .restart local v1       #uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/htc/util/mail/RealAccount;->mId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_read=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_mailboxId = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND _del = \'-1\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 171
    .restart local v8       #num:I
    :catch_0
    move-exception v7

    .line 174
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v9

    goto :goto_1

    .line 174
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isInList(Ljava/lang/Long;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 321
    .local v0, data:Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 323
    .end local v0           #data:Ljava/lang/Long;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDelFolderList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/RealAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 354
    .local v1, id:Ljava/lang/Long;
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/RealAccount;->isInList(Ljava/lang/Long;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getFolderPathNameList()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/util/mail/RealAccount;->getFoldersWhere()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 233
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 258
    .end local v11           #c:Landroid/database/Cursor;
    :goto_0
    return-object v4

    .line 235
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    :cond_2
    new-instance v0, Lcom/htc/util/mail/Folder;

    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v2

    const-string v3, "_account"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v3

    const-string v2, "_decodename"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "_shortname"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "_defaultfolder"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v2, "_serverid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "_parentid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/htc/util/mail/Folder;-><init>(Landroid/content/Context;Lcom/htc/util/mail/MailAccount;Lcom/htc/util/mail/MailAccount;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 250
    .local v0, f:Lcom/htc/util/mail/Folder;
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 258
    .end local v11           #c:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/util/mail/RealAccount;->buildFolderPathNameArray()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 252
    .restart local v0       #f:Lcom/htc/util/mail/Folder;
    .restart local v11       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFoldersWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/mail/RealAccount;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesWhere(J)Ljava/lang/String;
    .locals 3
    .parameter "mailBoxId"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " _account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/mail/RealAccount;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _del=-1 AND _mailboxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewFolderList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/RealAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 335
    .local v1, id:Ljava/lang/Long;
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mLastFolderIdList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/RealAccount;->isInList(Ljava/lang/Long;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getUnreadMail()I
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 185
    const/4 v9, 0x0

    .line 188
    .local v9, unread:I
    iget-object v0, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_defaultfolderId"

    aput-object v3, v2, v10

    const/4 v3, 0x1

    const-string v5, "_protocol"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v11, p0, Lcom/htc/util/mail/RealAccount;->mId:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v10

    .line 197
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "_protocol"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 193
    .local v7, _protocol:I
    const-string v0, "_defaultfolderId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 194
    .local v6, _defaultfolderId:I
    invoke-direct {p0, v7, v6}, Lcom/htc/util/mail/RealAccount;->getUnread(II)I

    move-result v9

    .line 196
    .end local v6           #_defaultfolderId:I
    .end local v7           #_protocol:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 197
    goto :goto_0
.end method

.method public refreshFolderIdList()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/mail/RealAccount$1;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/RealAccount$1;-><init>(Lcom/htc/util/mail/RealAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 272
    return-void
.end method

.method public refreshFolders()V
    .locals 4

    .prologue
    .line 368
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 369
    iget-object v3, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

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

    .line 371
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->release()V

    goto :goto_0

    .line 377
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 375
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 376
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/RealAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 377
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/util/mail/RealAccount;->getFolderPathNameList()[Ljava/lang/String;

    .line 380
    return-void
.end method

.method public sendMail(Lcom/htc/util/mail/MailMessage;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->saveMailToOutBox()Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/htc/util/mail/RealAccount;->getOutFolderId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/RealAccount;->syncAccount(J)Z

    .line 128
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public syncAccount(J)Z
    .locals 5
    .parameter "folderId"

    .prologue
    const/4 v4, 0x1

    .line 79
    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/util/mail/RealAccount;->mProtocol:I

    if-ne v1, v2, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncEMail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, in:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/htc/util/mail/RealAccount;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    const-string v1, "mailboxId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    :goto_0
    return v4

    .line 88
    .end local v0           #in:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v0       #in:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "SyncEmail"

    iget-object v2, p0, Lcom/htc/util/mail/RealAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "mailboxId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/htc/util/mail/RealAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
