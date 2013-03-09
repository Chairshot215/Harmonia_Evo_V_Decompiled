.class Ldalvik/system/profiler/SamplingProfiler$Sampler;
.super Ljava/util/TimerTask;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sampler"
.end annotation


# instance fields
.field private stop:Z

.field private stopped:Z

.field final synthetic this$0:Ldalvik/system/profiler/SamplingProfiler;

.field private timerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/SamplingProfiler;)V
    .locals 0

    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/profiler/SamplingProfiler;Ldalvik/system/profiler/SamplingProfiler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;-><init>(Ldalvik/system/profiler/SamplingProfiler;)V

    return-void
.end method

.method static synthetic access$102(Ldalvik/system/profiler/SamplingProfiler$Sampler;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    return p1
.end method

.method static synthetic access$200(Ldalvik/system/profiler/SamplingProfiler$Sampler;)Z
    .locals 1

    iget-boolean v0, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    return v0
.end method

.method private addEndThread(Ljava/lang/Thread;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void
.end method

.method private addStartThread(Ljava/lang/Thread;)V
    .locals 11

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "thread == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1108(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v6

    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread already registered as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v2, v5

    :goto_0
    if-nez v1, :cond_3

    move-object v4, v5

    :goto_1
    if-nez v4, :cond_4

    :goto_2
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1208(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v8

    invoke-static {v8, v6, v7, v2, v5}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v8

    invoke-virtual {v8, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V
    .locals 7

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v4

    iput-object p2, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$800(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v5}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    const/4 v4, 0x1

    new-array v0, v4, [I

    invoke-virtual {p2}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    new-instance v2, Ldalvik/system/profiler/HprofData$StackTrace;

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$908(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v4, v5, v1}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    :cond_1
    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    return-void
.end method

.method private updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V
    .locals 7

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_0

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_0

    invoke-direct {p0, v5}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addStartThread(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_2

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_2

    invoke-direct {p0, v5}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addEndThread(Ljava/lang/Thread;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->cancel()Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    :cond_2
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$300(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/profiler/SamplingProfiler$ThreadSet;->threads()[Ljava/lang/Thread;

    move-result-object v3

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V

    iget-object v7, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-virtual {v3}, [Ljava/lang/Thread;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Thread;

    #setter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v7, v6}, Ldalvik/system/profiler/SamplingProfiler;->access$402(Ldalvik/system/profiler/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;

    :cond_3
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    if-eqz v5, :cond_0

    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-ne v5, v6, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_5
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$500(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/ThreadSampler;

    move-result-object v6

    invoke-interface {v6, v5}, Ldalvik/system/profiler/ThreadSampler;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v5, v4}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    goto :goto_1
.end method
