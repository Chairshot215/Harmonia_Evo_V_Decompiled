.class final Ljava/util/Timer$FinalizerHelper;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizerHelper"
.end annotation


# instance fields
.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method constructor <init>(Ljava/util/Timer$TimerImpl;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    const/4 v2, 0x1

    #setter for: Ljava/util/Timer$TimerImpl;->finished:Z
    invoke-static {v0, v2}, Ljava/util/Timer$TimerImpl;->access$302(Ljava/util/Timer$TimerImpl;Z)Z

    iget-object v0, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
