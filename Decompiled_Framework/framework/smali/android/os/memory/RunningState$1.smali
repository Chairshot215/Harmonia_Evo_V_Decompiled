.class Landroid/os/memory/RunningState$1;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Landroid/os/memory/RunningState;


# direct methods
.method constructor <init>(Landroid/os/memory/RunningState;)V
    .locals 1

    iput-object p1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v2, v1, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-boolean v1, v1, Landroid/os/memory/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Landroid/os/memory/RunningState$1;->removeMessages(I)V

    invoke-virtual {p0, v3}, Landroid/os/memory/RunningState$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/memory/RunningState$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/memory/RunningState$1;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    iget v2, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    invoke-interface {v1, v2}, Landroid/os/memory/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/memory/RunningState$1;->mNextUpdate:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
