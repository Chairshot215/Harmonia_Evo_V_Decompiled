.class Lcom/google/android/gm/ComposeActivity$3;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageId()J
    .locals 7

    .prologue
    .line 1564
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1565
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mDraftId:J
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$600(Lcom/google/android/gm/ComposeActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$900(Lcom/google/android/gm/ComposeActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I
    invoke-static {v3}, Lcom/google/android/gm/ComposeActivity;->access$900(Lcom/google/android/gm/ComposeActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1571
    .local v0, retrievedMessageId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #setter for: Lcom/google/android/gm/ComposeActivity;->mDraftId:J
    invoke-static {v1, v3, v4}, Lcom/google/android/gm/ComposeActivity;->access$602(Lcom/google/android/gm/ComposeActivity;J)J

    .line 1576
    .end local v0           #retrievedMessageId:Ljava/lang/Long;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mDraftId:J
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$600(Lcom/google/android/gm/ComposeActivity;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1577
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V
    .locals 5
    .parameter

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1537
    if-nez v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    const-class v4, Lcom/google/android/gm/EmptyService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ComposeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1546
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1548
    :cond_1
    return-void

    .line 1544
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V
    .locals 4
    .parameter "message"
    .parameter "messageId"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity;->access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1552
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #setter for: Lcom/google/android/gm/ComposeActivity;->mDraftId:J
    invoke-static {v0, p2, p3}, Lcom/google/android/gm/ComposeActivity;->access$602(Lcom/google/android/gm/ComposeActivity;J)J

    .line 1553
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #calls: Lcom/google/android/gm/ComposeActivity;->saveRequestMap()V
    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity;->access$800(Lcom/google/android/gm/ComposeActivity;)V

    .line 1557
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1559
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V

    .line 1561
    :cond_0
    return-void

    .line 1557
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1581
    if-eqz p2, :cond_2

    .line 1583
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    #calls: Lcom/google/android/gm/ComposeActivity;->discardChanges()V
    invoke-static {v0}, Lcom/google/android/gm/ComposeActivity;->access$1000(Lcom/google/android/gm/ComposeActivity;)V

    .line 1593
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1595
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1596
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v0, v0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    if-nez v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    const-class v3, Lcom/google/android/gm/EmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeActivity;->stopService(Landroid/content/Intent;)Z

    .line 1603
    :cond_0
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1604
    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;Z)V

    .line 1606
    :cond_1
    return-void

    .line 1588
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$3;->this$0:Lcom/google/android/gm/ComposeActivity;

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
