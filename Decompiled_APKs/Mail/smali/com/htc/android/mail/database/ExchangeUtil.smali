.class public Lcom/htc/android/mail/database/ExchangeUtil;
.super Ljava/lang/Object;
.source "ExchangeUtil.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExchangeUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "seperator"
    .parameter "escape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, fetchStr:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 356
    const-string v3, ""

    .line 383
    :goto_0
    return-object v3

    .line 360
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 361
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 363
    if-eqz p2, :cond_3

    .line 364
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .restart local v2       #value:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    if-eqz p2, :cond_4

    .line 376
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    .end local v1           #i:I
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    .restart local v1       #i:I
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 383
    .end local v2           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDefaultInboxColID(JLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "accountId"
    .parameter "resolver"

    .prologue
    .line 461
    const/4 v6, 0x0

    .line 462
    .local v6, colId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 464
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_serverid"

    aput-object v1, v2, v0

    .line 465
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (select _defaultfolderId from accounts where _id=%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 467
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 471
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_1
    return-object v6

    .line 471
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_2
    throw v0
.end method

.method public static getDeleteboxSvrId(JLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "accountId"
    .parameter "resolver"

    .prologue
    .line 154
    const/4 v6, 0x0

    .line 155
    .local v6, collId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 157
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_serverid"

    aput-object v1, v2, v0

    .line 158
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _type=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 160
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 164
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_1
    return-object v6

    .line 164
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_2
    throw v0
.end method

.method public static getMailboxIdByMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)J
    .locals 10
    .parameter "accountId"
    .parameter "mailboxSvrId"
    .parameter "resolver"

    .prologue
    .line 117
    const-wide/16 v7, -0x1

    .line 118
    .local v7, mailboxId:J
    const/4 v6, 0x0

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 121
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _serverid=\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 127
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    return-wide v7

    .line 127
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_2
    throw v0
.end method

.method public static getMailboxIdByMessageId(JLandroid/content/ContentResolver;)J
    .locals 11
    .parameter "messageId"
    .parameter "resolver"

    .prologue
    const-wide/16 v9, 0x0

    .line 89
    cmp-long v0, p0, v9

    if-lez v0, :cond_0

    if-nez p2, :cond_2

    .line 90
    :cond_0
    const-string v0, "ExchangeUtil"

    const-string v1, "getMailboxIdByMessageId error: parameter is null."

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    return-wide v9

    .line 94
    :cond_2
    const-wide/16 v9, 0x0

    .line 95
    .local v9, ret:J
    const/4 v7, 0x0

    .line 97
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_mailboxId"

    aput-object v1, v2, v0

    .line 98
    .local v2, proj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string v0, "_mailboxId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 108
    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v8

    .line 105
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    const-wide/16 v9, 0x0

    .line 108
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_4
    throw v0
.end method

.method public static getMailboxSvrIdByMailSvrId(Lcom/htc/android/mail/Account;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "account"
    .parameter "uid"
    .parameter "resolver"

    .prologue
    const/4 v9, 0x0

    .line 229
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> getMailboxSvrIdByMailSvrId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    const/4 v8, 0x0

    .line 232
    .local v8, mailboxSvrId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 234
    .local v7, curMailbox:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_serverid"

    aput-object v1, v2, v0

    .line 235
    .local v2, boxProj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id in (select _mailboxId from messages where _uid="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v6, boxBuilder:Ljava/lang/StringBuilder;
    invoke-static {v6, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 239
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    :cond_1
    const-string v0, "ExchangeUtil"

    const-string v1, "getMailboxSvrIdByMailSvrId error: can not get mailbox server id"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 251
    :goto_0
    return-object v0

    .line 243
    :cond_3
    :try_start_1
    const-string v0, "_serverid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 245
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_4
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< getMailboxSvrIdByMailSvrId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v8

    .line 251
    goto :goto_0

    .line 245
    .end local v2           #boxProj:[Ljava/lang/String;
    .end local v6           #boxBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_6
    throw v0
.end method

.method public static getMailboxSvrIdByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "messageId"
    .parameter "globalMail"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 172
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    if-nez p3, :cond_2

    .line 173
    :cond_0
    const-string v0, "ExchangeUtil"

    const-string v1, "getMailboxSvrIdById error: parameter is null."

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    :goto_0
    return-object v8

    .line 177
    :cond_2
    const/4 v8, 0x0

    .line 178
    .local v8, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 180
    .local v6, curMailbox:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_serverid"

    aput-object v1, v2, v0

    .line 181
    .local v2, boxProj:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, str:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 183
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (select _mailboxId from messages where _id=%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    :goto_1
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "_serverid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 195
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    .end local v2           #boxProj:[Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 185
    .restart local v2       #boxProj:[Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (select _mailboxId from searchSvrMessages where _id=%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 191
    .end local v2           #boxProj:[Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 192
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    const/4 v8, 0x0

    .line 195
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_5
    throw v0
.end method

.method public static getMailboxSvrIdFromTrackingTBL(JLjava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "accountId"
    .parameter "uid"
    .parameter "resolver"

    .prologue
    .line 204
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> getMailboxSvrIdFromTrackingTBL: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v8, 0x0

    .line 207
    .local v8, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 209
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_collectionId"

    aput-object v1, v2, v0

    .line 210
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_accountId=%d AND _uid=\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, str:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "_collectionId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 219
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< getMailboxSvrIdFromTrackingTBL: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_3
    return-object v8

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    const/4 v8, 0x0

    .line 219
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_4
    throw v0
.end method

.method public static getMailboxSvrIdbyMailboxId(JLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "mailboxId"
    .parameter "resolver"

    .prologue
    .line 255
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> getMailboxSvrIdbyMailboxId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    const/4 v9, 0x0

    .line 258
    .local v9, serverId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 260
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_serverid"

    aput-object v1, v2, v0

    .line 261
    .local v2, proj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 264
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "_serverid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 271
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/database/ExchangeUtil;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< getMailboxSvrIdbyMailboxId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_3
    return-object v9

    .line 267
    :catch_0
    move-exception v8

    .line 268
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    const/4 v9, 0x0

    .line 271
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_4
    throw v0
.end method

.method public static getMailboxbyMailboxId(JLjava/lang/String;Landroid/content/ContentResolver;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .locals 11
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "resolver"

    .prologue
    const/4 v10, 0x0

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "ExchangeUtil"

    const-string v1, "getMailboxbyMailboxId failed: paramenter is null"

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    move-object v8, v10

    .line 314
    :cond_0
    :goto_0
    return-object v8

    .line 286
    :cond_1
    const/4 v6, 0x0

    .line 287
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 289
    .local v8, mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    :cond_2
    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMailboxbyMailboxId: get mailbox record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v10

    .line 293
    goto :goto_0

    .line 296
    :cond_4
    :try_start_1
    new-instance v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .local v9, mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    .line 298
    const-string v0, "_undecodename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->undecodename:Ljava/lang/String;

    .line 299
    const-string v0, "_decodename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->decodename:Ljava/lang/String;

    .line 300
    const-string v0, "_shortname"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->shortname:Ljava/lang/String;

    .line 301
    const-string v0, "_serverfolder"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverfolder:Ljava/lang/String;

    .line 302
    const-string v0, "_account"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->account:Ljava/lang/String;

    .line 303
    const-string v0, "_serverid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    .line 304
    const-string v0, "_parentid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->parentid:Ljava/lang/String;

    .line 305
    const-string v0, "_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->type:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v8, v9

    .line 312
    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto/16 :goto_0

    .line 306
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 307
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v0, "ExchangeUtil"

    invoke-static {v0, p0, p1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    const/4 v8, 0x0

    .line 310
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 310
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_6
    throw v0

    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v9       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto :goto_2

    .line 306
    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v9       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto :goto_1
.end method

.method public static getMailboxbyMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .locals 11
    .parameter "accountId"
    .parameter "collId"
    .parameter "resolver"

    .prologue
    const/4 v10, 0x0

    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "ExchangeUtil"

    const-string v1, "getMailboxbyMailboxSvrId failed: Paramenter is null"

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    move-object v8, v10

    .line 350
    :cond_0
    :goto_0
    return-object v8

    .line 323
    :cond_1
    const/4 v6, 0x0

    .line 324
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 326
    .local v8, mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_serverid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    :cond_2
    const-string v0, "ExchangeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMailboxbyMailboxSvrId: get collId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v10

    .line 330
    goto :goto_0

    .line 333
    :cond_4
    :try_start_1
    new-instance v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    invoke-direct {v9}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .local v9, mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    .line 335
    const-string v0, "_undecodename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->undecodename:Ljava/lang/String;

    .line 336
    const-string v0, "_decodename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->decodename:Ljava/lang/String;

    .line 337
    const-string v0, "_shortname"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->shortname:Ljava/lang/String;

    .line 338
    const-string v0, "_serverfolder"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverfolder:Ljava/lang/String;

    .line 339
    const-string v0, "_account"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->account:Ljava/lang/String;

    .line 340
    const-string v0, "_serverid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    .line 341
    const-string v0, "_parentid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->parentid:Ljava/lang/String;

    .line 342
    const-string v0, "_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->type:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 346
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v8, v9

    .line 348
    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto/16 :goto_0

    .line 343
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 344
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v0, "ExchangeUtil"

    invoke-static {v0, p0, p1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 346
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_6
    throw v0

    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v9       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto :goto_2

    .line 343
    .end local v8           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v9       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v8       #mailbox:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    goto :goto_1
.end method

.method public static getMessageIdByUid(JLjava/lang/String;Landroid/content/ContentResolver;)J
    .locals 11
    .parameter "accountId"
    .parameter "uid"
    .parameter "resolver"

    .prologue
    const-wide/16 v9, 0x0

    .line 26
    cmp-long v0, p0, v9

    if-lez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    :cond_0
    const-string v0, "ExchangeUtil"

    const-string v1, "getMessageIdByUid error: parameter is null."

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    :goto_0
    return-wide v9

    .line 31
    :cond_2
    const-wide/16 v9, 0x0

    .line 32
    .local v9, ret:J
    const/4 v7, 0x0

    .line 34
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 35
    .local v2, proj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_uid="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-static {v6, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    const-string v0, " AND _account="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 40
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 47
    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v8

    .line 44
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    const-wide/16 v9, 0x0

    .line 47
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_4
    throw v0
.end method

.method public static getMsgIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;
    .locals 5
    .parameter "moveItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 398
    .local v1, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    iget-wide v3, v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    .end local v1           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_0
    return-object v2
.end method

.method public static getMsgIdList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 389
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-object v1
.end method

.method public static getMsgServerId(Ljava/util/ArrayList;JLandroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .parameter "mailboxId"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;J",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    :cond_0
    const/4 p0, 0x0

    .line 457
    .end local p0           #messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    :cond_1
    :goto_0
    return-object p0

    .line 421
    .restart local p0       #messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v12, msgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/MailMessage;

    .line 423
    .local v11, message:Lcom/htc/android/mail/MailMessage;
    iget-wide v0, v11, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    .end local v11           #message:Lcom/htc/android/mail/MailMessage;
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 427
    const-string v0, "ExchangeUtil"

    const-string v1, "getMsgServerId fail #1"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 p0, 0x0

    goto :goto_0

    .line 431
    :cond_4
    const-string v0, ","

    const/4 v1, 0x1

    invoke-static {v12, v0, v1}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 432
    .local v10, idSqe:Ljava/lang/String;
    const/4 v6, 0x0

    .line 434
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_uid"

    aput-object v1, v2, v0

    .line 435
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (%s) AND _mailboxId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 438
    :cond_5
    const-string v0, "ExchangeUtil"

    const-string v1, "getMsgServerId fail #2"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    const/4 p0, 0x0

    .line 453
    .end local p0           #messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 443
    .restart local p0       #messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    :cond_6
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 444
    .local v8, id:J
    const-string v0, "_uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 445
    .local v13, uid:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/MailMessage;

    .line 446
    .restart local v11       #message:Lcom/htc/android/mail/MailMessage;
    iget-wide v0, v11, Lcom/htc/android/mail/MailMessage;->id:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 447
    iput-object v13, v11, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 451
    .end local v11           #message:Lcom/htc/android/mail/MailMessage;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 453
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #id:J
    .end local v13           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_9
    throw v0
.end method

.method public static getMsgServerIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;
    .locals 4
    .parameter "moveItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 407
    .local v1, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    .end local v1           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_0
    return-object v2
.end method

.method public static getOutboxId(JLandroid/content/ContentResolver;)J
    .locals 10
    .parameter "accountId"
    .parameter "resolver"

    .prologue
    .line 136
    const-wide/16 v7, -0x1

    .line 137
    .local v7, outboxId:J
    const/4 v6, 0x0

    .line 139
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 140
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _type=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 146
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    return-wide v7

    .line 146
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_2
    throw v0
.end method

.method public static getUidByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .parameter "messageId"
    .parameter "globalMail"
    .parameter "resolver"

    .prologue
    const/4 v9, 0x0

    .line 55
    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-lez v0, :cond_0

    if-nez p3, :cond_2

    .line 56
    :cond_0
    const-string v0, "ExchangeUtil"

    const-string v3, "getUidByMessageId error: parameter is null."

    invoke-static {v0, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_0
    return-object v9

    .line 60
    :cond_2
    const/4 v9, 0x0

    .line 61
    .local v9, ret:Ljava/lang/String;
    const/4 v7, 0x0

    .line 63
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 64
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_uid"

    aput-object v3, v2, v0

    .line 65
    .local v2, proj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    if-eqz p2, :cond_4

    .line 68
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 72
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    const-string v0, "_uid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 80
    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 70
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v6       #builder:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 76
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 77
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    const/4 v9, 0x0

    .line 80
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_5
    throw v0
.end method
