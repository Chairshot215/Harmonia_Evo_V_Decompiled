.class public Lcom/htc/android/mail/server/HUXServer;
.super Lcom/htc/android/mail/server/ImapServer;
.source "HUXServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/server/HUXServer$TagsInfo;,
        Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;,
        Lcom/htc/android/mail/server/HUXServer$SyncResults;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HUXServer"

.field private static final sLatestMailNum:I = 0x64


# instance fields
.field private mCountOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mIsNeedSyncHUXAccount:Z

.field private mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

.field private mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/server/ImapServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 93
    iput-object v1, p0, Lcom/htc/android/mail/server/HUXServer;->mCountOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    .line 97
    iput-object v1, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 99
    new-instance v0, Lcom/htc/android/mail/server/HUXServer$SyncResults;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/server/HUXServer$SyncResults;-><init>(Lcom/htc/android/mail/server/HUXServer$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    .line 101
    new-instance v0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;-><init>(Lcom/htc/android/mail/server/HUXServer$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z

    .line 107
    return-void
.end method

.method private fetchTags(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "isForce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1334
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getLastFetchTagsTime()J

    move-result-wide v0

    .line 1336
    .local v0, lastTime:J
    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1337
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/huxservice/HuxProvController;->getTags(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    .line 1338
    .local v2, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-eqz v3, :cond_1

    .line 1339
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/Account;->setLastFetchTagsTime(J)V

    .line 1340
    iget-object v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1341
    iget-object v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/HUXServer;->processFetchTags(Ljava/util/ArrayList;)V

    .line 1345
    .end local v2           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    return-void
.end method

.method private generateURLAuth(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "mailbox"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, tag:Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s GENURLAUTH \"imap://%s@%s/%s/;uid=%s;urlauth=anonymous\" INTERNAL"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p1, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object p2, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v7}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 409
    .local v4, size:I
    if-nez v4, :cond_0

    .line 410
    const/4 v9, 0x0

    .line 429
    :goto_0
    return-object v9

    .line 413
    :cond_0
    add-int/lit8 v9, v4, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ByteString;

    .line 414
    .local v3, r:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, token:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1

    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    const/4 v9, 0x1

    aget-object v9, v8, v9

    sget-object v10, Lcom/htc/android/mail/server/HUXServer;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v10}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 417
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 420
    :cond_2
    const-string v2, "* GENURLAUTH "

    .line 421
    .local v2, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_4

    .line 422
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #r:Lcom/htc/android/mail/ByteString;
    check-cast v3, Lcom/htc/android/mail/ByteString;

    .line 423
    .restart local v3       #r:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, str:Ljava/lang/String;
    const-string v9, "* GENURLAUTH "

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 425
    .local v5, startPos:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 426
    const-string v9, "* GENURLAUTH "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 421
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    .end local v5           #startPos:I
    .end local v6           #str:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getMinUid(Lcom/htc/android/mail/Mailbox;)J
    .locals 13
    .parameter "mailbox"

    .prologue
    .line 261
    const-wide/16 v8, 0x0

    .line 262
    .local v8, minUid:J
    const/4 v6, 0x0

    .line 264
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_mailboxId IN (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v12, 0x6

    invoke-static {v5, p1, v12}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "min(abs(_uid)) as minUid"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "minUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 270
    .local v10, uid:J
    move-wide v8, v10

    .line 276
    .end local v10           #uid:J
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_1
    return-wide v8

    .line 273
    :catch_0
    move-exception v7

    .line 274
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "HUXServer"

    const-string v1, "catch RemoteException"

    invoke-static {v0, v1, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    throw v0
.end method

.method private getMinUidInLatestNumMail(Lcom/htc/android/mail/Mailbox;ILjava/util/HashMap;)J
    .locals 15
    .parameter "mailbox"
    .parameter "num"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HUXServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinUidInLatestNumMail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    const-wide/16 v11, 0x1

    .line 286
    .local v11, minUid:J
    const/4 v7, 0x0

    .line 288
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_mailboxId IN (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-static {v6, v0, v14}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "_uid"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "abs(_uid) DESC LIMIT "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 291
    if-eqz v7, :cond_4

    .line 292
    const/4 v13, 0x0

    .line 293
    .local v13, uid:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 295
    .local v9, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 296
    if-eqz p3, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v4           #where:Ljava/lang/String;
    .end local v9           #id:J
    .end local v13           #uid:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 301
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "HUXServer"

    const-string v2, "catch RemoteException"

    invoke-static {v1, v2, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_2
    return-wide v11

    .line 298
    .restart local v4       #where:Ljava/lang/String;
    .restart local v13       #uid:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_4

    :try_start_2
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v11

    .line 303
    .end local v13           #uid:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .end local v4           #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_5
    throw v1
.end method

.method private getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;
    .locals 3
    .parameter "mailbox"

    .prologue
    .line 115
    const-string v0, ""

    .line 116
    .local v0, searchKeyword:Ljava/lang/String;
    iget v1, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 117
    const-string v0, "NOT (KEYWORD vSent) NOT (KEYWORD vDraft)"

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    iget v1, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffc

    if-ne v1, v2, :cond_2

    .line 119
    const-string v0, "KEYWORD vDraft"

    goto :goto_0

    .line 120
    :cond_2
    iget v1, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffd

    if-ne v1, v2, :cond_0

    .line 121
    const-string v0, "KEYWORD vSent"

    goto :goto_0
.end method

.method private includeAttachCatenate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "fileFullpath"
    .parameter "filename"
    .parameter "type"
    .parameter "fileReference"

    .prologue
    .line 723
    if-eqz p1, :cond_4

    const-string v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 724
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v3, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 727
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #fis:Ljava/io/FileInputStream;
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :try_start_1
    const-string v10, "utf-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 734
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";\r\n\tname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 737
    :goto_0
    const-string v10, "Content-Transfer-Encoding: base64"

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 738
    const-string v10, "utf-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 739
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: attachment;\r\n\tfilename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 743
    :goto_1
    const-string v10, ""

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 745
    sget v7, Lcom/htc/android/mail/server/HUXServer;->ONETIME_ENCODE_SIZE:I

    .line 746
    .local v7, oneTime:I
    new-array v1, v7, [B

    .line 749
    .local v1, content:[B
    const/4 v5, 0x0

    .line 750
    .local v5, i:I
    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    .line 751
    .local v9, size:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 762
    const/4 v1, 0x0

    .line 772
    const/4 v10, 0x1

    .line 798
    .end local v1           #content:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #i:I
    .end local v7           #oneTime:I
    .end local v9           #size:I
    :goto_3
    return v10

    .line 728
    .restart local v3       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 729
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 730
    const/4 v10, 0x0

    goto :goto_3

    .line 736
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";\r\n\tname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 764
    :catch_1
    move-exception v2

    .line 765
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 766
    const-string v10, "HUXServer"

    const-string v11, "catch io exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    const/4 v10, 0x0

    goto :goto_3

    .line 741
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: attachment;\r\n\tfilename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 768
    :catch_2
    move-exception v2

    .line 769
    .local v2, e:Ljava/lang/OutOfMemoryError;
    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const v12, 0x7f0b01a6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 770
    const/4 v10, 0x0

    goto :goto_3

    .line 754
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #content:[B
    .restart local v5       #i:I
    .restart local v7       #oneTime:I
    .restart local v9       #size:I
    :cond_2
    if-ne v9, v7, :cond_3

    .line 755
    :try_start_4
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write([B)V

    .line 749
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 757
    :cond_3
    new-array v6, v9, [B

    .line 758
    .local v6, lessContent:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v10, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 774
    .end local v1           #content:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #i:I
    .end local v6           #lessContent:[B
    .end local v7           #oneTime:I
    .end local v9           #size:I
    :cond_4
    if-eqz p4, :cond_5

    const-string v10, ""

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 776
    :try_start_5
    const-string v8, ""

    .line 777
    .local v8, outputFileName:Ljava/lang/String;
    const-string v10, "utf-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 778
    invoke-static {p2}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 784
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";\r\n\tname="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 785
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: attachment;\r\n\tfilename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 786
    const-string v10, ""

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 787
    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    if-nez v10, :cond_7

    .line 788
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " URL \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" TEXT {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/server/HUXServer;->mCountOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    invoke-virtual {v11}, Lcom/htc/android/mail/CountSizeOutputStream;->getCheckPoint()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/htc/android/mail/server/HUXServer;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    .line 798
    .end local v8           #outputFileName:Ljava/lang/String;
    :cond_5
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 780
    .restart local v8       #outputFileName:Ljava/lang/String;
    :cond_6
    move-object v8, p2

    goto/16 :goto_5

    .line 791
    :cond_7
    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    invoke-virtual {v10}, Lcom/htc/android/mail/CountSizeOutputStream;->setCheckPoint()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 793
    .end local v8           #outputFileName:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 794
    .local v2, e:Ljava/io/IOException;
    const-string v10, "HUXServer"

    const-string v11, "catch io exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private issueBodyCatenate(Ljava/lang/StringBuilder;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;J)V
    .locals 22
    .parameter "mailbody"
    .parameter "message"
    .parameter "plainBody"
    .parameter "htmlBody"
    .parameter "parts"
    .parameter "relatedParts"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 540
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const-string v2, "_to"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 550
    .local v21, to:Ljava/lang/String;
    const-string v2, "_cc"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 551
    .local v13, cc:Ljava/lang/String;
    const-string v2, "_from"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 552
    .local v15, from:Ljava/lang/String;
    const-string v2, "_fromEmail"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 553
    .local v16, fromEmail:Ljava/lang/String;
    const-string v2, "_date"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 554
    .local v14, date:Ljava/lang/Long;
    const-string v2, "_subject"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 555
    .local v20, subject:Ljava/lang/String;
    const-string v2, "_messageid"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 556
    .local v18, msgIdInHeader:Ljava/lang/String;
    const-string v2, "_importance"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 557
    .local v17, importance:I
    if-eqz v15, :cond_8

    const-string v2, "utf-8"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 566
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047SegmentedBase64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 567
    if-eqz v21, :cond_2

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 569
    :cond_2
    if-eqz v13, :cond_3

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 571
    :cond_3
    if-eqz v14, :cond_4

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/android/mail/Util;->getTimeWithTimeZone(J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 573
    :cond_4
    if-eqz v18, :cond_5

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message-ID: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 575
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->writeImportanceHeader(I)V

    .line 576
    const-string v2, "MIME-Version: 1.0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 581
    const/16 v19, 0x0

    .line 582
    .local v19, ret:I
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 583
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/server/ImapServer;->mixedType:I

    or-int v19, v19, v2

    .line 584
    :cond_6
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/server/ImapServer;->relatedType:I

    or-int v19, v19, v2

    .line 587
    :cond_7
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-boolean v10, Lcom/htc/android/mail/Mime;->supportHTML:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/server/ImapServer;->relatedType:I

    and-int v2, v2, v19

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/server/ImapServer;->mixedType:I

    and-int v2, v2, v19

    if-eqz v2, :cond_a

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v12}, Lcom/htc/android/mail/server/HUXServer;->issueContentCatenate(Ljava/lang/StringBuilder;Ljava/lang/Long;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;ZZZ)V

    goto/16 :goto_0

    .line 560
    .end local v19           #ret:I
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/htc/android/mail/server/SmtpServer;->addEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    .restart local v19       #ret:I
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private issueContentCatenate(Ljava/lang/StringBuilder;Ljava/lang/Long;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;ZZZ)V
    .locals 21
    .parameter "mailbody"
    .parameter "messageId"
    .parameter "message"
    .parameter "plainBody"
    .parameter "htmlBody"
    .parameter "parts"
    .parameter "relatedParts"
    .parameter "alternative"
    .parameter "related"
    .parameter "mixed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, BoundaryNum:I
    const/4 v13, 0x0

    .line 595
    .local v13, htmlBodyExist:Z
    const/16 v17, 0x0

    .line 596
    .local v17, plainBodyText:Ljava/lang/String;
    const/4 v14, 0x0

    .line 597
    .local v14, htmlBodyText:Ljava/lang/String;
    const-string v7, ""

    .line 598
    .local v7, editText:Ljava/lang/String;
    const-string v12, ""

    .line 599
    .local v12, headerText:Ljava/lang/String;
    const-string v5, ""

    .line 600
    .local v5, alterBoundary:Ljava/lang/String;
    const-string v18, ""

    .line 601
    .local v18, relatedBoundary:Ljava/lang/String;
    const-string v16, ""

    .line 604
    .local v16, mixBoundary:Ljava/lang/String;
    if-eqz p8, :cond_10

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 605
    add-int/lit8 v4, v3, 0x1

    .end local v3           #BoundaryNum:I
    .local v4, BoundaryNum:I
    invoke-static {v3}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v5

    .line 606
    :goto_0
    if-eqz p9, :cond_0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 607
    add-int/lit8 v3, v4, 0x1

    .end local v4           #BoundaryNum:I
    .restart local v3       #BoundaryNum:I
    invoke-static {v4}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v18

    move v4, v3

    .line 608
    .end local v3           #BoundaryNum:I
    .restart local v4       #BoundaryNum:I
    :cond_0
    if-eqz p10, :cond_f

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 609
    add-int/lit8 v3, v4, 0x1

    .end local v4           #BoundaryNum:I
    .restart local v3       #BoundaryNum:I
    invoke-static {v4}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v16

    .line 611
    :goto_1
    if-eqz p10, :cond_1

    .line 612
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Content-Type: multipart/mixed;\r\n\tboundary=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 613
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 614
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 617
    :cond_1
    if-eqz p9, :cond_2

    .line 618
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Content-Type: multipart/related;\r\n\tboundary=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 619
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 620
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 623
    :cond_2
    if-eqz p8, :cond_3

    .line 624
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Content-Type: multipart/alternative;\r\n\tboundary=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 625
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 626
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 629
    :cond_3
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 630
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 631
    const-string v19, "_text"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 635
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_5

    .line 636
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 637
    const-string v19, "_text"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 641
    :cond_5
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/htc/android/mail/server/SmtpServer;->parsingMailBodyFromDraft(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 642
    .local v6, bodyArray:[Ljava/lang/String;
    if-eqz v6, :cond_6

    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 643
    const/16 v19, 0x0

    aget-object v17, v6, v19

    .line 644
    const/16 v19, 0x1

    aget-object v14, v6, v19

    .line 648
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->loadBodyCatenate(ZLjava/lang/String;)V

    .line 651
    if-eqz p8, :cond_7

    .line 652
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 653
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 657
    :cond_7
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/htc/android/mail/server/HUXServer;->loadBodyCatenate(ZLjava/lang/String;)V

    .line 660
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 661
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 663
    if-eqz p9, :cond_8

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->GenRelatedAttachAndBound(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 666
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 667
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 668
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 671
    :cond_8
    if-eqz p10, :cond_d

    .line 672
    const/16 v19, -0x1

    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 673
    :cond_9
    :goto_2
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 674
    const-string v19, "_filename"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 675
    .local v10, filename:Ljava/lang/String;
    const-string v19, "_filepath"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 676
    .local v11, filepath:Ljava/lang/String;
    const-string v19, "_mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 677
    .local v15, mimetype:Ljava/lang/String;
    const-string v19, "_filereference"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, fileReference:Ljava/lang/String;
    if-eqz v11, :cond_b

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 679
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 685
    .end local v8           #file:Ljava/io/File;
    :cond_a
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 686
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v15, v9}, Lcom/htc/android/mail/server/HUXServer;->includeAttachCatenate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 682
    :cond_b
    if-eqz v9, :cond_9

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    goto/16 :goto_2

    .line 689
    .end local v9           #fileReference:Ljava/lang/String;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v15           #mimetype:Ljava/lang/String;
    :cond_c
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 690
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 692
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/CountSizeOutputStream;->setCheckPoint()V

    .line 696
    :cond_e
    return-void

    .end local v3           #BoundaryNum:I
    .end local v6           #bodyArray:[Ljava/lang/String;
    .restart local v4       #BoundaryNum:I
    :cond_f
    move v3, v4

    .end local v4           #BoundaryNum:I
    .restart local v3       #BoundaryNum:I
    goto/16 :goto_1

    :cond_10
    move v4, v3

    .end local v3           #BoundaryNum:I
    .restart local v4       #BoundaryNum:I
    goto/16 :goto_0
.end method

.method private loadBodyCatenate(ZLjava/lang/String;)V
    .locals 3
    .parameter "isHtml"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 699
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    if-eqz p1, :cond_0

    .line 702
    const-string v0, "Content-Type: text/html;\r\n\tcharset=utf-8"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 705
    :goto_0
    const-string v0, "Content-Transfer-Encoding: base64"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 706
    const-string v0, "Content-Disposition: inline"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 707
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 708
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v1

    const-string v2, "ISO8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 720
    :goto_1
    return-void

    .line 704
    :cond_0
    const-string v0, "Content-Type: text/plain;\r\n\tcharset=utf-8"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_1
    if-eqz p1, :cond_2

    .line 712
    const-string v0, "Content-Type: text/html;\r\n\tcharset=ISO-8859-1"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 715
    :goto_2
    const-string v0, "Content-Transfer-Encoding: 7bit"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 716
    const-string v0, "Content-Disposition: inline"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 717
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_2
    const-string v0, "Content-Type: text/plain;\r\n\tcharset=ISO-8859-1"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private parseAnnotation(Ljava/lang/String;Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1316
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1317
    .local v0, index:I
    if-eq v0, v7, :cond_0

    .line 1318
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, tagIdStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1322
    .local v2, tagId:J
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Lcom/htc/android/mail/ByteString;->indexOf(I)I

    move-result v0

    .line 1323
    if-eq v0, v7, :cond_0

    .line 1324
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v6, v7}, Lcom/htc/android/mail/ByteString;->substring(II)Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 1326
    .local v1, tagByteString:Lcom/htc/android/mail/ByteString;
    sget-object v6, Lcom/htc/android/mail/server/HUXServer;->STR_NIL:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v6, v1}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1330
    .end local v1           #tagByteString:Lcom/htc/android/mail/ByteString;
    .end local v2           #tagId:J
    .end local v4           #tagIdStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 1327
    .restart local v1       #tagByteString:Lcom/htc/android/mail/ByteString;
    .restart local v2       #tagId:J
    .restart local v4       #tagIdStr:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;-><init>(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private processFetchFlagsAndAnnotation(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Ljava/util/HashMap;Z)V
    .locals 51
    .parameter "mailbox"
    .parameter
    .parameter
    .parameter "onlyAnnotation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .local p3, uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v40

    .line 884
    .local v40, size:I
    if-eqz v40, :cond_0

    .line 886
    add-int/lit8 v4, v40, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/android/mail/ByteString;

    .line 887
    .local v29, r:Lcom/htc/android/mail/ByteString;
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 889
    .local v45, token:[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    move-object/from16 v0, v45

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    aget-object v4, v45, v4

    sget-object v5, Lcom/htc/android/mail/server/HUXServer;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v5}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 891
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->processFetchResponse(Ljava/util/List;)Lcom/htc/android/mail/server/ImapServer$ImapResponses;

    move-result-object v20

    .line 892
    .local v20, imapResponses:Lcom/htc/android/mail/server/ImapServer$ImapResponses;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->getFetchResponses()Ljava/util/ArrayList;

    move-result-object v38

    .line 894
    .local v38, responsesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v39, seenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v47, unseenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 898
    .local v36, remoteRelations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->load(Landroid/content/Context;)V

    .line 900
    new-instance v13, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v13}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    .line 901
    .local v13, checkedTagArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v28, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 903
    .local v16, fetchMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    const-string v4, "UID"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/ByteString;

    .line 904
    .local v12, byteString:Lcom/htc/android/mail/ByteString;
    if-eqz v12, :cond_3

    .line 905
    invoke-virtual {v12}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v46

    .line 908
    .local v46, uid:Ljava/lang/String;
    const-string v4, "FLAGS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #byteString:Lcom/htc/android/mail/ByteString;
    check-cast v12, Lcom/htc/android/mail/ByteString;

    .line 909
    .restart local v12       #byteString:Lcom/htc/android/mail/ByteString;
    if-eqz v12, :cond_4

    .line 910
    invoke-virtual {v12}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v41

    .line 911
    .local v41, str:Ljava/lang/String;
    const-string v4, "\\Seen"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 912
    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    .end local v41           #str:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v4, "ANNOTATION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #byteString:Lcom/htc/android/mail/ByteString;
    check-cast v12, Lcom/htc/android/mail/ByteString;

    .line 920
    .restart local v12       #byteString:Lcom/htc/android/mail/ByteString;
    if-eqz v12, :cond_3

    .line 921
    sget-object v4, Lcom/htc/android/mail/server/HUXServer;->STR_NIL:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v4, v12}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 922
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/htc/android/mail/server/HUXServer;->processFetchResponse(Lcom/htc/android/mail/ByteString;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v10

    .line 923
    .local v10, annotationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 924
    .local v22, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 925
    .local v21, key:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/server/HUXServer;->parseAnnotation(Ljava/lang/String;Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    move-result-object v42

    .line 926
    .local v42, tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    if-eqz v42, :cond_5

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->checkAndUpdate(Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;Ljava/util/ArrayList;)V

    .line 928
    new-instance v30, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;-><init>(Lcom/htc/android/mail/server/HUXServer$1;)V

    .line 929
    .local v30, relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    move-object/from16 v0, v30

    iput-wide v4, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    .line 930
    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/android/mail/util/SparseArray;

    .line 931
    .local v33, relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    if-nez v33, :cond_6

    .line 932
    new-instance v33, Lcom/htc/android/mail/util/SparseArray;

    .end local v33           #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    invoke-direct/range {v33 .. v33}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 933
    .restart local v33       #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_6
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v5, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 914
    .end local v10           #annotationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #key:Ljava/lang/String;
    .end local v22           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v30           #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    .end local v33           #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v42           #tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    .restart local v41       #str:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 939
    .end local v12           #byteString:Lcom/htc/android/mail/ByteString;
    .end local v16           #fetchMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    .end local v41           #str:Ljava/lang/String;
    .end local v46           #uid:Ljava/lang/String;
    :cond_8
    const/16 v38, 0x0

    .line 941
    if-nez p4, :cond_a

    .line 942
    if-eqz v47, :cond_9

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 943
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V

    .line 946
    :cond_9
    if-eqz v39, :cond_a

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 947
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V

    .line 952
    :cond_a
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_mailboxId IN (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const/16 v50, 0x6

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v49

    aput-object v49, v8, v9

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 954
    .local v7, where:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "messages._uid"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "messages_tags_relation._id"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "messages_tags_relation._tagId"

    aput-object v5, v6, v4

    .line 955
    .local v6, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 956
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 958
    .local v25, localRelations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;>;"
    if-eqz v14, :cond_d

    .line 959
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 960
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 961
    .restart local v46       #uid:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 962
    .local v31, relationId:J
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 963
    .local v43, tagId:J
    new-instance v30, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;-><init>(Lcom/htc/android/mail/server/HUXServer$1;)V

    .line 964
    .restart local v30       #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->id:J

    .line 965
    move-wide/from16 v0, v43

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    .line 966
    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/android/mail/util/SparseArray;

    .line 967
    .restart local v33       #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    if-nez v33, :cond_b

    .line 968
    new-instance v33, Lcom/htc/android/mail/util/SparseArray;

    .end local v33           #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    invoke-direct/range {v33 .. v33}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 969
    .restart local v33       #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v46

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_b
    move-object/from16 v0, v33

    move-wide/from16 v1, v43

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 973
    .end local v30           #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    .end local v31           #relationId:J
    .end local v33           #relationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v43           #tagId:J
    .end local v46           #uid:Ljava/lang/String;
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_d
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    .line 977
    .local v34, remoteKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 978
    .local v37, remoteUid:Ljava/lang/String;
    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/util/SparseArray;

    .line 979
    .local v35, remoteRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/android/mail/util/SparseArray;

    .line 980
    .local v24, localRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    if-eqz v24, :cond_e

    if-eqz v35, :cond_e

    .line 981
    invoke-virtual/range {v35 .. v35}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v40

    .line 982
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v40

    if-ge v0, v1, :cond_e

    .line 983
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;

    .line 985
    .restart local v30       #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 986
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/util/SparseArray;->remove(J)V

    .line 987
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    const/4 v8, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5, v8}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 982
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 992
    .end local v17           #i:I
    .end local v24           #localRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v30           #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    .end local v35           #remoteRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v37           #remoteUid:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    .line 993
    .local v23, localKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 994
    .local v26, localUid:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/android/mail/util/SparseArray;

    .line 995
    .restart local v24       #localRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    if-eqz v24, :cond_11

    .line 996
    invoke-virtual/range {v24 .. v24}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v40

    .line 997
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v40

    if-ge v0, v1, :cond_11

    .line 998
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;

    .line 999
    .restart local v30       #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    if-nez v30, :cond_12

    .line 997
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1000
    :cond_12
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1001
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->id:J

    move-wide/from16 v49, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1002
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1006
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #i:I
    .end local v24           #localRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v26           #localUid:Ljava/lang/String;
    .end local v30           #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    :cond_13
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    .line 1007
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_14
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 1008
    .restart local v37       #remoteUid:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 1009
    .local v27, messageId:Ljava/lang/Long;
    if-eqz v27, :cond_14

    .line 1010
    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/util/SparseArray;

    .line 1011
    .restart local v35       #remoteRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    if-eqz v35, :cond_14

    .line 1012
    invoke-virtual/range {v35 .. v35}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v40

    .line 1013
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v40

    if-ge v0, v1, :cond_14

    .line 1014
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;

    .line 1015
    .restart local v30       #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    if-nez v30, :cond_15

    .line 1013
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1016
    :cond_15
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1017
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v48, Landroid/content/ContentValues;

    invoke-direct/range {v48 .. v48}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v48, values:Landroid/content/ContentValues;
    const-string v4, "_messageId"

    move-object/from16 v0, v48

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1019
    const-string v4, "_tagId"

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;->tagId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1021
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1026
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #i:I
    .end local v27           #messageId:Ljava/lang/Long;
    .end local v30           #relation:Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;
    .end local v35           #remoteRelationSparseArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/server/HUXServer$MessagesTagsRelation;>;"
    .end local v37           #remoteUid:Ljava/lang/String;
    .end local v48           #values:Landroid/content/ContentValues;
    :cond_16
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1028
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mail"

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1029
    :catch_0
    move-exception v15

    .line 1030
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1031
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 1032
    .local v15, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private processFetchTags(Ljava/util/ArrayList;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1348
    .local p1, serverTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1350
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1351
    .local v20, serverTagSize:I
    if-nez v20, :cond_1

    .line 1352
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v16, localTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;>;"
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_tagName"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1357
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 1358
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1359
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1360
    .local v12, id:I
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1361
    .local v17, name:Ljava/lang/String;
    new-instance v21, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    int-to-long v3, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v4, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;-><init>(JLjava/lang/String;)V

    .line 1362
    .local v21, tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1364
    .end local v12           #id:I
    .end local v17           #name:Ljava/lang/String;
    .end local v21           #tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1369
    .local v15, localTagSize:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v18, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 1371
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v11, 0x0

    .line 1372
    .local v11, i:I
    const/4 v13, 0x0

    .line 1373
    .local v13, j:I
    const/16 v19, 0x0

    .line 1374
    .local v19, serverTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    const/4 v14, 0x0

    .line 1375
    .local v14, localTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    :cond_4
    :goto_2
    move/from16 v0, v20

    if-ge v11, v0, :cond_8

    if-ge v13, v15, :cond_8

    .line 1376
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #serverTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    check-cast v19, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    .line 1377
    .restart local v19       #serverTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #localTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    check-cast v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    .line 1378
    .restart local v14       #localTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-wide v5, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 1379
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    iget-object v4, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1380
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1381
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1382
    const-string v3, "_tagName"

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1383
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 1386
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1387
    :cond_6
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-wide v5, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 1388
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1389
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1390
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1392
    :cond_7
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-wide v5, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 1393
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1394
    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1395
    const-string v3, "_tagName"

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1397
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1398
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v11, v11, 0x1

    .line 1400
    goto/16 :goto_2

    .line 1403
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    .line 1404
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1405
    .restart local v22       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #serverTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    check-cast v19, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    .line 1406
    .restart local v19       #serverTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    const-string v3, "_id"

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1407
    const-string v3, "_tagName"

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1409
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1410
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1413
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_9
    :goto_4
    if-ge v13, v15, :cond_a

    .line 1414
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #localTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    check-cast v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    .line 1415
    .restart local v14       #localTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1416
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v14, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1417
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1420
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1422
    :try_start_0
    const-string v3, "mail"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1423
    :catch_0
    move-exception v10

    .line 1424
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1425
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1426
    .local v10, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private pruneFetchRefreshListByDate(Ljava/util/Map;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1433
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1458
    :goto_0
    return-object v7

    .line 1435
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_mailboxId IN (%s)"

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    const/4 v11, 0x6

    invoke-static {v5, v10, v11}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1437
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v12

    const-string v5, "_uid"

    aput-object v5, v2, v13

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1438
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1440
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    const-string v0, "_uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, uid:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1445
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1446
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1449
    .end local v8           #uid:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1452
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1453
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1455
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 1456
    .local v9, uidArray:[Ljava/lang/String;
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1457
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/android/mail/server/ImapServer$StringComparator;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/server/ImapServer$StringComparator;-><init>(Lcom/htc/android/mail/server/ImapServer;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private sendSyncAll()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1552
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1553
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x7530

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1554
    const/16 v7, 0x7530

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1556
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v7, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 1557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const-string v9, "provserver"

    invoke-static {v8, v9}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/snc/user/authThree/syncAll"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    .local v3, path:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1559
    .local v4, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 1561
    .local v0, basic:Ljava/lang/String;
    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Basic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v7, "X-VZW-DEVICE-INFO"

    const-string v8, "Android;2.3"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v7, "Accept"

    const-string v8, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip,deflate"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v7, "Accept-Charset"

    const-string v8, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v7, "Content-type"

    const-string v8, "application/xhtml+xml"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v7, "Content-language"

    const-string v8, "en-US"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v7, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1571
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 1572
    .local v6, status:I
    :goto_0
    const-string v7, "HUXServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncall result status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    const-wide/16 v7, 0x1388

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1579
    :goto_1
    iput-object v10, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 1581
    return-void

    .line 1571
    .end local v6           #status:I
    :cond_0
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    goto :goto_0

    .line 1575
    .restart local v6       #status:I
    :catch_0
    move-exception v1

    .line 1576
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "HUXServer"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1579
    .end local v0           #basic:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #status:I
    :catchall_0
    move-exception v7

    iput-object v10, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    throw v7
.end method

.method private updateLatestNumMailStatus(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 20
    .parameter "mailbox"
    .parameter "minUid"
    .parameter "maxUid"
    .parameter
    .parameter "onlyAnnotation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 839
    .local p4, uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "HUXServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateLatestNumMailStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 841
    .local v4, cal:Ljava/util/Calendar;
    new-instance v14, Ljava/util/SimpleTimeZone;

    const/4 v15, 0x0

    const-string v16, "GMT"

    invoke-direct/range {v14 .. v16}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 842
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    invoke-virtual {v4, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 843
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 845
    .local v8, sinceDate:Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v14, "d-MMM-yyyy"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 846
    .local v7, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 847
    .local v9, sinceDateStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v10

    .line 849
    .local v10, tag:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;

    move-result-object v5

    .line 850
    .local v5, keyword:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 851
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %s:%s SINCE %s %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    const/16 v17, 0x2

    aput-object p3, v16, v17

    const/16 v17, 0x3

    aput-object v9, v16, v17

    const/16 v17, 0x4

    aput-object v5, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 858
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 859
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/server/HUXServer;->processSearchUID(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 860
    .local v11, uidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 862
    if-nez p5, :cond_2

    .line 864
    const-string v14, ","

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/htc/android/mail/server/HUXServer;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 865
    .local v12, uidSeq:Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_mailboxId IN (%s) AND _uid NOT IN (%s) AND abs(_uid) >= %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    const/16 v17, 0x2

    aput-object p2, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 867
    .local v13, where:Ljava/lang/String;
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "HUXServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete where: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 872
    .end local v12           #uidSeq:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v10

    .line 874
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID FETCH %s (FLAGS ANNOTATION (\"/vendor/vzw/tag/*\" value.priv))"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    const-string v18, ","

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/android/mail/server/HUXServer;->processFetchFlagsAndAnnotation(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Ljava/util/HashMap;Z)V

    .line 879
    :cond_3
    return-void

    .line 854
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v11           #uidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %s:%s SINCE %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    const/16 v17, 0x2

    aput-object p3, v16, v17

    const/16 v17, 0x3

    aput-object v9, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateMailStatusWithQrsync(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/server/ImapServer$ImapResponses;)Z
    .locals 17
    .parameter "mailbox"
    .parameter "responses"

    .prologue
    .line 802
    if-nez p2, :cond_1

    const/4 v2, 0x0

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 804
    :cond_1
    const/4 v2, 0x0

    .line 805
    .local v2, changed:Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v8, readUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v11, unreadUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->getFetchResponses()Ljava/util/ArrayList;

    move-result-object v3

    .line 809
    .local v3, fetchRespones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v2, 0x1

    .line 810
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 811
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    const-string v14, "UID"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/ByteString;

    .line 812
    .local v10, uidBS:Lcom/htc/android/mail/ByteString;
    if-eqz v10, :cond_3

    .line 813
    invoke-virtual {v10}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 814
    .local v9, uid:Ljava/lang/String;
    const-string v14, "FLAGS"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/ByteString;

    .line 815
    .local v5, flagsBS:Lcom/htc/android/mail/ByteString;
    if-eqz v5, :cond_3

    .line 816
    invoke-virtual {v5}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, flags:Ljava/lang/String;
    const-string v14, "\\Seen"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 818
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 820
    :cond_4
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    .end local v4           #flags:Ljava/lang/String;
    .end local v5           #flagsBS:Lcom/htc/android/mail/ByteString;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    .end local v9           #uid:Ljava/lang/String;
    .end local v10           #uidBS:Lcom/htc/android/mail/ByteString;
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v14}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V

    .line 825
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v14}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->getImapVanishedResponse()Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    move-result-object v12

    .line 828
    .local v12, vanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;
    const-string v14, "_uid"

    invoke-virtual {v12, v14}, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;->convertToSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 829
    .local v13, where:Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 830
    const/4 v2, 0x1

    .line 831
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ) AND _mailboxId IN ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/16 v16, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 832
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "HUXServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete where: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public catenate(Lcom/htc/android/mail/Mailbox;JJ)[Ljava/lang/String;
    .locals 39
    .parameter "mailbox"
    .parameter "messageId"
    .parameter "refMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->probe()V

    .line 436
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->init()V

    .line 440
    :cond_0
    const/16 v16, 0x0

    .line 441
    .local v16, messageCursor:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 442
    .local v27, refMessageCursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 443
    .local v17, plainCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 444
    .local v18, htmlCursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 445
    .local v19, partsCursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 449
    .local v20, relatedCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 450
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_7

    .line 451
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1
    if-eqz v27, :cond_2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_3
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_4
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_5
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_6
    return-object v5

    .line 454
    :cond_7
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_8
    if-eqz v27, :cond_9

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_9
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_a
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_b
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_c
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 456
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 457
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 458
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_e
    if-eqz v27, :cond_f

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_f
    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_10
    if-eqz v18, :cond_11

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_11
    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_12
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 461
    :cond_13
    :try_start_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_19

    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_14
    if-eqz v27, :cond_15

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_15
    if-eqz v17, :cond_16

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_16
    if-eqz v18, :cond_17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_17
    if-eqz v19, :cond_18

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_18
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 464
    :cond_19
    :try_start_4
    const-string v5, "_messageid"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 465
    .local v9, msgIdInHeader:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/htc/android/mail/server/HUXServer;->getUidFromServer(Lcom/htc/android/mail/Mailbox;JLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 467
    .local v36, uid:Ljava/lang/String;
    if-eqz v36, :cond_1f

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->generateURLAuth(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 469
    .local v37, urlAuth:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v36, v5, v6

    const/4 v6, 0x1

    aput-object v37, v5, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 530
    if-eqz v16, :cond_1a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1a
    if-eqz v27, :cond_1b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_1b
    if-eqz v17, :cond_1c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_1c
    if-eqz v18, :cond_1d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1d
    if-eqz v19, :cond_1e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_1e
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 472
    .end local v37           #urlAuth:Ljava/lang/String;
    :cond_1f
    :try_start_5
    const-string v5, "_mailboxId"

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 473
    .local v29, refMessageMailboxId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v28

    .line 474
    .local v28, refMessageMailbox:Lcom/htc/android/mail/Mailbox;
    const-string v5, "_uid"

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 475
    .local v31, refMessageUid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/server/HUXServer;->getBodyStructure(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;J)Lcom/htc/android/mail/IMap4Body;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v24

    .line 478
    .local v24, imap4body:Lcom/htc/android/mail/IMap4Body;
    if-nez v24, :cond_25

    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_20

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_20

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_20
    if-eqz v27, :cond_21

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_21

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_21
    if-eqz v17, :cond_22

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_22
    if-eqz v18, :cond_23

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_23

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_23
    if-eqz v19, :cond_24

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_24

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_24
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 480
    :cond_25
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->getFlagsForAppend(Lcom/htc/android/mail/Mailbox;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v23

    .line 481
    .local v23, flags:Ljava/lang/String;
    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 484
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message = %d AND _filename=\'\' AND _mimetype=\'text/plain\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 486
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message = %d AND _filename=\'\' AND _mimetype=\'text/html\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 488
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message = %d AND _filename<>\'\' AND _contenttype = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    sget v10, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v5, 0x6

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_filename"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "_filepath"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string v6, "_mimetype"

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string v6, "_contenttype"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string v6, "_cid"

    aput-object v6, v12, v5

    const/4 v5, 0x5

    const-string v6, "_filereference"

    aput-object v6, v12, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 491
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message = %d AND _filename<>\'\' AND _filepath<>\'\' AND _contenttype = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    sget v10, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_filename"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "_filepath"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string v6, "_mimetype"

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string v6, "_contenttype"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string v6, "_cid"

    aput-object v6, v12, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v35

    .line 497
    .local v35, tag:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v15, mailbody:Ljava/lang/StringBuilder;
    new-instance v5, Lcom/htc/android/mail/CountSizeOutputStream;

    invoke-direct {v5}, Lcom/htc/android/mail/CountSizeOutputStream;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    move-object/from16 v14, p0

    move-wide/from16 v21, p2

    .line 499
    invoke-direct/range {v14 .. v22}, Lcom/htc/android/mail/server/HUXServer;->issueBodyCatenate(Ljava/lang/StringBuilder;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;J)V

    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    invoke-virtual {v5}, Lcom/htc/android/mail/CountSizeOutputStream;->getSize()I

    move-result v34

    .line 501
    .local v34, size:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/mail/server/HUXServer;->mCountOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    .line 502
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->countOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    .line 504
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s APPEND %s %s CATENATE (TEXT {%s}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v35, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    aput-object v10, v7, v8

    const/4 v8, 0x2

    aput-object v23, v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/HUXServer;->mCountOutStream:Lcom/htc/android/mail/CountSizeOutputStream;

    invoke-virtual {v10}, Lcom/htc/android/mail/CountSizeOutputStream;->getCheckPoint()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v26

    .local v26, prepare:Lcom/htc/android/mail/ByteString;
    move-object/from16 v14, p0

    move-wide/from16 v21, p2

    .line 507
    invoke-direct/range {v14 .. v22}, Lcom/htc/android/mail/server/HUXServer;->issueBodyCatenate(Ljava/lang/StringBuilder;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;J)V

    .line 509
    const-string v5, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 514
    .local v25, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v5}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v32

    .line 515
    .local v32, response:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 517
    const-string v5, " "

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 518
    .local v33, responses:[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v5, v0

    const/4 v6, 0x5

    if-ge v5, v6, :cond_26

    const-string v5, "HUXServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_26
    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v38, values:Landroid/content/ContentValues;
    const-string v5, "_local"

    const-string v6, "0"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v5, 0x4

    aget-object v5, v33, v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    aget-object v7, v33, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 522
    const-string v5, "_uid"

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_id = \'%d\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v0, v13, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->generateURLAuth(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 526
    .restart local v37       #urlAuth:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v36, v5, v6

    const/4 v6, 0x1

    aput-object v37, v5, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 530
    if-eqz v16, :cond_27

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_27
    if-eqz v27, :cond_28

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_28
    if-eqz v17, :cond_29

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_29
    if-eqz v18, :cond_2a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_2a
    if-eqz v19, :cond_2b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_2b
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 528
    .end local v33           #responses:[Ljava/lang/String;
    .end local v37           #urlAuth:Ljava/lang/String;
    .end local v38           #values:Landroid/content/ContentValues;
    :cond_2c
    const/4 v5, 0x0

    .line 530
    if-eqz v16, :cond_2d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_2d
    if-eqz v27, :cond_2e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_2e
    if-eqz v17, :cond_2f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_2f
    if-eqz v18, :cond_30

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_30
    if-eqz v19, :cond_31

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_31
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 530
    .end local v9           #msgIdInHeader:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    .end local v15           #mailbody:Ljava/lang/StringBuilder;
    .end local v23           #flags:Ljava/lang/String;
    .end local v24           #imap4body:Lcom/htc/android/mail/IMap4Body;
    .end local v25           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v26           #prepare:Lcom/htc/android/mail/ByteString;
    .end local v28           #refMessageMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v29           #refMessageMailboxId:J
    .end local v31           #refMessageUid:Ljava/lang/String;
    .end local v32           #response:Ljava/lang/String;
    .end local v34           #size:I
    .end local v35           #tag:Ljava/lang/String;
    .end local v36           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v16, :cond_32

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_32

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_32
    if-eqz v27, :cond_33

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_33
    if-eqz v17, :cond_34

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_34
    if-eqz v18, :cond_35

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_35

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_35
    if-eqz v19, :cond_36

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_36

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_36
    if-eqz v20, :cond_37

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_37

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_37
    throw v5
.end method

.method public close()V
    .locals 7

    .prologue
    .line 1509
    iget-object v2, p0, Lcom/htc/android/mail/server/ImapServer;->mSocket:Ljava/net/Socket;

    .line 1510
    .local v2, socket:Ljava/net/Socket;
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mOut:Ljava/io/BufferedOutputStream;

    .line 1511
    .local v3, out:Ljava/io/BufferedOutputStream;
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mIn:Ljava/io/BufferedInputStream;

    .line 1512
    .local v4, in:Ljava/io/BufferedInputStream;
    iget-object v5, p0, Lcom/htc/android/mail/server/HUXServer;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 1514
    .local v5, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/android/mail/server/HUXServer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/server/HUXServer$1;-><init>(Lcom/htc/android/mail/server/HUXServer;Ljava/net/Socket;Ljava/io/BufferedOutputStream;Ljava/io/BufferedInputStream;Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1546
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 1547
    return-void
.end method

.method protected deleteMailMarkedToDelete()V
    .locals 7

    .prologue
    .line 2003
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_del = \'2\' AND _account IN (SELECT _id FROM accounts WHERE _protocol = %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    .end local v1           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HUXServer"

    const-string v3, "delete message fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getFetchInfoCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tag"
    .parameter "uid"

    .prologue
    .line 1287
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s UID FETCH %s (BODYSTRUCTURE ANNOTATION (\"/vendor/vzw/tag/*\" value.priv))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFetchNotDoneMessageList(Lcom/htc/android/mail/Mailbox;)Ljava/util/List;
    .locals 21
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1613
    const/4 v10, 0x0

    .line 1615
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_mailboxId IN (%s) AND _done = \'0\' AND _uid is not null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1618
    .local v5, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "_account"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "_mailboxId"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1619
    if-eqz v10, :cond_3

    .line 1625
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1626
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1627
    .local v12, id:J
    const-string v2, "_uid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1628
    .local v18, uid:Ljava/lang/String;
    const-string v2, "_account"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1629
    .local v8, accountId:J
    const-string v2, "_mailboxId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1630
    .local v16, mailboxId:J
    new-instance v15, Lcom/htc/android/mail/MailMessage;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-direct {v15, v12, v13, v0, v2}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1631
    .local v15, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {v15, v8, v9}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 1632
    invoke-virtual/range {v15 .. v17}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 1633
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #accountId:J
    .end local v12           #id:J
    .end local v14           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    .end local v15           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v16           #mailboxId:J
    .end local v18           #uid:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1638
    .local v11, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "HUXServer"

    const-string v3, "catch exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1641
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1646
    :cond_0
    const/4 v14, 0x0

    .end local v11           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-object v14

    .line 1640
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1641
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1640
    :cond_2
    throw v2

    .restart local v5       #where:Ljava/lang/String;
    .restart local v14       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    :cond_3
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1641
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected getFlagsForAppend(Lcom/htc/android/mail/Mailbox;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "mailbox"
    .parameter "cursor"

    .prologue
    const v4, 0x7ffffffd

    const v3, 0x7ffffffc

    const/4 v1, 0x1

    .line 128
    const-string v2, "_read"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 130
    .local v1, isSeen:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 131
    iget v2, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v2, v4, :cond_1

    .line 132
    const-string v0, "(\\Seen vSent)"

    .line 147
    .local v0, flags:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 128
    .end local v0           #flags:Ljava/lang/String;
    .end local v1           #isSeen:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v1       #isSeen:Z
    :cond_1
    iget v2, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v2, v3, :cond_2

    .line 134
    const-string v0, "(\\Seen vDraft)"

    .restart local v0       #flags:Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v0           #flags:Ljava/lang/String;
    :cond_2
    const-string v0, "(\\Seen)"

    .restart local v0       #flags:Ljava/lang/String;
    goto :goto_1

    .line 139
    .end local v0           #flags:Ljava/lang/String;
    :cond_3
    iget v2, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v2, v4, :cond_4

    .line 140
    const-string v0, "(vSent)"

    .restart local v0       #flags:Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v0           #flags:Ljava/lang/String;
    :cond_4
    iget v2, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v2, v3, :cond_5

    .line 142
    const-string v0, "(vDraft)"

    .restart local v0       #flags:Ljava/lang/String;
    goto :goto_1

    .line 144
    .end local v0           #flags:Ljava/lang/String;
    :cond_5
    const-string v0, "()"

    .restart local v0       #flags:Ljava/lang/String;
    goto :goto_1
.end method

.method protected getHeaderFieldsForFetchHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2012
    const-string v0, "subject from date content-type to cc message-id references importance reply-to X-VZW-SOURCE-USER"

    return-object v0
.end method

.method protected getLocalMailForSyncUp()Landroid/database/Cursor;
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 2028
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v8

    .line 2029
    .local v8, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v8, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-object v4

    .line 2030
    :cond_1
    invoke-virtual {v8}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    .line 2031
    .local v7, draftMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v7, :cond_0

    .line 2032
    invoke-virtual {v8}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 2033
    .local v9, sentMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_0

    .line 2034
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_del = -1 AND _local = 1 AND _uid IS NULL AND (_mailboxId IN (%s) OR _mailboxId IN (%s))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v10, v7, v13}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v11

    iget-object v10, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v10, v9, v13}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v12

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    .local v3, where:Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    .line 2038
    .local v2, projections:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    move-object v4, v6

    .line 2039
    goto :goto_0
.end method

.method protected getMaxUid()J
    .locals 14

    .prologue
    .line 313
    const-wide/16 v8, 0x0

    .line 314
    .local v8, maxUid:J
    const/4 v6, 0x0

    .line 316
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_mailboxId IN (%s) AND _sync = 1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    const/4 v13, 0x6

    invoke-static {v5, v12, v13}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(abs(_uid)) as maxUid"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_0

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "maxUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 323
    .local v10, uid:J
    move-wide v8, v10

    .line 329
    .end local v10           #uid:J
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_1
    return-wide v8

    .line 326
    :catch_0
    move-exception v7

    .line 327
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "HUXServer"

    const-string v1, "catch RemoteException"

    invoke-static {v0, v1, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    throw v0
.end method

.method public getSyncResult()[Lcom/htc/android/mail/server/Server$SyncResult;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/HUXServer$SyncResults;->toArray()[Lcom/htc/android/mail/server/Server$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/HUXServer;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected issueAdditionalHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "X-VZW-MESSAGE-TYPE: email"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X-VZW-SOURCEID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X-VZW-SOURCE-USER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/HUXServer;->write(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected parseMailbox(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .local p2, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    .local p3, mailboxparentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    const-wide/16 v12, 0x0

    .line 1465
    .local v12, nowParentId:J
    const/4 v11, 0x0

    .line 1467
    .local v11, nowParentBox:Lcom/htc/android/mail/Mailbox;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    .line 1468
    .local v15, size:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    add-int/lit8 v2, v15, -0x1

    if-ge v8, v2, :cond_7

    .line 1469
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/ByteString;

    .line 1470
    .local v14, r:Lcom/htc/android/mail/ByteString;
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HUXServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v14}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1472
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1474
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1475
    .local v4, mailboxName:Ljava/lang/String;
    const-string v2, "INBOX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    .end local v4           #mailboxName:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1477
    .restart local v4       #mailboxName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 1479
    .local v9, length:I
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    .line 1480
    const/4 v2, 0x1

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1483
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HasChildren"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Noselect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1484
    new-instance v1, Lcom/htc/android/mail/Mailbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v16, "Noselect"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-direct/range {v1 .. v7}, Lcom/htc/android/mail/Mailbox;-><init>(JLjava/lang/String;ZII)V

    .line 1486
    .local v1, box:Lcom/htc/android/mail/Mailbox;
    invoke-virtual {v1}, Lcom/htc/android/mail/Mailbox;->decode()V

    .line 1487
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->updateMailboxToDb(Lcom/htc/android/mail/Mailbox;)J

    move-result-wide v12

    .line 1488
    move-object v11, v1

    .line 1489
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1484
    .end local v1           #box:Lcom/htc/android/mail/Mailbox;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1491
    :cond_5
    new-instance v1, Lcom/htc/android/mail/Mailbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/android/mail/Mailbox;-><init>(JLjava/lang/String;ZII)V

    .line 1492
    .restart local v1       #box:Lcom/htc/android/mail/Mailbox;
    invoke-virtual {v1}, Lcom/htc/android/mail/Mailbox;->decode()V

    .line 1493
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_6

    if-eqz v11, :cond_6

    iget-object v2, v1, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    iget-object v3, v11, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1494
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    .line 1499
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1496
    :cond_6
    const-wide/16 v12, 0x0

    .line 1497
    const/4 v11, 0x0

    goto :goto_3

    .line 1503
    .end local v1           #box:Lcom/htc/android/mail/Mailbox;
    .end local v4           #mailboxName:Ljava/lang/String;
    .end local v9           #length:I
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v14           #r:Lcom/htc/android/mail/ByteString;
    :cond_7
    return-void
.end method

.method protected preFetchMailAgain()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    iget-object v1, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->load(Landroid/content/Context;)V

    .line 1293
    return-void
.end method

.method protected processAnnotations(Lcom/htc/android/mail/MailMessage;Lcom/htc/android/mail/ByteString;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "mailMessage"
    .parameter "byteString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/MailMessage;",
            "Lcom/htc/android/mail/ByteString;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    .local p3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Lcom/htc/android/mail/server/HUXServer;->STR_NIL:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v7, p2}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1312
    :cond_0
    return-void

    .line 1298
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Lcom/htc/android/mail/server/HUXServer;->processFetchResponse(Lcom/htc/android/mail/ByteString;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 1299
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1300
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1301
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/ByteString;

    invoke-direct {p0, v2, v7}, Lcom/htc/android/mail/server/HUXServer;->parseAnnotation(Ljava/lang/String;Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    move-result-object v5

    .line 1302
    .local v5, tag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;
    if-eqz v5, :cond_2

    .line 1303
    iget-object v7, p0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    invoke-virtual {v7, v5, p3}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->checkAndUpdate(Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;Ljava/util/ArrayList;)V

    .line 1304
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sMessagesTagsRelationURI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1305
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1306
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "_messageId"

    iget-wide v8, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    const-string v7, "_tagId"

    iget-wide v8, v5, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1308
    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1309
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected processFetchHeader(Ljava/util/List;)Ljava/util/List;
    .locals 60
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1651
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v46

    .line 1653
    .local v46, size:I
    if-nez v46, :cond_1

    .line 1654
    const/16 v36, 0x0

    .line 1945
    :cond_0
    :goto_0
    return-object v36

    .line 1656
    :cond_1
    add-int/lit8 v9, v46, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/htc/android/mail/ByteString;

    .line 1657
    .local v42, r:Lcom/htc/android/mail/ByteString;
    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v56, " "

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    .line 1659
    .local v53, token:[Ljava/lang/String;
    move-object/from16 v0, v53

    array-length v9, v0

    const/16 v56, 0x2

    move/from16 v0, v56

    if-lt v9, v0, :cond_2

    move-object/from16 v0, v53

    array-length v9, v0

    const/16 v56, 0x1

    move/from16 v0, v56

    if-le v9, v0, :cond_3

    const/4 v9, 0x1

    aget-object v9, v53, v9

    sget-object v56, Lcom/htc/android/mail/server/HUXServer;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v56 .. v56}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 1660
    :cond_2
    const/16 v36, 0x0

    goto :goto_0

    .line 1663
    :cond_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    .local v21, currentMessage:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const-string v40, ""

    .line 1665
    .local v40, nowUid:Ljava/lang/String;
    const/16 v54, 0x0

    .line 1666
    .local v54, totalSize:I
    const/16 v43, 0x0

    .line 1667
    .local v43, readFlag:Z
    const/16 v16, 0x0

    .line 1668
    .local v16, bodyHeaderSize:I
    const-string v32, ""

    .line 1669
    .local v32, internaldate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v31

    .line 1672
    .local v31, indate:Ljava/util/Calendar;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    .local v36, mailMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v41, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v29, 0x0

    .local v29, i:I
    :goto_1
    add-int/lit8 v9, v46, -0x1

    move/from16 v0, v29

    if-ge v0, v9, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->isStop()Z

    move-result v9

    if-nez v9, :cond_26

    .line 1679
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    .end local v42           #r:Lcom/htc/android/mail/ByteString;
    check-cast v42, Lcom/htc/android/mail/ByteString;

    .line 1680
    .restart local v42       #r:Lcom/htc/android/mail/ByteString;
    sget-object v9, Lcom/htc/android/mail/server/HUXServer;->STR_STAR:Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1682
    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v56, " "

    const/16 v57, 0x4

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v48

    .line 1683
    .local v48, splitStr:[Ljava/lang/String;
    move-object/from16 v0, v48

    array-length v9, v0

    const/16 v56, 0x4

    move/from16 v0, v56

    if-ge v9, v0, :cond_5

    .line 1678
    .end local v48           #splitStr:[Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 1687
    .restart local v48       #splitStr:[Ljava/lang/String;
    :cond_5
    const-string v9, "FETCH"

    const/16 v56, 0x2

    aget-object v56, v48, v56

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1692
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 1694
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v9

    const/16 v56, 0x7

    move/from16 v0, v56

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    .line 1695
    .local v33, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    .line 1696
    .local v24, found:Z
    if-eqz v24, :cond_4

    .line 1697
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    .local v49, store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, ""

    .line 1699
    .local v12, FlagsValue:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_6

    .line 1700
    const-string v9, "HUXServer"

    const-string v56, " try parsing header"

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_6
    const/4 v9, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->parsePairString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v49

    .line 1702
    const-string v9, "UID"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1703
    const-string v9, "UID"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1704
    :cond_7
    const-string v9, "RFC822.SIZE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 1705
    const-string v9, "RFC822.SIZE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 1706
    :cond_8
    const-string v9, "FLAGS"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1707
    const-string v9, "FLAGS"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1708
    const-string v9, "\\Seen"

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1709
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_9

    .line 1710
    const-string v9, "HUXServer"

    const-string v56, "Seen !"

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_9
    const/16 v43, 0x1

    .line 1714
    :cond_a
    const-string v9, "INTERNALDATE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 1715
    const-string v9, "INTERNALDATE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1716
    :cond_b
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_c

    .line 1717
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "**************"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v31

    .line 1720
    const/4 v9, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1721
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_4

    .line 1722
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "UID is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", RFC2822.SIZE is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", FLAGS is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", HeaderSize is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1748
    .end local v12           #FlagsValue:Ljava/lang/String;
    .end local v24           #found:Z
    .end local v33           #m:Ljava/util/regex/Matcher;
    .end local v48           #splitStr:[Ljava/lang/String;
    .end local v49           #store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v50

    .local v50, str:Ljava/lang/String;
    if-eqz v50, :cond_25

    const-string v9, ")"

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, ")"

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    const-string v9, "FLAGS"

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "UID"

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "RFC822.SIZE"

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1753
    :cond_e
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v56, 0x1

    move/from16 v0, v56

    if-le v9, v0, :cond_15

    .line 1754
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v9

    const/16 v56, 0x8

    move/from16 v0, v56

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v33

    .line 1755
    .restart local v33       #m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v33 .. v33}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    .line 1756
    .restart local v24       #found:Z
    if-eqz v24, :cond_15

    .line 1757
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .restart local v49       #store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, ""

    .line 1759
    .restart local v12       #FlagsValue:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_f

    .line 1760
    const-string v9, "HUXServer"

    const-string v56, " try parsing end"

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_f
    const/4 v9, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->parsePairString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v49

    .line 1763
    const-string v9, "UID"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 1764
    const-string v9, "UID"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1765
    :cond_10
    const-string v9, "RFC822.SIZE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 1766
    const-string v9, "RFC822.SIZE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 1767
    :cond_11
    const-string v9, "FLAGS"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1768
    const-string v9, "FLAGS"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1769
    const-string v9, "\\Seen"

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1770
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_12

    .line 1771
    const-string v9, "HUXServer"

    const-string v56, "Seen !"

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_12
    const/16 v43, 0x1

    .line 1775
    :cond_13
    const-string v9, "INTERNALDATE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 1776
    const-string v9, "INTERNALDATE"

    move-object/from16 v0, v49

    invoke-static {v0, v9}, Lcom/htc/android/mail/Util;->getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1777
    :cond_14
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v31

    .line 1780
    .end local v12           #FlagsValue:Ljava/lang/String;
    .end local v24           #found:Z
    .end local v33           #m:Ljava/util/regex/Matcher;
    .end local v49           #store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_16

    .line 1781
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "UID is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", RFC2822.SIZE is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", HeaderSize is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v9, v21

    .line 1785
    check-cast v9, Ljava/util/ArrayList;

    const/16 v56, 0x1

    move/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;Z)I

    move-result v27

    .line 1786
    .local v27, headerBreak:I
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_17

    .line 1787
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "# break "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    :cond_17
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v28, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v9, v21

    .line 1790
    check-cast v9, Ljava/util/ArrayList;

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/Headers;->extract(Ljava/util/ArrayList;ILjava/util/HashMap;)V

    .line 1791
    const-string v9, "from"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1792
    .local v5, from:Ljava/lang/String;
    const-string v9, "fromEmail"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1793
    .local v25, fromEmail:Ljava/lang/String;
    const-string v9, "to"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1794
    .local v6, to:Ljava/lang/String;
    const-string v9, "cc"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1795
    .local v8, cc:Ljava/lang/String;
    const-string v9, "subject"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1796
    .local v7, subject:Ljava/lang/String;
    const-string v9, "date"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v22

    .line 1797
    .local v22, date:Ljava/util/Calendar;
    const-string v9, "content-type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1798
    .local v19, contentType:Ljava/lang/String;
    const-string v9, "message-id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 1799
    .local v39, messageid:Ljava/lang/String;
    const-string v9, "importance"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/android/mail/MailCommon;->getImportanceValue(Ljava/lang/String;)I

    move-result v30

    .line 1800
    .local v30, importance:I
    const-string v9, "reply-to"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 1801
    .local v44, replyTo:Ljava/lang/String;
    const-string v9, "x-vzw-source-user"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 1802
    .local v47, sourceUser:Ljava/lang/String;
    const-string v9, "references"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1803
    .local v10, references:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1804
    .local v26, group:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v11, v9, [J

    .line 1806
    .local v11, nPsuedoGroupId:[J
    if-eqz v39, :cond_18

    .line 1807
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v56, "<"

    const-string v57, ""

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v56, ">"

    const-string v57, ""

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1810
    :cond_18
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v20

    .line 1811
    .local v20, cp:Landroid/content/IContentProvider;
    const/16 v18, 0x0

    .line 1812
    .local v18, c:Landroid/database/Cursor;
    const-wide/16 v51, 0x0

    .line 1813
    .local v51, thisMessageId:J
    const/4 v13, 0x0

    .line 1830
    .local v13, account:Lcom/htc/android/mail/Account;
    :try_start_0
    const-string v34, ""

    .line 1831
    .local v34, mSubjType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/server/HUXServer;->separateSubject(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 1832
    .local v15, b:Landroid/os/Bundle;
    const-string v9, "subject"

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1833
    const-string v9, "prefix"

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1835
    if-nez v22, :cond_19

    .line 1836
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 1837
    :cond_19
    if-nez v31, :cond_1a

    .line 1838
    move-object/from16 v31, v22

    .line 1840
    :cond_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v9

    const/16 v56, 0x1

    move/from16 v0, v56

    if-ne v9, v0, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/android/mail/server/ImapServer;->mIsNotSupportSearch:Z

    if-eqz v9, :cond_1b

    .line 1841
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    move-wide/from16 v56, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v58

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v58

    cmp-long v9, v56, v58

    if-lez v9, :cond_1b

    .line 1902
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1903
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1846
    :cond_1b
    const/4 v9, 0x0

    :try_start_1
    invoke-static/range {v5 .. v11}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v26

    .line 1849
    new-instance v55, Landroid/content/ContentValues;

    invoke-direct/range {v55 .. v55}, Landroid/content/ContentValues;-><init>()V

    .line 1850
    .local v55, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v14

    .line 1851
    .local v14, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/16 v56, 0x6

    move-object/from16 v0, v47

    move/from16 v1, v56

    invoke-virtual {v14, v9, v0, v1}, Lcom/htc/android/mail/AccountPool;->getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v13

    .line 1852
    if-nez v13, :cond_1c

    .line 1853
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1902
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    .line 1856
    :cond_1c
    :try_start_2
    const-string v9, "_account"

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1857
    const-string v9, "_from"

    const-string v56, ""

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_1d

    const/4 v5, 0x0

    .end local v5           #from:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v55

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v9, "_fromEmail"

    move-object/from16 v0, v55

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v9, "_to"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v9, "_cc"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string v9, "_subject"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v9, "_subjtype"

    move-object/from16 v0, v55

    move-object/from16 v1, v34

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v9, "_importance"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1864
    const-string v9, "_replyTo"

    move-object/from16 v0, v55

    move-object/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v9, "_date"

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1866
    const-string v9, "_internaldate"

    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1867
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_1e

    .line 1868
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, " ****** internal dateValue :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ":"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v57, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v58

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    invoke-static/range {v57 .. v59}, Lcom/htc/android/mail/Util;->getTimeFullString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_1e
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_1f

    .line 1871
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, " ****** dateValue :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ":"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v57, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v58

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    invoke-static/range {v57 .. v59}, Lcom/htc/android/mail/Util;->getTimeFullString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :cond_1f
    const-string v56, "_read"

    const/4 v9, 0x1

    move/from16 v0, v43

    if-ne v0, v9, :cond_23

    const/4 v9, 0x1

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1874
    const-string v9, "_readsize"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1875
    const-string v9, "_readtotalsize"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1876
    const-string v9, "_downloadtotalsize"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    const-string v9, "_messagesize"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1880
    const-string v9, "_incAttachment"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1881
    const-string v9, "_uid"

    move-object/from16 v0, v55

    move-object/from16 v1, v40

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v9, "_messageid"

    move-object/from16 v0, v55

    move-object/from16 v1, v39

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v9, "_references"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v9, "_group"

    move-object/from16 v0, v55

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    const-string v9, "_groupPseudo"

    const/16 v56, 0x0

    aget-wide v56, v11, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1886
    const-string v9, "_mailboxId"

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Lcom/htc/android/mail/Mailboxs;->getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    move-result-object v56

    move-object/from16 v0, v56

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1887
    const-string v9, "_done"

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1889
    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v56

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Mailboxs;->getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iget-wide v0, v9, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v58, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move-wide/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/server/HUXServer;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1891
    .local v17, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1892
    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1893
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    if-nez v43, :cond_20

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v56

    move-wide/from16 v0, v56

    invoke-virtual {v9, v0, v1}, Lcom/htc/android/mail/server/HUXServer$SyncResults;->incUnreadNumber(J)V

    .line 1896
    :cond_20
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v56

    move-wide/from16 v0, v56

    invoke-virtual {v9, v0, v1}, Lcom/htc/android/mail/server/HUXServer$SyncResults;->setFirstMessageIdPosition(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1902
    if-eqz v18, :cond_21

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_21

    .line 1903
    .end local v14           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v15           #b:Landroid/os/Bundle;
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v34           #mSubjType:Ljava/lang/String;
    .end local v55           #values:Landroid/content/ContentValues;
    :goto_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1910
    :cond_21
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_22

    .line 1911
    const-string v9, "HUXServer"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "uid: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v9, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_22
    new-instance v35, Lcom/htc/android/mail/MailMessage;

    const-wide/16 v56, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, v35

    move-wide/from16 v1, v56

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1913
    .local v35, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v56

    move-object/from16 v0, v35

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 1914
    invoke-virtual {v13}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Mailboxs;->getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iget-wide v0, v9, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 1915
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 1919
    const/16 v43, 0x0

    .line 1920
    const/16 v54, 0x0

    .line 1921
    const-string v40, ""

    .line 1923
    goto/16 :goto_2

    .line 1873
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .restart local v14       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v15       #b:Landroid/os/Bundle;
    .restart local v34       #mSubjType:Ljava/lang/String;
    .restart local v55       #values:Landroid/content/ContentValues;
    :cond_23
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1899
    .end local v14           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v15           #b:Landroid/os/Bundle;
    .end local v34           #mSubjType:Ljava/lang/String;
    .end local v55           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v23

    .line 1900
    .local v23, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1902
    if-eqz v18, :cond_21

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_21

    goto :goto_5

    .end local v23           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    if-eqz v18, :cond_24

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v56

    if-nez v56, :cond_24

    .line 1903
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1902
    :cond_24
    throw v9

    .line 1924
    .end local v6           #to:Ljava/lang/String;
    .end local v7           #subject:Ljava/lang/String;
    .end local v8           #cc:Ljava/lang/String;
    .end local v10           #references:Ljava/lang/String;
    .end local v11           #nPsuedoGroupId:[J
    .end local v13           #account:Lcom/htc/android/mail/Account;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #contentType:Ljava/lang/String;
    .end local v20           #cp:Landroid/content/IContentProvider;
    .end local v22           #date:Ljava/util/Calendar;
    .end local v25           #fromEmail:Ljava/lang/String;
    .end local v26           #group:Ljava/lang/String;
    .end local v27           #headerBreak:I
    .end local v28           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30           #importance:I
    .end local v39           #messageid:Ljava/lang/String;
    .end local v44           #replyTo:Ljava/lang/String;
    .end local v47           #sourceUser:Ljava/lang/String;
    .end local v51           #thisMessageId:J
    :cond_25
    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1928
    .end local v50           #str:Ljava/lang/String;
    :cond_26
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1930
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v56, "mail"

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v45

    .line 1932
    .local v45, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, v45

    array-length v9, v0

    if-lez v9, :cond_27

    .line 1933
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/server/HUXServer$SyncResults;->setFirstMessageId([Landroid/content/ContentProviderResult;)V

    .line 1935
    :cond_27
    const/16 v29, 0x0

    :goto_6
    move-object/from16 v0, v45

    array-length v9, v0

    move/from16 v0, v29

    if-ge v0, v9, :cond_0

    .line 1936
    aget-object v9, v45, v29

    iget-object v9, v9, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v37

    .line 1937
    .local v37, messageId:J
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/MailMessage;

    move-wide/from16 v0, v37

    invoke-virtual {v9, v0, v1}, Lcom/htc/android/mail/MailMessage;->setId(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1935
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 1939
    .end local v37           #messageId:J
    .end local v45           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v23

    .line 1940
    .restart local v23       #e:Landroid/os/RemoteException;
    const-string v9, "HUXServer"

    const-string v56, "catch exception"

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1941
    .end local v23           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v23

    .line 1942
    .local v23, e:Landroid/content/OperationApplicationException;
    const-string v9, "HUXServer"

    const-string v56, "catch exception"

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method protected processLIST(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/exception/MailException;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v13, 0x1

    .line 1586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1587
    .local v9, size:I
    if-nez v9, :cond_0

    .line 1588
    new-instance v11, Lcom/htc/android/mail/exception/MailException;

    invoke-direct {v11}, Lcom/htc/android/mail/exception/MailException;-><init>()V

    throw v11

    .line 1591
    :cond_0
    add-int/lit8 v11, v9, -0x1

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/ByteString;

    .line 1592
    .local v8, r:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v8}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1594
    .local v10, token:[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    array-length v11, v10

    if-le v11, v13, :cond_2

    aget-object v11, v10, v13

    sget-object v12, Lcom/htc/android/mail/server/HUXServer;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v12}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 1595
    :cond_1
    new-instance v11, Lcom/htc/android/mail/exception/MailException;

    invoke-direct {v11}, Lcom/htc/android/mail/exception/MailException;-><init>()V

    throw v11

    .line 1598
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v6, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v7, mailboxparentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/android/mail/server/HUXServer;->parseMailbox(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1603
    iget-object v11, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 1604
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v11, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v12, 0x6

    invoke-virtual {v1, v11, v12}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 1605
    .local v2, accounts:[Lcom/htc/android/mail/Account;
    if-nez v2, :cond_4

    .line 1609
    :cond_3
    return-void

    .line 1606
    :cond_4
    move-object v3, v2

    .local v3, arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 1607
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {p0, v0, v7, v6}, Lcom/htc/android/mail/server/HUXServer;->syncMailboxsWithDB(Lcom/htc/android/mail/Account;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1606
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .locals 8
    .parameter "mailbox"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1064
    const/4 v2, 0x0

    .line 1066
    .local v2, successful:Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/server/HUXServer;->refreshInternal(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1067
    .local v1, result:I
    const/4 v2, 0x1

    .line 1072
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/Account;->getHuxNeedSyncAfterSyncAccount(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1074
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/htc/android/mail/Account;->setHuxNeedSyncAfterSyncAccount(Landroid/content/Context;Z)V

    .line 1079
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z

    if-eqz v3, :cond_1

    .line 1080
    iput-boolean v5, p0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z

    .line 1082
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1083
    iget-object v3, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/htc/android/mail/huxservice/HuxProvController;->huxAccountChangeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 1068
    :cond_1
    return v1

    .line 1069
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 1070
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getHuxNeedSyncAfterSyncAccount(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1074
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->setHuxNeedSyncAfterSyncAccount(Landroid/content/Context;Z)V

    .line 1079
    :cond_2
    iget-boolean v4, p0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z

    if-eqz v4, :cond_3

    .line 1080
    iput-boolean v5, p0, Lcom/htc/android/mail/server/HUXServer;->mIsNeedSyncHUXAccount:Z

    .line 1082
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1083
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/htc/android/mail/huxservice/HuxProvController;->huxAccountChangeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    :cond_3
    throw v3
.end method

.method public refreshInternal(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .locals 41
    .parameter "mailbox"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1091
    invoke-super/range {p0 .. p1}, Lcom/htc/android/mail/server/ImapServer;->refresh(Lcom/htc/android/mail/Mailbox;)I

    move-result v4

    .line 1282
    :goto_0
    return v4

    .line 1094
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 1095
    const/4 v4, 0x0

    goto :goto_0

    .line 1098
    :cond_1
    const/16 v21, 0x0

    .line 1099
    .local v21, isPushMail:Z
    const/16 v20, 0x0

    .line 1101
    .local v20, isManualSync:Z
    if-eqz p2, :cond_3

    .line 1102
    const-string v4, "isManualSync"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->sendSyncAll()V

    .line 1104
    const/16 v20, 0x1

    .line 1106
    :cond_2
    const-string v4, "isPushMail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1107
    const/16 v21, 0x1

    .line 1111
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/HUXServer;->mSyncResults:Lcom/htc/android/mail/server/HUXServer$SyncResults;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/HUXServer$SyncResults;->clear()V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->fetchMailBoxList()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v11

    .line 1116
    .local v11, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v5, 0x6

    invoke-virtual {v11, v4, v5}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v12

    .line 1117
    .local v12, accounts:[Lcom/htc/android/mail/Account;
    move-object v13, v12

    .local v13, arr$:[Lcom/htc/android/mail/Account;
    array-length v0, v13

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v10, v13, v19

    .line 1118
    .local v10, account:Lcom/htc/android/mail/Account;
    if-nez v10, :cond_4

    .line 1117
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1119
    :cond_4
    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->refresh()V

    goto :goto_2

    .line 1122
    .end local v10           #account:Lcom/htc/android/mail/Account;
    :cond_5
    if-nez v21, :cond_6

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/htc/android/mail/server/HUXServer;->fetchTags(Landroid/content/Context;Z)V

    .line 1126
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->syncMailToServer()V

    .line 1130
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->init()V

    .line 1134
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->syncPendingRequests()V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->isFinishSyncPendingRequest()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1137
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "TAG"

    const-string v5, "PendingRequests is not empty"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1142
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->deleteMailMarkedToDelete()V

    .line 1144
    new-instance v4, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    invoke-direct {v4}, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->supportQrsync()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1146
    const-string v4, "QRESYNC"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->enableExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->setQrsyncEnabled(Z)V

    .line 1155
    :cond_a
    :goto_3
    const/16 v16, 0x1

    .line 1157
    .local v16, doQrsync:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->qrsyncEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1159
    :cond_b
    const/16 v16, 0x0

    .line 1168
    :cond_c
    :goto_4
    const/16 v34, 0x0

    .line 1169
    .local v34, responses:Lcom/htc/android/mail/server/ImapServer$ImapResponses;
    if-eqz v16, :cond_19

    .line 1170
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/htc/android/mail/server/HUXServer;->getMinUidInLatestNumMail(Lcom/htc/android/mail/Mailbox;ILjava/util/HashMap;)J

    move-result-wide v27

    .line 1171
    .local v27, minUidInLatestNumMail:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/server/HUXServer;->selectMailboxForQrsync(Lcom/htc/android/mail/Mailbox;J)Lcom/htc/android/mail/server/ImapServer$ImapResponses;

    move-result-object v34

    .line 1177
    .end local v27           #minUidInLatestNumMail:J
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->qrsyncEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1178
    :cond_d
    const/16 v16, 0x0

    .line 1181
    :cond_e
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "HUXServer"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_f
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "HUXServer"

    const-string v5, "fetch Mail by days"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->searchNotDeletedMailByDate(Lcom/htc/android/mail/Mailbox;)Ljava/util/Map;

    move-result-object v31

    .line 1186
    .local v31, notDeletedMailMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/server/HUXServer;->pruneFetchRefreshListByDate(Ljava/util/Map;)Ljava/util/List;

    move-result-object v29

    .line 1187
    .local v29, newMailList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v30

    .line 1189
    .local v30, newMailSize:I
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getFetchNotDoneMessageList(Lcom/htc/android/mail/Mailbox;)Ljava/util/List;

    move-result-object v32

    .line 1190
    .local v32, notFetchDoneMailList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    const/16 v36, 0x0

    .line 1191
    .local v36, totalsize:I
    if-eqz v32, :cond_11

    .line 1192
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    add-int v36, v36, v4

    .line 1195
    :cond_11
    add-int v36, v36, v30

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/HUXServer;->mTagsInfo:Lcom/htc/android/mail/server/HUXServer$TagsInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->load(Landroid/content/Context;)V

    .line 1199
    const/16 v33, 0x0

    .line 1201
    .local v33, numberOfFetechHeader:I
    if-nez v30, :cond_1a

    .line 1202
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "HUXServer"

    const-string v5, "no new mail for hux account"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_12
    const/16 v4, 0x64

    move/from16 v0, v33

    if-ge v0, v4, :cond_14

    .line 1222
    if-eqz v16, :cond_1c

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->updateMailStatusWithQrsync(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/server/ImapServer$ImapResponses;)Z

    move-result v14

    .line 1225
    .local v14, changed:Z
    if-eqz v21, :cond_13

    if-eqz v14, :cond_14

    .line 1226
    :cond_13
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1227
    .local v8, uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/htc/android/mail/server/HUXServer;->getMinUidInLatestNumMail(Lcom/htc/android/mail/Mailbox;ILjava/util/HashMap;)J

    move-result-wide v27

    .line 1228
    .restart local v27       #minUidInLatestNumMail:J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/htc/android/mail/server/HUXServer;->updateLatestNumMailStatus(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 1237
    .end local v8           #uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14           #changed:Z
    .end local v27           #minUidInLatestNumMail:J
    :cond_14
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Mailbox;->getHighestModSeq()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ImapServer;->mCurrentImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    iget-wide v6, v6, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->highestModSeq:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    .line 1238
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v26, mailboxValues:Landroid/content/ContentValues;
    const-string v4, "_syncKey"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/ImapServer;->mCurrentImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    iget-wide v5, v5, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->highestModSeq:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/server/HUXServer;->updateMailbox(Lcom/htc/android/mail/Mailbox;Landroid/content/ContentValues;)V

    .line 1241
    move-object v13, v12

    array-length v0, v13

    move/from16 v23, v0

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    aget-object v10, v13, v19

    .line 1242
    .restart local v10       #account:Lcom/htc/android/mail/Account;
    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/Mailboxs;->getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;

    move-result-object v22

    .line 1243
    .local v22, iterMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v22, :cond_1d

    .line 1241
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 1149
    .end local v10           #account:Lcom/htc/android/mail/Account;
    .end local v16           #doQrsync:Z
    .end local v22           #iterMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v26           #mailboxValues:Landroid/content/ContentValues;
    .end local v29           #newMailList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v30           #newMailSize:I
    .end local v31           #notDeletedMailMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    .end local v32           #notFetchDoneMailList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    .end local v33           #numberOfFetechHeader:I
    .end local v34           #responses:Lcom/htc/android/mail/server/ImapServer$ImapResponses;
    .end local v36           #totalsize:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->supportCondstore()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1150
    const-string v4, "CONDSTORE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->enableExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mImapEnabled:Lcom/htc/android/mail/server/ImapServer$ImapEnabled;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->setCondStoreEnabled(Z)V

    goto/16 :goto_3

    .line 1160
    .restart local v16       #doQrsync:Z
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Mailbox;->getUidValidity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    const-string v4, ""

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Mailbox;->getUidValidity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1162
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1163
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Mailbox;->getHighestModSeq()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 1165
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1173
    .restart local v34       #responses:Lcom/htc/android/mail/server/ImapServer$ImapResponses;
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->selectMailbox(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/server/ImapServer$ImapResponses;

    move-result-object v34

    goto/16 :goto_5

    .line 1204
    .restart local v29       #newMailList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30       #newMailSize:I
    .restart local v31       #notDeletedMailMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    .restart local v32       #notFetchDoneMailList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    .restart local v33       #numberOfFetechHeader:I
    .restart local v36       #totalsize:I
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/server/ImapServer;->mFetchHeaderSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/android/mail/server/HUXServer;->fetchHeader(Lcom/htc/android/mail/Mailbox;Ljava/util/List;I)Ljava/util/List;

    move-result-object v24

    .line 1206
    .local v24, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v24, :cond_12

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v15

    .line 1208
    .local v15, controller:Lcom/htc/android/mail/AbsRequestController;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v35

    .line 1209
    .local v35, size:I
    move/from16 v33, v35

    .line 1210
    add-int/lit8 v18, v35, -0x1

    .local v18, i:I
    :goto_9
    if-ltz v18, :cond_12

    .line 1211
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/android/mail/MailMessage;

    .line 1212
    .local v25, mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v15, v4, v5}, Lcom/htc/android/mail/RequestController;->isNeedToFetch(J)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1210
    :goto_a
    add-int/lit8 v18, v18, -0x1

    goto :goto_9

    .line 1215
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    sub-int v5, v30, v18

    const-string v6, ""

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1, v6}, Lcom/htc/android/mail/server/HUXServer;->getDownloadingStatus(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/server/HUXServer;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 1216
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v15}, Lcom/htc/android/mail/server/HUXServer;->fetchInfo(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ILcom/htc/android/mail/AbsRequestController;)V

    goto :goto_a

    .line 1231
    .end local v15           #controller:Lcom/htc/android/mail/AbsRequestController;
    .end local v18           #i:I
    .end local v24           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    .end local v25           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v35           #size:I
    :cond_1c
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1232
    .restart local v8       #uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/htc/android/mail/server/HUXServer;->getMinUidInLatestNumMail(Lcom/htc/android/mail/Mailbox;ILjava/util/HashMap;)J

    move-result-wide v27

    .line 1233
    .restart local v27       #minUidInLatestNumMail:J
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/htc/android/mail/server/HUXServer;->updateLatestNumMailStatus(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    goto/16 :goto_6

    .line 1244
    .end local v8           #uidIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v27           #minUidInLatestNumMail:J
    .restart local v10       #account:Lcom/htc/android/mail/Account;
    .restart local v22       #iterMailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v26       #mailboxValues:Landroid/content/ContentValues;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mCurrentImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    iget-wide v4, v4, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->highestModSeq:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/Mailbox;->setSyncKey(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1249
    .end local v10           #account:Lcom/htc/android/mail/Account;
    .end local v22           #iterMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v26           #mailboxValues:Landroid/content/ContentValues;
    :cond_1e
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_mailboxId IN (%s) AND _date < %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/16 v39, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1251
    .local v38, where:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "HUXServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete mail not in window, where: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1255
    if-eqz v32, :cond_22

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 1256
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_20

    .line 1257
    const-string v4, "HUXServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_20
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v35

    .line 1261
    .restart local v35       #size:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v15

    .line 1262
    .restart local v15       #controller:Lcom/htc/android/mail/AbsRequestController;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    .line 1263
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/android/mail/MailMessage;

    .line 1264
    .restart local v25       #mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v15, v4, v5}, Lcom/htc/android/mail/RequestController;->isNeedToFetch(J)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1262
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1267
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    add-int v5, v30, v18

    add-int/lit8 v5, v5, 0x1

    const-string v6, ""

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1, v6}, Lcom/htc/android/mail/server/HUXServer;->getDownloadingStatus(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/server/HUXServer;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 1268
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v15}, Lcom/htc/android/mail/server/HUXServer;->fetchInfo(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ILcom/htc/android/mail/AbsRequestController;)V

    goto :goto_c

    .line 1273
    .end local v15           #controller:Lcom/htc/android/mail/AbsRequestController;
    .end local v18           #i:I
    .end local v25           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v35           #size:I
    :cond_22
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_mailboxId IN (%s) AND _sync = \'0\' AND _local = \'0\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/16 v39, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1275
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 1276
    .local v37, values:Landroid/content/ContentValues;
    const-string v4, "_sync"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .end local v37           #values:Landroid/content/ContentValues;
    :goto_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1278
    :catch_0
    move-exception v17

    .line 1279
    .local v17, e:Landroid/os/RemoteException;
    const-string v4, "HUXServer"

    const-string v5, "update message fail"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method protected searchNotDeletedMail(Lcom/htc/android/mail/Mailbox;Z)Ljava/util/List;
    .locals 9
    .parameter "mailbox"
    .parameter "fetchAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v5, v5, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/server/HUXServer;->selectMailbox(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/server/ImapServer$ImapResponses;

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, tag:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/HUXServer;->getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, keyword:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID 1:* %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 175
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/HUXServer;->processSEARCHNOTDELETED(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, notDeletedMail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v2

    .line 171
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v2           #notDeletedMail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID 1:* HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected searchNotDeletedMailByDate(Lcom/htc/android/mail/Mailbox;)Ljava/util/Map;
    .locals 20
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/ImapServer;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v15, v15, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->selectMailbox(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/server/ImapServer$ImapResponses;

    .line 190
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, tag:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 196
    .local v2, cal:Ljava/util/Calendar;
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_2

    .line 197
    const-string v14, "HUXServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "days: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/mail/server/ImapServer;->mIsNotSupportSearch:Z

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x15180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    .line 201
    new-instance v14, Ljava/util/SimpleTimeZone;

    const/4 v15, 0x0

    const-string v16, "GMT"

    invoke-direct/range {v14 .. v16}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 202
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 204
    const/16 v14, 0xc

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 205
    const/16 v14, 0xd

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 206
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    .line 208
    const-wide/16 v5, 0x0

    .line 209
    .local v5, maxUid:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/Account;->getFetchLongerDate(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 210
    const-wide/16 v5, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/android/mail/Account;->setFetchLongerDate(Landroid/content/Context;Z)V

    .line 223
    :goto_0
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "HUXServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "next uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mCurrentImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->uidNext:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", maxUid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mCurrentImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    iget-wide v14, v14, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->uidNext:J

    const-wide/16 v16, 0x1

    add-long v16, v16, v5

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    const/4 v9, 0x0

    .line 257
    :goto_1
    return-object v9

    .line 212
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/android/mail/Account;->getHuxNeedSyncAfterSyncAccount(Landroid/content/Context;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 214
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getMinUid(Lcom/htc/android/mail/Mailbox;)J

    move-result-wide v7

    .line 215
    .local v7, minUid:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_5

    .line 216
    const-wide/16 v14, 0x1

    sub-long/2addr v7, v14

    .line 218
    :cond_5
    move-wide v5, v7

    .line 219
    goto :goto_0

    .line 220
    .end local v7           #minUid:J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMaxUid()J

    move-result-wide v5

    goto :goto_0

    .line 226
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    .line 227
    new-instance v14, Ljava/util/SimpleTimeZone;

    const/4 v15, 0x0

    const-string v16, "GMT"

    invoke-direct/range {v14 .. v16}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 228
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/server/ImapServer;->mBeginningTimeMillis:J

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 231
    .local v11, sinceDate:Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v14, "d-MMM-yyyy"

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    .local v10, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, sinceDateStr:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, keyword:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 236
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %d:* SINCE %s %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x1

    add-long v18, v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v12, v16, v17

    const/16 v17, 0x3

    aput-object v3, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 254
    .end local v10           #sdf:Ljava/text/SimpleDateFormat;
    .end local v11           #sinceDate:Ljava/util/Date;
    .end local v12           #sinceDateStr:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 256
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->processSearchNotDeletedByDate(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 257
    .local v9, notDeletedMailMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    goto/16 :goto_1

    .line 239
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v9           #notDeletedMailMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    .restart local v10       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v11       #sinceDate:Ljava/util/Date;
    .restart local v12       #sinceDateStr:Ljava/lang/String;
    :cond_8
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %d:* SINCE %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x1

    add-long v18, v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v12, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    goto :goto_2

    .line 244
    .end local v3           #keyword:Ljava/lang/String;
    .end local v10           #sdf:Ljava/text/SimpleDateFormat;
    .end local v11           #sinceDate:Ljava/util/Date;
    .end local v12           #sinceDateStr:Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3       #keyword:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 246
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %d:* %s HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x1

    add-long v18, v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v3, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :cond_a
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s UID SEARCH UID %d:* HEADER X-VZW-MESSAGE-TYPE email NOT DELETED"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x1

    add-long v18, v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected updateMailbox(Lcom/htc/android/mail/Mailbox;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "mailbox"
    .parameter "values"

    .prologue
    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2024
    return-void
.end method

.method protected updateUnSeenStatus(Lcom/htc/android/mail/Mailbox;)V
    .locals 19
    .parameter "mailbox"

    .prologue
    .line 339
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    .line 340
    .local v3, cp:Landroid/content/IContentProvider;
    const/4 v9, 0x0

    .line 343
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_mailboxId IN (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "min(abs(_uid)) as _minuid"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 346
    const-string v15, "1"

    .line 347
    .local v15, uid:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXServer;->getMSGID()Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, tag:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 349
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    const-string v4, "_minuid"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 352
    if-eqz v15, :cond_0

    const-string v4, "0"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    :cond_0
    const-string v15, "1"

    .line 356
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXServer;->getSearchMailboxKeyword(Lcom/htc/android/mail/Mailbox;)Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, keyword:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 358
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID %s:* %s HEADER X-VZW-MESSAGE-TYPE email UNSEEN"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    const/4 v8, 0x2

    aput-object v11, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 365
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 366
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/server/HUXServer;->processUnSeenStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 367
    .local v16, unseenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 368
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V

    .line 371
    :cond_2
    const-string v4, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 372
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID %s:* %s HEADER X-VZW-MESSAGE-TYPE email SEEN"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    const/4 v8, 0x2

    aput-object v11, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 379
    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID %s:* SEEN"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/server/HUXServer;->readResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 381
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/mail/server/HUXServer;->processUnSeenStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 382
    .local v13, seenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 383
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v4}, Lcom/htc/android/mail/server/HUXServer;->updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    .end local v11           #keyword:Ljava/lang/String;
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v13           #seenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #unseenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 393
    .end local v6           #where:Ljava/lang/String;
    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #uid:Ljava/lang/String;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_4
    return-void

    .line 361
    .restart local v6       #where:Ljava/lang/String;
    .restart local v11       #keyword:Ljava/lang/String;
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #uid:Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID %s:* HEADER X-VZW-MESSAGE-TYPE email UNSEEN"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 387
    .end local v6           #where:Ljava/lang/String;
    .end local v11           #keyword:Ljava/lang/String;
    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #uid:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 388
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "HUXServer"

    const-string v5, "query messages table fail"

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 375
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v11       #keyword:Ljava/lang/String;
    .restart local v12       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v15       #uid:Ljava/lang/String;
    .restart local v16       #unseenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :try_start_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s UID SEARCH UID %s:* HEADER X-VZW-MESSAGE-TYPE email SEEN"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/server/HUXServer;->issue(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 389
    .end local v6           #where:Ljava/lang/String;
    .end local v11           #keyword:Ljava/lang/String;
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    .end local v14           #tag:Ljava/lang/String;
    .end local v15           #uid:Ljava/lang/String;
    .end local v16           #unseenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v10

    .line 390
    .local v10, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "HUXServer"

    const-string v5, "timeout"

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 393
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_7
    throw v4
.end method

.method protected updateUnSeenStatusToDB(Lcom/htc/android/mail/Mailbox;Ljava/util/List;Z)V
    .locals 11
    .parameter "mailbox"
    .parameter
    .parameter "isSetUnseen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p2, uidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, ""

    .line 1045
    .local v0, idSeq:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v6, "READ"

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v1

    .line 1046
    .local v1, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v1, :cond_2

    .line 1047
    const-string v5, ","

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->getInvalidateIdList(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1049
    :cond_2
    const-string v5, ","

    const/4 v6, 0x1

    invoke-virtual {p0, p2, v5, v6}, Lcom/htc/android/mail/server/HUXServer;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, uidSeq:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1051
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_mailboxId IN (%s) AND _uid in (%s) AND +_read = %d"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v10, 0x6

    invoke-static {v9, p1, v10}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v9, 0x2

    if-eqz p3, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, where:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1058
    const-string v6, "_read"

    if-eqz p3, :cond_6

    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/server/ImapServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/htc/android/mail/server/HUXServer;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1051
    .end local v4           #where:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1054
    :cond_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_mailboxId IN (%s) AND _uid in (%s) AND +_read = %d AND +_id not in (%s)"

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/android/mail/server/ImapServer;->mContext:Landroid/content/Context;

    const/4 v10, 0x6

    invoke-static {v9, p1, v10}, Lcom/htc/android/mail/MailCommon;->getMailboxIdSeqByUndecodeNameAndShortName(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v9, 0x2

    if-eqz p3, :cond_5

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x3

    aput-object v0, v8, v5

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #where:Ljava/lang/String;
    goto :goto_2

    .end local v4           #where:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 1058
    .restart local v4       #where:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    goto :goto_3
.end method

.method protected whereForDeleteMailSyncPendingRequests()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1969
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1970
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForEmptyMailboxSyncPendingRequests()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1975
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1976
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForGetUidSyncPendingRequests()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1950
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForIsFinishSyncPendingRequest()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1993
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request in (\'%d\', \'%d\', \'%d\', \'%d\', \'%d\')"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForMoveMailGetUidSyncPendingRequests()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1963
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request in (\'%d\', \'%d\')"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForMoveMailSyncPendingRequests()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1957
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request = %d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForReadUnreadMailSyncPendingRequests()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1981
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request in (\'%d\', \'%d\')"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method

.method protected whereForStoreUidSyncPendingRequests()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1987
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId IN (SELECT _id FROM accounts WHERE _protocol = %d) AND _request = \'%d\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1988
    .local v0, where:Ljava/lang/String;
    return-object v0
.end method
