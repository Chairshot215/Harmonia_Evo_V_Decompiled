.class Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionTaskList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;


# direct methods
.method private constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V
    .locals 1
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/ContentStoreCmd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    return-void
.end method


# virtual methods
.method public get(JI)I
    .locals 6
    .parameter "itemId"
    .parameter "actionType"

    .prologue
    .line 624
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;

    .line 625
    .local v1, task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    iget-wide v2, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget v2, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->action:I

    if-ne v2, p3, :cond_0

    .line 626
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget v2, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->taskId:I

    .line 631
    .end local v1           #task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    :goto_0
    return v2

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActionTaskList dont have task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    .locals 5
    .parameter "taskId"

    .prologue
    .line 614
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;

    .line 615
    .local v1, task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    iget v2, v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->taskId:I

    if-ne v2, p1, :cond_0

    .line 620
    .end local v1           #task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    :goto_0
    return-object v1

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActionTaskList dont have task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pop(I)Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    .locals 3
    .parameter "taskId"

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->get(I)Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;

    move-result-object v0

    .line 636
    .local v0, task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    if-nez v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionTaskList pop failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 640
    return-object v0
.end method

.method public set(JIILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 4
    .parameter "itemId"
    .parameter "action"
    .parameter "taskId"
    .parameter "listener"

    .prologue
    .line 644
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;

    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/ContentStoreCmd$1;)V

    .line 645
    .local v0, task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    iput-wide p1, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->id:J

    .line 646
    iput p3, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->action:I

    .line 647
    iput p4, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->taskId:I

    .line 648
    iput-object p5, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->listener:Lcom/htc/laputa/engine/util/CmdBundleListener;

    .line 650
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionTaskList insert task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, 0x1

    return v1
.end method
