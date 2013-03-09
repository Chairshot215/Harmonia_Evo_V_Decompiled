.class public Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;
.super Ljava/lang/Object;
.source "SyncControl.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SyncControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncControlSyncStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/SyncControl;


# direct methods
.method protected constructor <init>(Lcom/htc/util/contacts/SyncControl;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 12
    .parameter "which"

    .prologue
    .line 254
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 272
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$400(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, authority:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #calls: Lcom/htc/util/contacts/SyncControl;->locateActiveList(Ljava/lang/String;Ljava/util/List;)I
    invoke-static {v7, v1, v0}, Lcom/htc/util/contacts/SyncControl;->access$100(Lcom/htc/util/contacts/SyncControl;Ljava/lang/String;Ljava/util/List;)I

    move-result v6

    .line 274
    .local v6, idx:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 276
    .local v2, continueCancel:Z
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$200(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    .line 277
    .local v3, exception:Lcom/htc/util/contacts/SyncControl$ExceptionSync;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncInfo;

    iget-object v7, v7, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v7}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->accountEquals(Landroid/accounts/Account;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncInfo;

    iget-object v7, v7, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authorityEquals(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    :cond_2
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying to auto cancel sync but it\'s in the exception list - exception item: [account:\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', authority:\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/htc/util/contacts/SyncControl$ExceptionSync;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\']"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    .line 284
    .end local v3           #exception:Lcom/htc/util/contacts/SyncControl$ExceptionSync;
    :cond_3
    if-eqz v2, :cond_0

    .line 287
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$500(Lcom/htc/util/contacts/SyncControl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/util/contacts/SyncControl;->access$500(Lcom/htc/util/contacts/SyncControl;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x3e9

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 290
    :try_start_0
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;

    move-result-object v9

    new-instance v10, Lcom/htc/util/contacts/SyncControl$PendingSync;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncInfo;

    iget-object v11, v7, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncInfo;

    iget-object v7, v7, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-direct {v10, v11, v7}, Lcom/htc/util/contacts/SyncControl$PendingSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v7, p0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;->this$0:Lcom/htc/util/contacts/SyncControl;

    #getter for: Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/util/contacts/SyncControl;->access$000(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Cancel and add to pending sync..."

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 296
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #continueCancel:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #idx:I
    :cond_4
    return-void
.end method
