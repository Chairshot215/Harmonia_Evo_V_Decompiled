.class Lcom/htc/taskmanager/TaskListAdapter$1;
.super Ljava/lang/Thread;
.source "TaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/TaskListAdapter;->updateTasksList()Z
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
    .line 82
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, newTasks:Ljava/util/List;,"Ljava/util/List<Lcom/htc/taskmanager/TaskInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/taskmanager/TaskManager;->loadTasksList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 94
    :try_start_1
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 95
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #getter for: Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    #calls: Lcom/htc/taskmanager/TaskListAdapter;->refreshUI()V
    invoke-static {v2}, Lcom/htc/taskmanager/TaskListAdapter;->access$100(Lcom/htc/taskmanager/TaskListAdapter;)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter$1;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/htc/taskmanager/TaskListAdapter;->mUpdateTasksThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/htc/taskmanager/TaskListAdapter;->access$202(Lcom/htc/taskmanager/TaskListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 100
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, npe:Ljava/lang/NullPointerException;
    const-string v2, "TaskManager/TaskListAdapter"

    const-string v3, "updateTasksList: loadTaskList() failed! Keeping old application list."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v1           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
