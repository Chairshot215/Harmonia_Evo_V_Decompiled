.class public Lcom/htc/android/mail/server/HUXSmtpServer;
.super Lcom/htc/android/mail/server/SmtpServer;
.source "HUXSmtpServer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "context"
    .parameter "account"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/server/SmtpServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 27
    return-void
.end method

.method private initMail(Landroid/os/Bundle;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 116
    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->email:Ljava/lang/String;

    .line 120
    const-string v4, "to"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    .line 121
    const-string v4, "cc"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    .line 122
    const-string v4, "bcc"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->bccText:Ljava/lang/String;

    .line 123
    const-string v4, "importance"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mImportance:I

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v3, totalText:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->bccText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/Mailaddress;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    .local v1, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailaddress;

    .line 133
    .local v0, address:Lcom/htc/android/mail/Mailaddress;
    if-eqz v0, :cond_0

    .line 134
    iget-object v4, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    iget-object v5, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v0           #address:Lcom/htc/android/mail/Mailaddress;
    :cond_1
    return-void
.end method


# virtual methods
.method public getInfosForLoginPlain()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 44
    .local v0, infos:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    return-object v0
.end method

.method public getPasswordForLoginAUTH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNameForLoginAUTH()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, userName:Ljava/lang/String;
    return-object v0
.end method

.method public sendMail(Landroid/os/Bundle;)V
    .locals 19
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const-string v16, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 55
    .local v4, messageId:J
    const-string v16, "smartCommand"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 56
    .local v13, smartCommand:J
    const-string v16, "refMsgId"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 57
    .local v6, refMessageId:J
    const-wide/16 v16, 0xa

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-eqz v16, :cond_4

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v12

    .line 59
    .local v12, serverpool:Lcom/htc/android/mail/server/ServerPool;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v2

    .line 60
    .local v2, imapServer:Lcom/htc/android/mail/server/Server;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 61
    .local v3, sentMailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v11, 0x0

    .line 63
    .local v11, result:[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/mail/server/Server;->catenate(Lcom/htc/android/mail/Mailbox;JJ)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 65
    invoke-virtual {v2}, Lcom/htc/android/mail/server/Server;->close()V

    .line 66
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v2, Lcom/htc/android/mail/server/Server;->state:I

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1, v2}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 69
    if-nez v11, :cond_0

    new-instance v16, Lcom/htc/android/mail/exception/SmtpException;

    invoke-direct/range {v16 .. v16}, Lcom/htc/android/mail/exception/SmtpException;-><init>()V

    throw v16

    .line 65
    :catchall_0
    move-exception v16

    invoke-virtual {v2}, Lcom/htc/android/mail/server/Server;->close()V

    .line 66
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v2, Lcom/htc/android/mail/server/Server;->state:I

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 65
    throw v16

    .line 71
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->checkAccount()V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->probe()V

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/server/Server;->socketState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->init()V

    .line 79
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/HUXSmtpServer;->initMail(Landroid/os/Bundle;)V

    .line 81
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MAIL FROM:<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXSmtpServer;->issue(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->readResponse()Ljava/util/List;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 85
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 86
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RCPT TO:<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXSmtpServer;->issue(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->readResponse()Ljava/util/List;

    goto :goto_0

    .line 90
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BURL "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " LAST"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/HUXSmtpServer;->issue(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/HUXSmtpServer;->readResponse()Ljava/util/List;

    .line 93
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v15, values:Landroid/content/ContentValues;
    const-string v16, "_accountId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v16, "_messageId"

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v16, "_request"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v16, "_fromMailboxId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v16, "_uid"

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v10

    .line 102
    .local v10, requestController:Lcom/htc/android/mail/AbsRequestController;
    new-instance v9, Lcom/htc/android/mail/Request;

    invoke-direct {v9}, Lcom/htc/android/mail/Request;-><init>()V

    .line 103
    .local v9, r:Lcom/htc/android/mail/Request;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 104
    const/16 v16, 0x9

    move/from16 v0, v16

    iput v0, v9, Lcom/htc/android/mail/Request;->command:I

    .line 105
    if-eqz v10, :cond_3

    .line 106
    invoke-virtual {v10, v9}, Lcom/htc/android/mail/RequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 113
    .end local v2           #imapServer:Lcom/htc/android/mail/server/Server;
    .end local v3           #sentMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #r:Lcom/htc/android/mail/Request;
    .end local v10           #requestController:Lcom/htc/android/mail/AbsRequestController;
    .end local v11           #result:[Ljava/lang/String;
    .end local v12           #serverpool:Lcom/htc/android/mail/server/ServerPool;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 112
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/htc/android/mail/server/SmtpServer;->sendMail(Landroid/os/Bundle;)V

    goto :goto_1
.end method
