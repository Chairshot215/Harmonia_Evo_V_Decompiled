.class public Lcom/htc/android/mail/database/POP3LocalStore;
.super Lcom/htc/android/mail/database/LocalStore;
.source "POP3LocalStore.java"


# instance fields
.field private mAccount:Lcom/htc/android/mail/Account;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/mail/database/LocalStore;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/android/mail/database/POP3LocalStore;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    .line 26
    iget-object v0, p0, Lcom/htc/android/mail/database/POP3LocalStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    .line 27
    return-void
.end method


# virtual methods
.method public deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v14

    .line 114
    .local v14, trashMailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v7, v14, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lcom/htc/android/mail/database/POP3LocalStore;->moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v16, valuesArrayPending:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v3, ","

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, idSeq:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id in (%s) AND _mailboxId = \'%d\' AND +_local = 0"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "_uid"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 124
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 126
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "_uid"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, uid:Ljava/lang/String;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 129
    .local v11, messageId:J
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v13, pendingValues:Landroid/content/ContentValues;
    const-string v3, "_accountId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v3, "_messageId"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v3, "_request"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v3, "_fromMailboxId"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v3, "_uid"

    invoke-virtual {v13, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 138
    .end local v11           #messageId:J
    .end local v13           #pendingValues:Landroid/content/ContentValues;
    .end local v15           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_2
    throw v3

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id in (%s) AND _mailboxId = \'%d\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentValues;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method public moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V
    .locals 20
    .parameter "fromMailbox"
    .parameter
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, idSeq:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v13, sbUid:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v17, valuesArraySynced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v16, valuesArrayPending:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId = \'%d\' AND +_local = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 39
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 41
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    const-string v2, "_uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 43
    .local v14, uid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 44
    .local v10, messageId:J
    if-eqz v14, :cond_1

    .line 45
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v2, "_uid"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "_del"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v2, "_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->deleteFromServer()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 59
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v12, pendingValues:Landroid/content/ContentValues;
    const-string v2, "_accountId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v2, "_messageId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v2, "_request"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v2, "_fromMailboxId"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v2, "_uid"

    invoke-virtual {v12, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "_toMailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 70
    .end local v10           #messageId:J
    .end local v12           #pendingValues:Landroid/content/ContentValues;
    .end local v14           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_2
    throw v2

    .line 54
    .restart local v10       #messageId:J
    .restart local v14       #uid:Ljava/lang/String;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    invoke-static {v14}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local v10           #messageId:J
    .end local v14           #uid:Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v2, :cond_7

    .line 79
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 84
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->deleteFromServer()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 85
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 92
    :cond_7
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v2, :cond_8

    .line 93
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 95
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account = \'%d\' AND _uid in (%s) AND +_del <> -1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId = \'%d\' AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    :cond_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId = \'%d\' AND +_del = -1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 106
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .restart local v15       #values:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/POP3LocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v15, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    return-void
.end method
