.class Lcom/android/mms/task/SampleTask$1;
.super Ljava/lang/Object;
.source "SampleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/task/SampleTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/task/SampleTask;


# direct methods
.method constructor <init>(Lcom/android/mms/task/SampleTask;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v1, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget v1, v1, Lcom/android/mms/task/SampleTask;->mStart:I

    iput v1, v0, Lcom/android/mms/task/SampleTask;->mProgress:I

    :goto_0
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget v0, v0, Lcom/android/mms/task/SampleTask;->mProgress:I

    iget-object v1, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget v1, v1, Lcom/android/mms/task/SampleTask;->mEnd:I

    if-ge v0, v1, :cond_1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-boolean v0, v0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v1, v0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v0, v0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-boolean v0, v0, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    if-eqz v0, :cond_3

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/task/SampleTask;->bFinished:Z

    .line 81
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iput-boolean v2, v0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    .line 82
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iput-boolean v2, v0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    .line 83
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iput-boolean v2, v0, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    .line 84
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v0, v0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v0, v0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v0}, Lcom/android/mms/task/ICoreTaskCallback;->onStop()V

    .line 85
    :cond_2
    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_1

    .line 77
    :cond_3
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 78
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v0, v0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget-object v0, v0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    iget-object v1, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    invoke-virtual {v1}, Lcom/android/mms/task/SampleTask;->getProgressPercentage()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/task/ICoreTaskCallback;->onProgress(F)V

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/android/mms/task/SampleTask$1;->this$0:Lcom/android/mms/task/SampleTask;

    iget v1, v0, Lcom/android/mms/task/SampleTask;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/mms/task/SampleTask;->mProgress:I

    goto :goto_0
.end method
