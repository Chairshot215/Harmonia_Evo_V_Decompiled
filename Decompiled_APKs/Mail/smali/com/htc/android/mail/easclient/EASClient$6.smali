.class Lcom/htc/android/mail/easclient/EASClient$6;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 438
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_refreshMailWhenOpenFolder"

    aput-object v0, v2, v10

    .line 439
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, " _provider = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "Exchange"

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 442
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 443
    const/4 v7, 0x0

    .line 445
    .local v7, curAccount:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 447
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_0
    #setter for: Lcom/htc/android/mail/easclient/EASClient;->isUpdateWhenOpen:Z
    invoke-static {v1, v0}, Lcom/htc/android/mail/easclient/EASClient;->access$1202(Lcom/htc/android/mail/easclient/EASClient;Z)Z

    .line 449
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    new-instance v1, Lcom/htc/android/mail/easclient/EASClient$6$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASClient$6$1;-><init>(Lcom/htc/android/mail/easclient/EASClient$6;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASClient;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_1
    return-void

    :cond_2
    move v0, v10

    .line 448
    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_3
    throw v0
.end method
