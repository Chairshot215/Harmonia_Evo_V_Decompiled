.class public Lcom/htc/util/mail/AsyncQueryMessageHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AsyncQueryMessageHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    iput-object p1, p0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    return-void
.end method

.method private getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 25

    invoke-super/range {p0 .. p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/util/mail/IMailMessageListener;->onMessageRetrieveResult(JI)V

    :cond_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    new-instance v2, Lcom/htc/util/mail/MailMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mContext:Landroid/content/Context;

    const-string v4, "_account"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "_mailboxId"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "_from"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_fromEmail"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_to"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/util/mail/AsyncQueryMessageHandler;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "_cc"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/util/mail/AsyncQueryMessageHandler;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "_bcc"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/util/mail/AsyncQueryMessageHandler;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string v15, "_subject"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "_read"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_1
    const-string v18, "_flags"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v19, "_importance"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v20, "_messagesize"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v21, "_incAttachment"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    new-instance v22, Ljava/util/Date;

    const-string v23, "_internaldate"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-direct/range {v22 .. v24}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v2 .. v22}, Lcom/htc/util/mail/MailMessage;-><init>(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZIIIILjava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    invoke-interface {v3, v2}, Lcom/htc/util/mail/IMailMessageListener;->onMessageRetrieved(Lcom/htc/util/mail/MailMessage;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/util/mail/IMailMessageListener;->onMessageRetrieveResult(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    const/16 p3, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/util/mail/IMailMessageListener;->onMessageRetrieveResult(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    const/16 p3, 0x0

    throw v3
.end method

.method public startQuery(J)V
    .locals 8

    const/4 v2, 0x0

    long-to-int v1, p1

    sget-object v3, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/mail/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-super/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v3, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/mail/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    const-string v7, "_internaldate DESC"

    move-object v0, p0

    move-object v5, p1

    move-object v6, v2

    invoke-super/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
