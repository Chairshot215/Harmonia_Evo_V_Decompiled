.class public Lcom/htc/util/contacts/SyncControl$SyncControlHandler;
.super Landroid/os/Handler;
.source "SyncControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SyncControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/SyncControl;


# direct methods
.method public constructor <init>(Lcom/htc/util/contacts/SyncControl;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method


# virtual methods
.method protected cancel(Ljava/lang/String;)V
    .locals 11
    .parameter "authority"

    .prologue
    .line 109
    :try_start_0
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cancel sync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    .end local v0           #activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #calls: Lcom/htc/util/contacts/SyncControl;->locateActiveList(Ljava/lang/String;Ljava/util/List;)I
    invoke-static {v6, p1, v0}, Lcom/htc/util/contacts/SyncControl;->access$100(Lcom/htc/util/contacts/SyncControl;Ljava/lang/String;Ljava/util/List;)I

    move-result v5

    .line 119
    .local v5, idx:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 121
    .local v1, continueCancel:Z
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$200(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    .line 122
    .local v3, exception:Lcom/htc/util/contacts/SyncControl$ExceptionSync;
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncInfo;

    iget-object v6, v6, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v6}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->accountEquals(Landroid/accounts/Account;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncInfo;

    iget-object v6, v6, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authorityEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    :cond_3
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to cancel sync but it\'s in the exception list - exception item: [account:\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', authority:\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\']"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    const/4 v1, 0x0

    .line 129
    .end local v3           #exception:Lcom/htc/util/contacts/SyncControl$ExceptionSync;
    :cond_4
    if-eqz v1, :cond_0

    .line 133
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v6, p1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 135
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :try_start_2
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v8

    new-instance v9, Lcom/htc/util/contacts/SyncControl$PendingSync;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncInfo;

    iget-object v10, v6, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncInfo;

    iget-object v6, v6, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-direct {v9, v10, v6}, Lcom/htc/util/contacts/SyncControl$PendingSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "and add to pending sync..."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to cancel sync ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") but encounter exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - SYNC will not be paused"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 146
    .end local v0           #activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v1           #continueCancel:Z
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #idx:I
    :catch_1
    move-exception v2

    .line 148
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->init()V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->cancel(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->startPendingSync()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v1}, Lcom/htc/util/contacts/SyncControl;->getNewSyncStatusObserver()Landroid/content/SyncStatusObserver;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method protected startPendingSync()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 153
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Start pending sync..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "force"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SyncControl$PendingSync;

    .line 158
    .local v2, sync:Lcom/htc/util/contacts/SyncControl$PendingSync;
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting Account: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], authority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->authority:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->authority:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_0

    .line 162
    iget-object v3, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/htc/util/contacts/SyncControl$PendingSync;->authority:Ljava/lang/String;

    invoke-static {v3, v5, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sync:Lcom/htc/util/contacts/SyncControl$PendingSync;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 165
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 166
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    return-void
.end method
