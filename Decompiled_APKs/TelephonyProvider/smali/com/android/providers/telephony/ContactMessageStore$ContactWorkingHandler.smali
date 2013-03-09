.class Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;
.super Landroid/os/Handler;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ContactMessageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactWorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    .line 1413
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1414
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1418
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1476
    :goto_0
    :pswitch_0
    return-void

    .line 1421
    :pswitch_1
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1423
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v3}, Lcom/android/providers/telephony/ContactMessageStore;->insertContactsTable()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto :goto_0

    .line 1426
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v0

    .line 1427
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1432
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_2
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_REGISTER_CONTENT_OBSERVER >>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->isSupportQueryDialer:Z
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$100(Lcom/android/providers/telephony/ContactMessageStore;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1434
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #calls: Lcom/android/providers/telephony/ContactMessageStore;->regisPeopleURIObserver()V
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$200(Lcom/android/providers/telephony/ContactMessageStore;)V

    .line 1435
    :cond_0
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_REGISTER_CONTENT_OBSERVER <<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1439
    :pswitch_3
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_NOTIFY_CS_TO_SYNC >>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$300(Lcom/android/providers/telephony/ContactMessageStore;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1441
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #setter for: Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z
    invoke-static {v3, v5}, Lcom/android/providers/telephony/ContactMessageStore;->access$402(Lcom/android/providers/telephony/ContactMessageStore;Z)Z

    goto :goto_0

    .line 1445
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$500()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$500()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.messagecs.sync_data"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$500()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1450
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->isDeleting()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$400(Lcom/android/providers/telephony/ContactMessageStore;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1451
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1452
    .local v2, msg1:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1453
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #setter for: Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z
    invoke-static {v3, v6}, Lcom/android/providers/telephony/ContactMessageStore;->access$402(Lcom/android/providers/telephony/ContactMessageStore;Z)Z

    .line 1455
    .end local v2           #msg1:Landroid/os/Message;
    :cond_3
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_NOTIFY_CS_TO_SYNC <<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1459
    :pswitch_4
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1460
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_CHECK_DELETION >>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v3, "ContactMessageStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeleteTask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bDeleting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->isDeleting()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->isDeleting()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1463
    new-instance v3, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    iget-object v4, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1464
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1466
    :cond_4
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 1467
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1468
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1471
    :goto_1
    const-string v3, "ContactMessageStore"

    const-string v4, "MSG_CHECK_DELETION <<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    :cond_5
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactWorkingHandler;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
