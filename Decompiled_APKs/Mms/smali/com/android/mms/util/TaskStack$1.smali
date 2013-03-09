.class Lcom/android/mms/util/TaskStack$1;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/util/TaskStack;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/mms/util/TaskStack$1;->this$0:Lcom/android/mms/util/TaskStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/mms/util/TaskStack$1;->this$0:Lcom/android/mms/util/TaskStack;

    #getter for: Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/mms/util/TaskStack;->access$000(Lcom/android/mms/util/TaskStack;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/TaskStack$1;->this$0:Lcom/android/mms/util/TaskStack;

    #getter for: Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/mms/util/TaskStack;->access$000(Lcom/android/mms/util/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/mms/util/TaskStack$1;->this$0:Lcom/android/mms/util/TaskStack;

    #getter for: Lcom/android/mms/util/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/mms/util/TaskStack;->access$000(Lcom/android/mms/util/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 22
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 26
    :cond_1
    return-void

    .line 22
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
