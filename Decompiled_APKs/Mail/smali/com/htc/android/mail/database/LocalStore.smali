.class public Lcom/htc/android/mail/database/LocalStore;
.super Ljava/lang/Object;
.source "LocalStore.java"


# static fields
.field private static mLocalStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/database/LocalStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/database/LocalStore;
    .locals 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 33
    const-class v3, Lcom/htc/android/mail/database/LocalStore;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 34
    const-class v4, Lcom/htc/android/mail/database/LocalStore;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    sget-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;

    .line 38
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :cond_1
    :try_start_2
    sget-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 66
    :cond_2
    :goto_0
    monitor-exit v3

    return-object v0

    .line 38
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 33
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 42
    :cond_3
    :try_start_5
    sget-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/LocalStore;

    .line 44
    .local v0, localStore:Lcom/htc/android/mail/database/LocalStore;
    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    .line 48
    .local v1, protocol:I
    packed-switch v1, :pswitch_data_0

    .line 64
    :goto_1
    :pswitch_0
    sget-object v2, Lcom/htc/android/mail/database/LocalStore;->mLocalStoreMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance v0, Lcom/htc/android/mail/database/POP3LocalStore;

    .end local v0           #localStore:Lcom/htc/android/mail/database/LocalStore;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/database/POP3LocalStore;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 51
    .restart local v0       #localStore:Lcom/htc/android/mail/database/LocalStore;
    goto :goto_1

    .line 54
    :pswitch_2
    new-instance v0, Lcom/htc/android/mail/database/ImapLocalStore;

    .end local v0           #localStore:Lcom/htc/android/mail/database/LocalStore;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/database/ImapLocalStore;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 55
    .restart local v0       #localStore:Lcom/htc/android/mail/database/LocalStore;
    goto :goto_1

    .line 57
    :pswitch_3
    new-instance v0, Lcom/htc/android/mail/database/POP3LocalStore;

    .end local v0           #localStore:Lcom/htc/android/mail/database/LocalStore;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/database/POP3LocalStore;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 58
    .restart local v0       #localStore:Lcom/htc/android/mail/database/LocalStore;
    goto :goto_1

    .line 60
    :pswitch_4
    new-instance v0, Lcom/htc/android/mail/database/ExchangeLocalStore;

    .end local v0           #localStore:Lcom/htc/android/mail/database/LocalStore;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/database/ExchangeLocalStore;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v0       #localStore:Lcom/htc/android/mail/database/LocalStore;
    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 117
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;JLjava/lang/Boolean;)V
    .locals 0
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
    .line 118
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public deleteOldDraftLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 10
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
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const/4 v9, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, ","

    invoke-static {p3, v4, v9}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, idSeq:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_Id IN (%s) AND _mailboxId = %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    iget-wide v7, p2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "delAttachment"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, deleteUri:Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public emptyMailbox(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_mailboxId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public markStarLocal(Landroid/content/Context;Lcom/htc/android/mail/MailMessage;)V
    .locals 7
    .parameter "context"
    .parameter "mailMessage"

    .prologue
    const/4 v6, 0x0

    .line 94
    iget-wide v0, p2, Lcom/htc/android/mail/MailMessage;->id:J

    .line 95
    .local v0, messageId:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_flags"

    iget v4, p2, Lcom/htc/android/mail/MailMessage;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sSummariesMarkStarURI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V
    .locals 0
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
    .line 114
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/eassvc/pim/EASMoveItems;Z)V
    .locals 0
    .parameter "fromMailbox"
    .parameter
    .parameter "toMailbox"
    .parameter "moveItems"
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
    .line 115
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method protected setMailLocalReadStatus(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 11
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
    .line 84
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz p4, :cond_0

    const/4 v2, 0x1

    .line 85
    .local v2, status:I
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "_read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v5, ","

    const/4 v6, 0x1

    invoke-static {p3, v5, v6}, Lcom/htc/android/mail/MailCommon;->combineMessageId(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, idSeq:Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_Id IN (%s) AND _mailboxId = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-wide v9, p2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sSummariesReadURI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return-void

    .line 84
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #idSeq:Ljava/lang/String;
    .end local v2           #status:I
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setReadMailLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter "mailbox"
    .parameter
    .parameter "bNotifyChange"
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
    .line 73
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/database/LocalStore;->setMailLocalReadStatus(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V

    .line 74
    return-void
.end method

.method public setUnreadMailLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter "mailbox"
    .parameter
    .parameter "bNotifyChange"
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
    .line 80
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/database/LocalStore;->setMailLocalReadStatus(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V

    .line 81
    return-void
.end method
