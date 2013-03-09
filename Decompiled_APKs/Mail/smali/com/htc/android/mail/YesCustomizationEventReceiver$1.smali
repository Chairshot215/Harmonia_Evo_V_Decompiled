.class Lcom/htc/android/mail/YesCustomizationEventReceiver$1;
.super Ljava/lang/Thread;
.source "YesCustomizationEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/YesCustomizationEventReceiver;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

.field final synthetic val$account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/YesCustomizationEventReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    iput-object p2, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 217
    const/4 v6, 0x0

    .line 219
    .local v6, accountExist:Z
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, accountProviderUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_account"

    aput-object v5, v2, v0

    .line 225
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account=\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 234
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    const/4 v6, 0x1

    .line 236
    const-string v0, "YesCustomizationEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1
    if-nez v6, :cond_2

    .line 244
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    iget-object v4, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->val$account:Ljava/lang/String;

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v9, 0x0

    .line 248
    .local v9, newuri:Landroid/net/Uri;
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/YesCustomizationEventReceiver$1;->this$0:Lcom/htc/android/mail/YesCustomizationEventReceiver;

    #getter for: Lcom/htc/android/mail/YesCustomizationEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/YesCustomizationEventReceiver;->access$100(Lcom/htc/android/mail/YesCustomizationEventReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 252
    :goto_0
    const-string v0, "YesCustomizationEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v9           #newuri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 239
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 249
    .restart local v9       #newuri:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 250
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
