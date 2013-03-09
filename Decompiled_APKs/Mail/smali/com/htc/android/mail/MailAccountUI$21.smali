.class Lcom/htc/android/mail/MailAccountUI$21;
.super Ljava/lang/Thread;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;

.field final synthetic val$account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$21;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI$21;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 2159
    const/4 v6, 0x0

    .line 2162
    .local v6, accountExist:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_account"

    aput-object v1, v2, v0

    .line 2165
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$21;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2166
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$21;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailAccountUI;->AccountProviderUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2173
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2175
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 2176
    const/4 v6, 0x1

    .line 2180
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2184
    :cond_1
    if-nez v6, :cond_2

    .line 2185
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2186
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$21;->val$account:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    const/4 v9, 0x0

    .line 2189
    .local v9, newuri:Landroid/net/Uri;
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$21;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailAccountUI;->AccountProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 2193
    :goto_0
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailAccountUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted URI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    .end local v9           #newuri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 2180
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2190
    .restart local v9       #newuri:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 2191
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
