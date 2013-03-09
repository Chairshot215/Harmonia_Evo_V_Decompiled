.class Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:Ljava/lang/String;

.field private tryToFetch:Z


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 12201
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->tryToFetch:Z

    .line 12199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mUid:Ljava/lang/String;

    .line 12202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 12203
    return-void
.end method

.method private clearResult([Landroid/database/Cursor;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 12338
    if-nez p1, :cond_0

    .line 12346
    :goto_0
    return-void

    .line 12339
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask$1;-><init>(Lcom/htc/android/mail/ComposeActivity$LoadDataTask;[Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setAccountId(Lcom/htc/android/mail/ComposeActivity;Landroid/content/Intent;J)V
    .locals 6
    .parameter "target"
    .parameter "it"
    .parameter "accountIdInCursor"

    .prologue
    const/4 v5, 0x4

    const-wide/16 v3, -0x1

    .line 12323
    const-string v1, "accountID"

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$13202(Lcom/htc/android/mail/ComposeActivity;J)J

    .line 12324
    cmp-long v1, p3, v3

    if-eqz v1, :cond_0

    const-wide v1, 0x7ffffffffffffffeL

    cmp-long v1, p3, v1

    if-eqz v1, :cond_0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1, p3, p4}, Lcom/htc/android/mail/ComposeActivity;->access$13202(Lcom/htc/android/mail/ComposeActivity;J)J

    .line 12325
    :cond_0
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1}, Lcom/htc/android/mail/ComposeActivity;->access$13200(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1}, Lcom/htc/android/mail/ComposeActivity;->access$13200(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 12326
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$13202(Lcom/htc/android/mail/ComposeActivity;J)J

    .line 12328
    :cond_2
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {p1}, Lcom/htc/android/mail/ComposeActivity;->access$13200(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {p1, v1}, Lcom/htc/android/mail/ComposeActivity;->access$5202(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/Account;

    .line 12329
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {p1}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12330
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {p1}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 12331
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 12332
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v0, p1, v5}, Lcom/htc/android/mail/AccountPool;->getAccountCount(Landroid/content/Context;I)I

    move-result v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mExchangeAccountCount:I
    invoke-static {p1, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13702(Lcom/htc/android/mail/ComposeActivity;I)I

    .line 12335
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12196
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->doInBackground([Ljava/lang/Void;)[Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/database/Cursor;
    .locals 27
    .parameter "pam"

    .prologue
    .line 12207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/android/mail/ComposeActivity;

    .line 12208
    .local v25, target:Lcom/htc/android/mail/ComposeActivity;
    if-nez v25, :cond_0

    const/16 v19, 0x0

    .line 12282
    :goto_0
    return-object v19

    .line 12210
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-object v6, v19, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-object v6, v19, v4

    .line 12212
    .local v19, cursors:[Landroid/database/Cursor;
    const-wide/16 v17, -0x1

    .line 12214
    .local v17, accountIdInCursor:J
    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 12215
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->setAccountId(Lcom/htc/android/mail/ComposeActivity;Landroid/content/Intent;J)V

    goto :goto_0

    .line 12219
    :cond_1
    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "reply"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "replyMeeting"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "forwardMeeting"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "proposeNewTime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "forward"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "replyall"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "replyOne"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "editdraft"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12228
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->setAccountId(Lcom/htc/android/mail/ComposeActivity;Landroid/content/Intent;J)V

    goto/16 :goto_0

    .line 12232
    :cond_2
    const/16 v21, 0x0

    .line 12233
    .local v21, messageCursor:Landroid/database/Cursor;
    const-wide/16 v22, -0x1

    .line 12234
    .local v22, messageId:J
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMessageIdInHeader:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$6000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 12235
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 12236
    .local v5, uri:Landroid/net/Uri;
    const-string v7, "_messageid = ?"

    .line 12237
    .local v7, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMessageIdInHeader:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$6000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .line 12238
    .local v8, whereArgs:[Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 12246
    .end local v5           #uri:Landroid/net/Uri;
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v21, :cond_4

    .line 12247
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12248
    const-string v4, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 12249
    const-string v4, "_account"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 12250
    const-string v4, "_uid"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mUid:Ljava/lang/String;

    .line 12251
    const-string v4, "_done"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 12253
    .local v20, done:I
    if-nez v20, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->tryToFetch:Z

    .line 12257
    .end local v20           #done:I
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->setAccountId(Lcom/htc/android/mail/ComposeActivity;Landroid/content/Intent;J)V

    .line 12259
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$13200(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v4

    move-object/from16 v0, v25

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0, v4}, Lcom/htc/android/mail/ComposeActivity;->access$5202(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/Account;

    .line 12261
    const/16 v24, 0x0

    .line 12263
    .local v24, partsCursor:Landroid/database/Cursor;
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12264
    const-wide/16 v13, -0x1

    cmp-long v4, v22, v13

    if-eqz v4, :cond_5

    .line 12266
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromSearchSvrMailView:Z
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->access$13300(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 12267
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsMessageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v26

    .line 12268
    .local v26, uriPart:Landroid/net/Uri$Builder;
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12269
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 12273
    .end local v26           #uriPart:Landroid/net/Uri$Builder;
    .local v12, partsUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/htc/android/mail/MailProvider;->sLimitPartColumnsForCompose:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 12278
    .end local v12           #partsUri:Landroid/net/Uri;
    :cond_5
    if-eqz v21, :cond_6

    const/4 v4, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12279
    :cond_6
    if-eqz v24, :cond_7

    const/4 v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12280
    :cond_7
    const/4 v4, 0x0

    aput-object v21, v19, v4

    .line 12281
    const/4 v4, 0x1

    aput-object v24, v19, v4

    goto/16 :goto_0

    .line 12240
    .end local v24           #partsCursor:Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 12241
    .local v10, messageUri:Landroid/net/Uri;
    if-eqz v10, :cond_3

    .line 12242
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    goto/16 :goto_1

    .line 12271
    .end local v10           #messageUri:Landroid/net/Uri;
    .restart local v24       #partsCursor:Landroid/database/Cursor;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/partsMsgId/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12       #partsUri:Landroid/net/Uri;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12196
    check-cast p1, [Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->onPostExecute([Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPostExecute([Landroid/database/Cursor;)V
    .locals 11
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 12287
    if-nez p1, :cond_0

    .line 12320
    :goto_0
    return-void

    .line 12289
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/ComposeActivity;

    .line 12290
    .local v9, target:Lcom/htc/android/mail/ComposeActivity;
    if-nez v9, :cond_1

    .line 12291
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->clearResult([Landroid/database/Cursor;)V

    goto :goto_0

    .line 12295
    :cond_1
    invoke-virtual {v9}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12296
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->clearResult([Landroid/database/Cursor;)V

    goto :goto_0

    .line 12300
    :cond_2
    aget-object v0, p1, v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mMessageCursor:Landroid/database/Cursor;
    invoke-static {v9, v0}, Lcom/htc/android/mail/ComposeActivity;->access$6202(Lcom/htc/android/mail/ComposeActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 12301
    aget-object v0, p1, v10

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mPartsCursor:Landroid/database/Cursor;
    invoke-static {v9, v0}, Lcom/htc/android/mail/ComposeActivity;->access$6302(Lcom/htc/android/mail/ComposeActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 12303
    iget-boolean v0, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->tryToFetch:Z

    if-eqz v0, :cond_4

    .line 12304
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$6100(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v0

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController;->isNeedToFetch(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12305
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v8

    .line 12306
    .local v8, mailboxs:Lcom/htc/android/mail/Mailboxs;
    const/4 v6, 0x0

    .line 12307
    .local v6, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v8, :cond_3

    .line 12308
    invoke-virtual {v8}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 12309
    if-eqz v6, :cond_3

    .line 12310
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$6100(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v0

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccountId:J
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$13200(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->mUid:Ljava/lang/String;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/htc/android/mail/ComposeActivity;->access$13400(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/AbsRequestController;->fetchMessageAgain(JJLjava/lang/String;Lcom/htc/android/mail/Mailbox;Ljava/lang/ref/WeakReference;)V

    .line 12314
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v8           #mailboxs:Lcom/htc/android/mail/Mailboxs;
    :cond_3
    const/16 v0, 0x17

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    .line 12318
    :goto_1
    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsUILoadComplete:Z
    invoke-static {v9, v10}, Lcom/htc/android/mail/ComposeActivity;->access$13602(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12319
    const/4 v0, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v9, v0}, Lcom/htc/android/mail/ComposeActivity;->access$7302(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$LoadDataTask;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    goto :goto_0

    .line 12316
    :cond_4
    aget-object v0, p1, v1

    aget-object v1, p1, v10

    #calls: Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13500(Lcom/htc/android/mail/ComposeActivity;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto :goto_1
.end method
