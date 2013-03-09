.class Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    .line 1535
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 1536
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1539
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v0, v1, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    .line 1540
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1545
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1400(Lcom/android/htccontacts/group/GroupEditActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1402(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z

    .line 1548
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->insertTobeAdded()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1500(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1549
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->deleteToBeRemoved()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1600(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1550
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->updatePhoto()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1700(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1551
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1402(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler$GroupWorkerHandler;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->closeProgress()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->access$1800(Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;)V

    goto :goto_0

    .line 1555
    :cond_2
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
