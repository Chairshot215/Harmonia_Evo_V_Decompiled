.class public final Ldalvik/system/profiler/SamplingProfiler;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/SamplingProfiler$1;,
        Ldalvik/system/profiler/SamplingProfiler$Sampler;,
        Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;,
        Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;,
        Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    }
.end annotation


# instance fields
.field private currentThreads:[Ljava/lang/Thread;

.field private final depth:I

.field private final hprofData:Ldalvik/system/profiler/HprofData;

.field private final mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

.field private nextObjectId:I

.field private nextStackTraceId:I

.field private nextThreadId:I

.field private sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private final threadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final threadSampler:Ldalvik/system/profiler/ThreadSampler;

.field private final threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(ILdalvik/system/profiler/SamplingProfiler$ThreadSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    new-instance v0, Ldalvik/system/profiler/HprofData;

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldalvik/system/profiler/HprofData;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "SamplingProfiler"

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    const v0, 0x30d41

    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    const v0, 0x493e1

    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    iput v2, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;

    new-instance v0, Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {v0}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    iput p1, p0, Ldalvik/system/profiler/SamplingProfiler;->depth:I

    iput-object p2, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    invoke-static {}, Ldalvik/system/profiler/SamplingProfiler;->findDefaultThreadSampler()Ldalvik/system/profiler/ThreadSampler;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    invoke-interface {v0, p1}, Ldalvik/system/profiler/ThreadSampler;->setDepth(I)V

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->bitmask:I

    invoke-virtual {v0, v1}, Ldalvik/system/profiler/HprofData;->setFlags(I)V

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v0, p1}, Ldalvik/system/profiler/HprofData;->setDepth(I)V

    return-void
.end method

.method static synthetic access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    return-object v0
.end method

.method static synthetic access$1108(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 2

    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I

    return v0
.end method

.method static synthetic access$1208(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 2

    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I

    return v0
.end method

.method static synthetic access$300(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    return-object v0
.end method

.method static synthetic access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Ldalvik/system/profiler/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/ThreadSampler;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;

    return-object v0
.end method

.method static synthetic access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    return-object v0
.end method

.method static synthetic access$800(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$908(Ldalvik/system/profiler/SamplingProfiler;)I
    .locals 2

    iget v0, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I

    return v0
.end method

.method private static findDefaultThreadSampler()Ldalvik/system/profiler/ThreadSampler;
    .locals 5

    const-string v2, "Dalvik Core Library"

    const-string v3, "java.specification.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "dalvik.system.profiler.DalvikThreadSampler"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/profiler/ThreadSampler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ldalvik/system/profiler/PortableThreadSampler;

    invoke-direct {v2}, Ldalvik/system/profiler/PortableThreadSampler;-><init>()V

    goto :goto_0
.end method

.method public static varargs newArrayThreadSet([Ljava/lang/Thread;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1

    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;

    invoke-direct {v0, p0}, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;-><init>([Ljava/lang/Thread;)V

    return-object v0
.end method

.method public static newThreadGroupTheadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    .locals 1

    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;

    invoke-direct {v0, p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;-><init>(Ljava/lang/ThreadGroup;)V

    return-object v0
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/profiler/HprofData;
    .locals 2

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot access hprof data while sampling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler;->stop()V

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public start(I)V
    .locals 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "profiling already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ldalvik/system/profiler/SamplingProfiler$Sampler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;-><init>(Ldalvik/system/profiler/SamplingProfiler;Ldalvik/system/profiler/SamplingProfiler$1;)V

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldalvik/system/profiler/HprofData;->setStartMillis(J)V

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->timer:Ljava/util/Timer;

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    const/4 v2, 0x1

    #setter for: Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z
    invoke-static {v0, v2}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->access$102(Ldalvik/system/profiler/SamplingProfiler$Sampler;Z)Z

    :goto_1
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    #getter for: Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z
    invoke-static {v0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->access$200(Ldalvik/system/profiler/SamplingProfiler$Sampler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/profiler/SamplingProfiler;->sampler:Ldalvik/system/profiler/SamplingProfiler$Sampler;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
