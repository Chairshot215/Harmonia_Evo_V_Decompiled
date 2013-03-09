.class public Lcom/htc/android/mail/database/ImapLocalStore;
.super Lcom/htc/android/mail/database/LocalStore;
.source "ImapLocalStore.java"


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
    .line 24
    invoke-direct {p0}, Lcom/htc/android/mail/database/LocalStore;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/android/mail/database/ImapLocalStore;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    .line 27
    iget-object v0, p0, Lcom/htc/android/mail/database/ImapLocalStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    .line 28
    return-void
.end method


# virtual methods
.method public deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 21
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
    .line 142
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v15

    .line 143
    .local v15, trashMailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v7, v15, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/htc/android/mail/database/ImapLocalStore;->moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V

    .line 184
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v18, valuesArrayPending:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v3, ","

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 150
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

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "_uid"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "_messageid"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 155
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "_uid"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 157
    .local v16, uid:Ljava/lang/String;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 158
    .local v11, messageId:J
    const-string v3, "_messageid"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, msgIdInHeader:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v14, pendingValues:Landroid/content/ContentValues;
    const-string v3, "_accountId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v3, "_messageId"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v3, "_msgId"

    invoke-virtual {v14, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "_request"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v3, "_fromMailboxId"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v3, "_uid"

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 169
    .end local v11           #messageId:J
    .end local v13           #msgIdInHeader:Ljava/lang/String;
    .end local v14           #pendingValues:Landroid/content/ContentValues;
    .end local v16           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    throw v3

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 179
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

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 180
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "_del"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteOldDraftLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "context"
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v17, valuesArraySynced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v16, valuesArrayPending:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id IN (%s) AND _mailboxId = %d AND +_local = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "_messageid"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 203
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 204
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "_uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 206
    .local v14, uid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 207
    .local v10, messageId:J
    const-string v2, "_messageid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 208
    .local v12, msgIdInHeader:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v13, pendingValues:Landroid/content/ContentValues;
    if-eqz v14, :cond_0

    .line 210
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v2, "_uid"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "_del"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v2, "_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_0
    const-string v2, "_accountId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v2, "_messageId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v2, "_msgId"

    invoke-virtual {v13, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "_request"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v2, "_fromMailboxId"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v2, "_uid"

    invoke-virtual {v13, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 225
    .end local v10           #messageId:J
    .end local v12           #msgIdInHeader:Ljava/lang/String;
    .end local v13           #pendingValues:Landroid/content/ContentValues;
    .end local v14           #uid:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 233
    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/htc/android/mail/database/LocalStore;->deleteOldDraftLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V

    .line 236
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 239
    :cond_4
    return-void
.end method

.method public emptyMailbox(Landroid/content/Context;JJ)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 188
    invoke-super/range {p0 .. p5}, Lcom/htc/android/mail/database/LocalStore;->emptyMailbox(Landroid/content/Context;JJ)V

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_accountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v1, "_request"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "_fromMailboxId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v1, p0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 194
    return-void
.end method

.method public moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V
    .locals 21
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
    .line 69
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v18, valuesArraySynced:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v17, valuesArrayPending:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId = \'%d\' AND +_local = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "_messageid"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 75
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 77
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const-string v2, "_uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, uid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 80
    .local v10, messageId:J
    const-string v2, "_messageid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, msgIdInHeader:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 82
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v2, "_uid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "_del"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v2, "_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v13, pendingValues:Landroid/content/ContentValues;
    const-string v2, "_accountId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v2, "_messageId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v2, "_msgId"

    invoke-virtual {v13, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "_request"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "_fromMailboxId"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v2, "_uid"

    invoke-virtual {v13, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "_toMailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 101
    .end local v10           #messageId:J
    .end local v12           #msgIdInHeader:Ljava/lang/String;
    .end local v13           #pendingValues:Landroid/content/ContentValues;
    .end local v15           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_1
    throw v2

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 112
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId = \'%d\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v3, "_uid"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "_mailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v2, "_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-nez v2, :cond_5

    .line 118
    const-string v2, "_local"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v14

    .line 122
    .local v14, trashMailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v6, v14, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 124
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    :cond_7
    :goto_1
    return-void

    .line 132
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_1
.end method

.method protected setMailLocalReadStatus(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 19
    .parameter "context"
    .parameter "mailbox"
    .parameter
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz p4, :cond_1

    const/4 v13, 0x4

    .line 34
    .local v13, request:I
    :goto_0
    invoke-super/range {p0 .. p4}, Lcom/htc/android/mail/database/LocalStore;->setMailLocalReadStatus(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V

    .line 36
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v16, valuesArrayRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id IN (%s) AND _mailboxId = \'%d\'  AND +_local = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "_messageid"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 40
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 42
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 44
    .local v9, id:J
    const-string v2, "_uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, uid:Ljava/lang/String;
    const-string v2, "_messageid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, msgIdInHeader:Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "_accountId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-string v2, "_messageId"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v2, "_msgId"

    invoke-virtual {v15, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "_request"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v2, "_fromMailboxId"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v2, "_uid"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 56
    .end local v9           #id:J
    .end local v12           #msgIdInHeader:Ljava/lang/String;
    .end local v14           #uid:Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    throw v2

    .line 32
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #idSeq:Ljava/lang/String;
    .end local v13           #request:I
    .end local v16           #valuesArrayRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v13, 0x3

    goto/16 :goto_0

    .line 56
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #idSeq:Ljava/lang/String;
    .restart local v13       #request:I
    .restart local v16       #valuesArrayRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ImapLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 65
    :cond_4
    return-void
.end method
