.class public Lcom/android/mms/task/SampleTask;
.super Ljava/lang/Object;
.source "SampleTask.java"

# interfaces
.implements Lcom/android/mms/task/ICoreTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/task/ICoreTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field bCanceled:Z

.field bFinished:Z

.field bPaused:Z

.field bStarted:Z

.field mCallback:Lcom/android/mms/task/ICoreTaskCallback;

.field mEnd:I

.field mError:I

.field mProgress:I

.field mStart:I

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mError:I

    .line 7
    iput v1, p0, Lcom/android/mms/task/SampleTask;->mStart:I

    .line 8
    iput v1, p0, Lcom/android/mms/task/SampleTask;->mEnd:I

    .line 9
    iput v1, p0, Lcom/android/mms/task/SampleTask;->mProgress:I

    .line 10
    iput-object v2, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    .line 11
    iput-object v2, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    .line 13
    iput-boolean v1, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    .line 14
    iput-boolean v1, p0, Lcom/android/mms/task/SampleTask;->bFinished:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/mms/task/SampleTask;->mError:I

    return v0
.end method

.method public getProgressPercentage()F
    .locals 3

    .prologue
    .line 40
    iget v0, p0, Lcom/android/mms/task/SampleTask;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mms/task/SampleTask;->mEnd:I

    iget v2, p0, Lcom/android/mms/task/SampleTask;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public varargs init([Ljava/lang/Integer;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 50
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mStart:I

    .line 51
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mEnd:I

    .line 52
    return-void
.end method

.method public bridge synthetic init([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/task/SampleTask;->init([Ljava/lang/Integer;)V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bFinished:Z

    return v0
.end method

.method public isPauseable()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    .line 109
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v0}, Lcom/android/mms/task/ICoreTaskCallback;->onPause()V

    .line 111
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    .line 117
    iget-object v1, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v0}, Lcom/android/mms/task/ICoreTaskCallback;->onResume()V

    .line 122
    :cond_0
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/mms/task/ICoreTaskCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    .line 57
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/task/SampleTask$1;

    invoke-direct {v1, p0}, Lcom/android/mms/task/SampleTask$1;-><init>(Lcom/android/mms/task/SampleTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v0}, Lcom/android/mms/task/ICoreTaskCallback;->onStart()V

    .line 90
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    .line 96
    iget-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-interface {v0}, Lcom/android/mms/task/ICoreTaskCallback;->onStop()V

    .line 103
    :cond_1
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
