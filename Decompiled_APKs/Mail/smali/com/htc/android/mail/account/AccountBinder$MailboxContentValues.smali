.class Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;
.super Ljava/lang/Object;
.source "AccountBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/account/AccountBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxContentValues"
.end annotation


# instance fields
.field mailboxContentValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1420
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/account/AccountBinder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized commit(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1434
    .local v3, size:I
    if-nez v3, :cond_0

    .line 1442
    :goto_0
    monitor-exit p0

    return-void

    .line 1435
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1436
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1437
    .local v2, mailboxId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1438
    .local v4, values:Landroid/content/ContentValues;
    if-eqz v4, :cond_1

    .line 1439
    sget-object v5, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1433
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mailboxId:Ljava/lang/Long;
    .end local v3           #size:I
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1441
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #size:I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getContentValues(J)Landroid/content/ContentValues;
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 1424
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1425
    .local v0, values:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 1426
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #values:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1427
    .restart local v0       #values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1424
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 1445
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->mailboxContentValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
