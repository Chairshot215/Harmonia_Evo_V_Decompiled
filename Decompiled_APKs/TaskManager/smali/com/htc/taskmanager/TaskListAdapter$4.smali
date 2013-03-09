.class Lcom/htc/taskmanager/TaskListAdapter$4;
.super Ljava/lang/Object;
.source "TaskListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/TaskListAdapter;->refreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/TaskListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/TaskListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$502(Lcom/htc/taskmanager/TaskListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v0}, Lcom/htc/taskmanager/TaskListAdapter;->notifyDataSetChanged()V

    .line 222
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$4;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;
    invoke-static {v0}, Lcom/htc/taskmanager/TaskListAdapter;->access$600(Lcom/htc/taskmanager/TaskListAdapter;)Lcom/htc/taskmanager/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/taskmanager/MainActivity;->updateSummaryView()V

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
