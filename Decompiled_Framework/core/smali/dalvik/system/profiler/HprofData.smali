.class public final Ldalvik/system/profiler/HprofData;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/HprofData$1;,
        Ldalvik/system/profiler/HprofData$Sample;,
        Ldalvik/system/profiler/HprofData$StackTrace;,
        Ldalvik/system/profiler/HprofData$ThreadEvent;,
        Ldalvik/system/profiler/HprofData$ThreadEventType;
    }
.end annotation


# instance fields
.field private depth:I

.field private flags:I

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

.field private startMillis:J

.field private final threadHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final threadIdToThreadEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackTraces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V
    .locals 4

    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    iget v2, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackTrace already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "event == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    iget v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v2}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadEvent already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    sget-object v2, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate ThreadEvent.end for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Ldalvik/system/profiler/HprofData;->depth:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Ldalvik/system/profiler/HprofData;->flags:I

    return v0
.end method

.method public getSamples()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v7, 0x0

    aget v0, v1, v7

    new-instance v4, Ldalvik/system/profiler/HprofData$Sample;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v0, v7}, Ldalvik/system/profiler/HprofData$Sample;-><init>(Ldalvik/system/profiler/HprofData$StackTrace;ILdalvik/system/profiler/HprofData$1;)V

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public getStartMillis()J
    .locals 2

    iget-wide v0, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    return-wide v0
.end method

.method public getThreadHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Ldalvik/system/profiler/HprofData;->depth:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Ldalvik/system/profiler/HprofData;->flags:I

    return-void
.end method

.method public setStartMillis(J)V
    .locals 0

    iput-wide p1, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    return-void
.end method
