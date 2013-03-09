.class final Lcom/htc/android/mail/NewMailNotification$3;
.super Ljava/lang/Object;
.source "NewMailNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaition(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/android/mail/NewMailNotification$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 366
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 367
    const/4 v6, 0x0

    .line 369
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_type=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    invoke-static {}, Lcom/htc/android/mail/NewMailNotification;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NewMailNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " notification to show"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    const-string v0, "_accountid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 373
    .local v1, accountId:J
    const-string v0, "_messageid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 374
    .local v4, messageId:J
    iget-object v0, p0, Lcom/htc/android/mail/NewMailNotification$3;->val$context:Landroid/content/Context;

    const v3, 0x7fffffff

    #calls: Lcom/htc/android/mail/NewMailNotification;->showNotification(Landroid/content/Context;JIJ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/NewMailNotification;->access$000(Landroid/content/Context;JIJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v1           #accountId:J
    .end local v4           #messageId:J
    :catch_0
    move-exception v7

    .line 377
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/NewMailNotification;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NewMailNotification"

    const-string v3, "catch exception"

    invoke-static {v0, v3, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_2
    return-void

    .line 379
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_3
    throw v0

    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method
