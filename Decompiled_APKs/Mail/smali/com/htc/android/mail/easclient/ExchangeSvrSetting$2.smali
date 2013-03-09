.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 356
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v2, v1

    .line 357
    .local v2, projection:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v7, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 360
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2600()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 371
    :goto_0
    if-eqz v8, :cond_2

    .line 373
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, account:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 381
    .end local v6           #account:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 385
    .local v10, msg:Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v10, Landroid/os/Message;->what:I

    .line 386
    iput-object v7, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void

    .line 365
    .end local v10           #msg:Landroid/os/Message;
    :catch_0
    move-exception v9

    .line 366
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
