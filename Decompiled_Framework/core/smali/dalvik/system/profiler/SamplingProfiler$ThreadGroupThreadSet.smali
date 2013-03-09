.class Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/profiler/SamplingProfiler$ThreadSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadGroupThreadSet"
.end annotation


# instance fields
.field private lastThread:I

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadGroup == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-direct {p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    return-void
.end method

.method private resize()V
    .locals 2

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    return-void
.end method


# virtual methods
.method public threads()[Ljava/lang/Thread;
    .locals 4

    :goto_0
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    goto :goto_0

    :cond_0
    iget v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    return-object v1
.end method
