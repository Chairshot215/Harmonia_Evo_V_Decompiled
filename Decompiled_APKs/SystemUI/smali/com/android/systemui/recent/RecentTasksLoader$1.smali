.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$descriptions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v0, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/TaskDescription;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    add-long/2addr v1, v7

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    sub-long v7, v1, v3

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x0

    return-object v7

    :cond_2
    monitor-enter v6

    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    monitor-exit v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/RecentTasksLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$1$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader$1;Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
