.class final Lcom/coremobility/integration/app/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/app/CM_Service;


# direct methods
.method public constructor <init>(Lcom/coremobility/integration/app/CM_Service;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x1

    const/16 v7, 0x17

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->h()V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string v0, "Ignore null intent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v4, "com.coremobility.app.vnotes.APP_STARTED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Lcom/coremobility/integration/app/CM_Service;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exiting service because of uncaught exception."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->b(Lcom/coremobility/integration/app/CM_Service;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exception in shutdown. Exiting."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v4, "com.coremobility.app.vnotes.APP_STOPPED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->b(Lcom/coremobility/integration/app/CM_Service;)V

    goto :goto_0

    :cond_3
    const-string v4, "com.coremobility.app.vnotes.START_NOW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->j()Lcom/coremobility/integration/app/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/i;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Lcom/coremobility/integration/app/CM_Service;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->i()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start Lifecycle by"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->j()Lcom/coremobility/integration/app/i;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/coremobility/integration/app/i;->removeMessages(I)V

    iget-object v4, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v4}, Lcom/coremobility/integration/app/CM_Service;->a(Lcom/coremobility/integration/app/CM_Service;)V

    :cond_5
    const-string v4, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->c(Lcom/coremobility/integration/app/CM_Service;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "com.coremobility.app.vnotes.SERVICE_SMS_RECEIVE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/a/a;->e()Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_7

    const-string v1, "String"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    const/16 v0, 0x17

    const-string v1, "Sms Text Is Null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "sms_message_body"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/integration/message/d;

    invoke-direct {v1}, Lcom/coremobility/integration/message/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/message/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->k()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    invoke-static {v1}, Lcom/coremobility/integration/message/c;->b(Lcom/coremobility/integration/message/d;)Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0

    :cond_9
    const-string v4, "com.coremobility.app.vnotes.STORAGE_STATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v1, "Data1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Data2"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v2

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->k()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v4

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v5, 0x4f

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2, v5, v6, v1, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_a
    const-string v4, "com.coremobility.app.nab.CONTACTS_PHONE_BOOK_CORP_MOVED_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.coremobility.app.vnotes.FILE_SPACE_FREED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->k()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v2, 0x34

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v2, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    const/16 v2, 0x34

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b
    const-string v4, "com.coremobility.app.vnotes.SERVICE_WAKEUP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->k()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v5

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v4, v3

    :goto_2
    :try_start_9
    iget-object v1, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->d(Lcom/coremobility/integration/app/CM_Service;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_e

    iget-object v1, p0, Lcom/coremobility/integration/app/i;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->d(Lcom/coremobility/integration/app/CM_Service;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/app/f;

    invoke-interface {v1, v0}, Lcom/coremobility/integration/app/f;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v2

    :goto_3
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_0

    :try_start_a
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_e
    move v0, v3

    goto :goto_3
.end method
