.class public final Ldalvik/system/profiler/BinaryHprofWriter;
.super Ljava/lang/Object;
.source "BinaryHprofWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprofWriter$1;
    }
.end annotation


# instance fields
.field private final classNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ldalvik/system/profiler/HprofData;

.field private nextClassId:I

.field private nextStackFrameId:I

.field private nextStringId:I

.field private final out:Ljava/io/DataOutputStream;

.field private final stackFrameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stringToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    iput-object p1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method private write()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeHeader(J)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getFlags()I

    move-result v5

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getDepth()I

    move-result v6

    invoke-direct {p0, v5, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeControlSettings(II)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    throw v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/profiler/HprofData$Sample;

    iget v5, v2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    add-int/2addr v4, v5

    iget-object v5, v2, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeCpuSamples(ILjava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public static write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/profiler/BinaryHprofWriter;

    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    invoke-direct {v0}, Ldalvik/system/profiler/BinaryHprofWriter;->write()V

    return-void
.end method

.method private writeControlSettings(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x7fff

    if-le p2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth too large for binary hprof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeCpuSamples(ILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v4, 0x0

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v3, v4, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/profiler/HprofData$Sample;

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, v1, Ldalvik/system/profiler/HprofData$Sample;->count:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-object v4, v1, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    iget v4, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private writeHeader(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method private writeId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeLoadClass(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    goto :goto_0
.end method

.method private writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeStackFrame(Ljava/lang/StackTraceElement;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeLoadClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v6, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v6, v6, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v5, v7, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v1, v7

    new-array v6, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v7, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackFrame(Ljava/lang/StackTraceElement;)I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v8, 0x0

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0xc

    invoke-direct {p0, v7, v8, v9}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v8, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v8, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    return-void
.end method

.method private writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    array-length v5, v0

    add-int/lit8 v5, v5, 0x4

    invoke-direct {p0, v4, v3, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
