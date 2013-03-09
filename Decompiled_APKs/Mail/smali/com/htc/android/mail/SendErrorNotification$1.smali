.class final Lcom/htc/android/mail/SendErrorNotification$1;
.super Ljava/lang/Object;
.source "SendErrorNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaition(Landroid/content/Context;ZZ)V
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
    .line 296
    iput-object p1, p0, Lcom/htc/android/mail/SendErrorNotification$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 298
    const/4 v8, 0x0

    .line 300
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_type=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 303
    :goto_0
    if-eqz v8, :cond_2

    .line 304
    invoke-static {}, Lcom/htc/android/mail/SendErrorNotification;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SendErrorNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notification to show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const-string v0, "_accountid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 308
    .local v6, accountId:J
    new-instance v9, Lcom/htc/android/mail/SendErrorNotification;

    iget-object v0, p0, Lcom/htc/android/mail/SendErrorNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 309
    .local v9, newNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v9, v6, v7}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I

    goto :goto_1

    .line 311
    .end local v6           #accountId:J
    .end local v9           #newNotify:Lcom/htc/android/mail/SendErrorNotification;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method
