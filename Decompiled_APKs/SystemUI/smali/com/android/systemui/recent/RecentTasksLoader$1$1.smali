.class Lcom/android/systemui/recent/RecentTasksLoader$1$1;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentTasksLoader$1;

.field final synthetic val$td:Lcom/android/systemui/recent/TaskDescription;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader$1;Lcom/android/systemui/recent/TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1$1;->this$1:Lcom/android/systemui/recent/RecentTasksLoader$1;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1$1;->val$td:Lcom/android/systemui/recent/TaskDescription;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1$1;->val$td:Lcom/android/systemui/recent/TaskDescription;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader$1$1;->val$td:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
