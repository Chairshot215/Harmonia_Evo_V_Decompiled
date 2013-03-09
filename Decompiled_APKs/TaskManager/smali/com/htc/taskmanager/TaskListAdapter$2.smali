.class Lcom/htc/taskmanager/TaskListAdapter$2;
.super Ljava/lang/Thread;
.source "TaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/TaskListAdapter;->killAllTasks()V
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
    .line 110
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/taskmanager/TaskManager;->killTasks(Ljava/util/List;)Z

    .line 115
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #calls: Lcom/htc/taskmanager/TaskListAdapter;->refreshUI()V
    invoke-static {v0}, Lcom/htc/taskmanager/TaskListAdapter;->access$100(Lcom/htc/taskmanager/TaskListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter$2;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/htc/taskmanager/TaskListAdapter;->mKillAllThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/htc/taskmanager/TaskListAdapter;->access$302(Lcom/htc/taskmanager/TaskListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
