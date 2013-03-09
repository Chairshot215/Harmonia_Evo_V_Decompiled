.class public Lcom/htc/android/mail/database/ExchangeLocalStore;
.super Lcom/htc/android/mail/database/LocalStore;
.source "ExchangeLocalStore.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExchangeLocalStore"


# instance fields
.field private mAccount:Lcom/htc/android/mail/Account;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/android/mail/database/LocalStore;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    .line 38
    return-void
.end method

.method private filterMoveItem(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, moveItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;>;"
    const/4 v1, -0x1

    .line 253
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 254
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 255
    .local v2, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    iget-object v3, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    move v1, v0

    .line 260
    .end local v2           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 261
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    :cond_1
    return-void

    .line 253
    .restart local v2       #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;JLjava/lang/Boolean;)V
    .locals 16
    .parameter "mailbox"
    .parameter
    .parameter "accountId"
    .parameter "addToTracking"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;J",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    sget-boolean v10, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "ExchangeLocalStore"

    const-string v11, "> deleteMailLocal"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v12}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgServerId(Ljava/util/ArrayList;JLandroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object p2

    .line 270
    if-nez p2, :cond_2

    .line 271
    const-string v10, "ExchangeLocalStore"

    const-string v11, "deleteMailLocal error: mail message list empty"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    new-instance v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;

    invoke-direct {v3}, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;-><init>()V

    .line 276
    .local v3, delItems:Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iput-wide v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    .line 277
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    iput-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    .line 278
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    .line 280
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 281
    .local v4, delMailSize:I
    add-int/lit8 v5, v4, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_4

    .line 282
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/MailMessage;

    .line 283
    .local v7, mailMsg:Lcom/htc/android/mail/MailMessage;
    iget-object v10, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 284
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    iget-object v11, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    iget-wide v11, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 287
    :cond_3
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    iget-wide v11, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    .end local v7           #mailMsg:Lcom/htc/android/mail/MailMessage;
    :cond_4
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 295
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    const-string v11, ","

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, idSeq:Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "_uid in (%s) AND _mailboxId=%d AND _account=%d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    iget-wide v14, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v9, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 298
    .local v1, count:I
    sget-boolean v10, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v10, :cond_5

    if-gtz v1, :cond_5

    .line 299
    const-string v10, "ExchangeLocalStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteMailLocal error. where: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v1           #count:I
    .end local v6           #idSeq:Ljava/lang/String;
    .end local v9           #where:Ljava/lang/String;
    :cond_5
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 307
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    const-string v11, ","

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 308
    .restart local v6       #idSeq:Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "_id in (%s) AND _mailboxId=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    iget-wide v14, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 309
    .restart local v9       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v9, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 310
    .restart local v1       #count:I
    sget-boolean v10, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v10, :cond_6

    if-gtz v1, :cond_6

    .line 311
    const-string v10, "ExchangeLocalStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteMailLocal error. where: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v1           #count:I
    .end local v6           #idSeq:Ljava/lang/String;
    .end local v9           #where:Ljava/lang/String;
    :cond_6
    iget-boolean v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    if-eqz v10, :cond_1

    .line 331
    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 332
    .local v8, size:I
    new-array v2, v8, [Landroid/content/ContentValues;

    .line 333
    .local v2, cv:[Landroid/content/ContentValues;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_7

    .line 334
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    aput-object v10, v2, v5

    .line 335
    aget-object v11, v2, v5

    const-string v12, "_message"

    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    aget-object v11, v2, v5

    const-string v12, "_uid"

    iget-object v10, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    aget-object v10, v2, v5

    const-string v11, "_collectionId"

    iget-object v12, v3, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    aget-object v10, v2, v5

    const-string v11, "_delete"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    aget-object v10, v2, v5

    const-string v11, "_accountId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 342
    :cond_7
    array-length v10, v2

    if-lez v10, :cond_8

    .line 343
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-virtual {v10, v11, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 345
    :cond_8
    sget-boolean v10, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "ExchangeLocalStore"

    const-string v11, "< deleteMailLocal"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public emptyMailbox(Landroid/content/Context;JJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 432
    invoke-super/range {p0 .. p5}, Lcom/htc/android/mail/database/LocalStore;->emptyMailbox(Landroid/content/Context;JJ)V

    .line 433
    const-string v3, "ExchangeLocalStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p4, p5, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdbyMailboxId(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, collId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const-string v3, "ExchangeLocalStore"

    const-string v4, "emptyMailbox failed: Can not get mailbox server id"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_accountId=%d AND _collectionId=\'%s\' AND _delete=2"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, where:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "_accountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    const-string v3, "_message"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v3, "_delete"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v3, "_collectionId"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/eassvc/pim/EASMoveItems;Z)V
    .locals 44
    .parameter "fromMailbox"
    .parameter
    .parameter "toMailbox"
    .parameter "moveServerItems"
    .parameter "syncToRemote"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> moveMailLocal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgServerId(Ljava/util/ArrayList;JLandroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object p2

    .line 45
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    :cond_1
    const-string v2, "ExchangeLocalStore"

    const-string v3, "move mail failed: message list null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_0
    return-void

    .line 50
    :cond_3
    new-instance v28, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v28 .. v28}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 51
    .local v28, moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/android/mail/MailMessage;

    .line 52
    .local v26, mailMessage:Lcom/htc/android/mail/MailMessage;
    new-instance v23, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    invoke-direct/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;-><init>()V

    .line 53
    .local v23, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldName:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldName:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldServerId:Ljava/lang/String;

    .line 57
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-object/from16 v0, v23

    iput-wide v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    .line 58
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 59
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    .line 60
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    .line 65
    :goto_2
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    move-object/from16 v0, v23

    iget v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 68
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_5
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    .line 63
    const/4 v2, 0x2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    goto :goto_2

    .line 72
    .end local v23           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    .end local v26           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_6
    new-instance v36, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v36 .. v36}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 73
    .local v36, serverMailList:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    new-instance v24, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v24 .. v24}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 74
    .local v24, localMailList:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 75
    .restart local v23       #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 76
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    :cond_7
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 82
    .end local v23           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_8
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, serverMail to move count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_9
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, localMail to move count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_a
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 89
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v37, serverValues:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v2, "_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    invoke-static/range {v36 .. v36}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;

    move-result-object v27

    .line 94
    .local v27, messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v27, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 95
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 96
    .local v18, idSeqServer:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId=%d AND _account=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 98
    .local v9, count:I
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, server count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #count:I
    .end local v18           #idSeqServer:Ljava/lang/String;
    .end local v27           #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #serverValues:Landroid/content/ContentValues;
    :cond_b
    :goto_4
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 108
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v25, localValues:Landroid/content/ContentValues;
    const-string v2, "_mailboxId"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v2, "_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-static/range {v24 .. v24}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;

    move-result-object v27

    .line 113
    .restart local v27       #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v27, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 114
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 115
    .local v17, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id in (%s) AND _mailboxId=%d AND _account=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .restart local v5       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    .line 117
    .local v9, count:J
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, local count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #count:J
    .end local v17           #idSeq:Ljava/lang/String;
    .end local v25           #localValues:Landroid/content/ContentValues;
    .end local v27           #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    if-eqz v36, :cond_d

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_f

    .line 122
    :cond_d
    const-string v2, "ExchangeLocalStore"

    const-string v3, "moveMailLocal: server mail list empty"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    .restart local v27       #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37       #serverValues:Landroid/content/ContentValues;
    :cond_e
    const-string v2, "ExchangeLocalStore"

    const-string v3, "moveMailLocal: Server message id list is empty"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 126
    .end local v27           #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #serverValues:Landroid/content/ContentValues;
    :cond_f
    if-eqz p5, :cond_2

    .line 133
    new-instance v22, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 134
    .local v22, insertList:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    new-instance v40, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v40 .. v40}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 135
    .local v40, updateList:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v13, deleteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    move-object/from16 v35, v0

    .line 138
    .local v35, processedFalgAry:[Z
    const/4 v11, 0x0

    .line 141
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v36 .. v36}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgServerIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;

    move-result-object v27

    .line 142
    .restart local v27       #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v27, :cond_10

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 143
    :cond_10
    const-string v2, "ExchangeLocalStore"

    const-string v3, "moveMailLocal: message id list is empty"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 147
    :cond_11
    :try_start_1
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 148
    .restart local v17       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_uid in (%s) AND _move=1 AND _accountId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .restart local v5       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 150
    if-eqz v11, :cond_14

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 152
    :cond_12
    const-string v2, "_uid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 153
    .local v38, uid:Ljava/lang/String;
    const-string v2, "_collectionId"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, collId:Ljava/lang/String;
    const-string v2, "_param"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 155
    .local v34, param:I
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 177
    :cond_13
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 180
    .end local v8           #collId:Ljava/lang/String;
    .end local v34           #param:I
    .end local v38           #uid:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 181
    .local v30, nSize:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_6
    move/from16 v0, v30

    if-ge v15, v0, :cond_1f

    .line 182
    aget-boolean v2, v35, v15

    if-nez v2, :cond_15

    .line 183
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 159
    .end local v15           #i:I
    .end local v30           #nSize:I
    .restart local v8       #collId:Ljava/lang/String;
    .restart local v34       #param:I
    .restart local v38       #uid:Ljava/lang/String;
    :cond_16
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, mail exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_17
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 162
    .local v20, index:I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    .line 163
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string v2, "ExchangeLocalStore"

    const-string v3, "index == -1"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 240
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #collId:Ljava/lang/String;
    .end local v17           #idSeq:Ljava/lang/String;
    .end local v20           #index:I
    .end local v27           #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v34           #param:I
    .end local v38           #uid:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 241
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    if-eqz v11, :cond_18

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_18

    .line 244
    .end local v14           #e:Ljava/lang/Exception;
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_18
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ExchangeLocalStore"

    const-string v3, "< moveMailLocal"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #collId:Ljava/lang/String;
    .restart local v17       #idSeq:Ljava/lang/String;
    .restart local v20       #index:I
    .restart local v27       #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34       #param:I
    .restart local v38       #uid:Ljava/lang/String;
    :cond_19
    :try_start_3
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 168
    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/database/ExchangeLocalStore;->filterMoveItem(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    :cond_1a
    :goto_8
    const/4 v2, 0x1

    aput-boolean v2, v35, v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 243
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #collId:Ljava/lang/String;
    .end local v17           #idSeq:Ljava/lang/String;
    .end local v20           #index:I
    .end local v27           #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v34           #param:I
    .end local v38           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_1b

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 244
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1b
    throw v2

    .line 170
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #collId:Ljava/lang/String;
    .restart local v17       #idSeq:Ljava/lang/String;
    .restart local v20       #index:I
    .restart local v27       #messageIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34       #param:I
    .restart local v38       #uid:Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ne v0, v2, :cond_1d

    .line 171
    :try_start_4
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 172
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v0, v2, :cond_1a

    .line 174
    :cond_1e
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 188
    .end local v8           #collId:Ljava/lang/String;
    .end local v20           #index:I
    .end local v34           #param:I
    .end local v38           #uid:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v30       #nSize:I
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Landroid/content/ContentValues;

    move-object/from16 v21, v0

    .line 189
    .local v21, insertCvAry:[Landroid/content/ContentValues;
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_20

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, insert tracking count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_20
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, update tracking count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_21
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal, delete tracking count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_22
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 194
    .local v29, nInsertSize:I
    const/4 v15, 0x0

    :goto_9
    move/from16 v0, v29

    if-ge v15, v0, :cond_23

    .line 195
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v12, cv:Landroid/content/ContentValues;
    const-string v3, "_message"

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-wide v6, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v3, "_uid"

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "_collectionId"

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "_move"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "_param"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "_accountId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    aput-object v12, v21, v15

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 205
    .end local v12           #cv:Landroid/content/ContentValues;
    :cond_23
    if-eqz v21, :cond_24

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_24

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 210
    :cond_24
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 211
    const-string v2, ","

    const/4 v3, 0x1

    invoke-static {v13, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 212
    .local v19, idSeq_del:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_uid in (%s) AND _move=1 AND _accountId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 213
    .local v41, where_del:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 214
    .local v9, count:I
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal(delete): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v9           #count:I
    .end local v19           #idSeq_del:Ljava/lang/String;
    .end local v41           #where_del:Ljava/lang/String;
    :cond_25
    const/16 v32, 0x0

    .line 219
    .local v32, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v33, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 221
    .local v31, nUpdateSize:I
    const/4 v15, 0x0

    :goto_a
    move/from16 v0, v31

    if-ge v15, v0, :cond_27

    .line 222
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .restart local v12       #cv:Landroid/content/ContentValues;
    const-string v3, "_message"

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-wide v6, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v3, "_uid"

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "_move"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_accountId=%d AND _uid=\'%s\' AND _move=1"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 228
    .local v39, updWhere:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v32

    .line 229
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 230
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 232
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-boolean v2, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v2, :cond_26

    const-string v2, "ExchangeLocalStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMailLocal(update): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_26
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 236
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v39           #updWhere:Ljava/lang/String;
    :cond_27
    if-eqz v33, :cond_28

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mail"

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 243
    :cond_28
    if-eqz v11, :cond_18

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_7
.end method

.method public updFlagMailToTracking(JLcom/htc/android/mail/MailMessage;Lcom/htc/android/mail/Mailbox;)V
    .locals 10
    .parameter "accountId"
    .parameter "mailMessage"
    .parameter "mailbox"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 349
    sget-boolean v4, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ExchangeLocalStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updFlagMailToTracking: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    :try_start_0
    const-string v4, "Unknown"

    iget-object v5, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    const-string v4, "ExchangeLocalStore"

    const-string v5, "update flag to tracking fail: Exchange protocol unknown"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 356
    const-string v4, "ExchangeLocalStore"

    const-string v5, "update flag to tracking fail: Exchange protocol does not support flag"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v3

    .line 360
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    iget-wide v4, p3, Lcom/htc/android/mail/MailMessage;->id:J

    iget-object v6, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v8, v6}, Lcom/htc/android/mail/database/ExchangeUtil;->getUidByMessageId(JZLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 365
    iget-object v4, p3, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    const-string v4, "ExchangeLocalStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update flag to tracking failed: message server null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_accountId=%d AND _collectionId=\'%s\' AND _uid=\'%s\' AND _modify=2"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p4, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v7, p3, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, delWhere:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, delCount:I
    sget-boolean v4, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ExchangeLocalStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updFlagMailToTracking: delete exist count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_message"

    iget-wide v5, p3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    const-string v4, "_uid"

    iget-object v5, p3, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v4, "_collectionId"

    iget-object v5, p4, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v4, "_modify"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v4, "_param"

    iget v5, p3, Lcom/htc/android/mail/MailMessage;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v4, "_accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    iget-object v4, p0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public updReadMailToTracking(JLjava/util/ArrayList;Lcom/htc/android/mail/Mailbox;I)V
    .locals 16
    .parameter "accountId"
    .parameter
    .parameter "mailbox"
    .parameter "readStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    sget-boolean v11, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "ExchangeLocalStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateReadMailToTracking: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    move-object/from16 v0, p4

    iget-wide v11, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-static {v0, v11, v12, v13}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgServerId(Ljava/util/ArrayList;JLandroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object p3

    .line 388
    if-nez p3, :cond_2

    .line 389
    const-string v11, "ExchangeLocalStore"

    const-string v12, "update read to tracking failed: message list null"

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/MailMessage;

    .line 394
    .local v7, message:Lcom/htc/android/mail/MailMessage;
    iget-object v11, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 395
    iget-object v11, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    .end local v7           #message:Lcom/htc/android/mail/MailMessage;
    :cond_4
    const-string v11, ","

    const/4 v12, 0x1

    invoke-static {v6, v11, v12}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, uidSeq:Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "_accountId=%d AND _collectionId=\'%s\' AND _modify=1 AND _uid in (%s)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, delWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v3, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 401
    .local v2, delCount:I
    sget-boolean v11, Lcom/htc/android/mail/database/ExchangeLocalStore;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "ExchangeLocalStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateReadMailToTracking: delete exist count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_5
    const/4 v8, 0x0

    .line 404
    .local v8, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v9, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/MailMessage;

    .line 406
    .restart local v7       #message:Lcom/htc/android/mail/MailMessage;
    iget-object v11, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 409
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v1, cv:Landroid/content/ContentValues;
    const-string v11, "_message"

    iget-wide v12, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v11, "_uid"

    iget-object v12, v7, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v11, "_collectionId"

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v11, "_modify"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v11, "_param"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v11, "_accountId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    sget-object v11, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 417
    invoke-virtual {v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 418
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 422
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v7           #message:Lcom/htc/android/mail/MailMessage;
    :cond_7
    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/database/ExchangeLocalStore;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "mail"

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 425
    :catch_0
    move-exception v4

    .line 426
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
