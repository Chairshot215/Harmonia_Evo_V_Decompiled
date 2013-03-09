.class public final Ldalvik/system/profiler/BinaryHprofReader;
.super Ljava/lang/Object;
.source "BinaryHprofReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprofReader$1;
    }
.end annotation


# static fields
.field private static final TRACE:Z


# instance fields
.field private final hprofData:Ldalvik/system/profiler/HprofData;

.field private final idToClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackFrame:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final idToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

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

.field private strict:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    new-instance v0, Ldalvik/system/profiler/HprofData;

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldalvik/system/profiler/HprofData;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method private checkRead()V
    .locals 2

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data access before read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private parseControlSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v1}, Ldalvik/system/profiler/HprofData;->setFlags(I)V

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->setDepth(I)V

    return-void
.end method

.method private parseCpuSamples(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v2, v9, 0x8

    if-eq p1, v2, :cond_0

    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected CPU samples record of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " based on number of samples but header "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "specified a length of  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldalvik/system/profiler/HprofData$StackTrace;

    if-nez v5, :cond_1

    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown stack trace id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    if-nez v0, :cond_2

    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Zero sample count for stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_3

    aget v9, v1, v12

    if-eqz v9, :cond_4

    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting sample count of stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found it was already initialized to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    aget v9, v1, v12

    add-int/2addr v0, v9

    :cond_4
    aput v0, v1, v12

    add-int/2addr v7, v0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_6

    if-eq v8, v7, :cond_6

    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected a total of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " samples but saw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    return-void
.end method

.method private parseEndThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void
.end method

.method private parseHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseVersion()V

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseIdSize()V

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseTime()V

    return-void
.end method

.method private parseIdSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported identifier size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private parseLoadClass()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v2

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v5, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate class id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    return-void
.end method

.method private parseRecord()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    int-to-byte v3, v4

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v3}, Ldalvik/system/profiler/BinaryHprof$Tag;->get(B)Ldalvik/system/profiler/BinaryHprof$Tag;

    move-result-object v1

    if-nez v1, :cond_1

    int-to-long v7, v2

    invoke-direct {p0, v1, v7, v8}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v6, Ldalvik/system/profiler/MalformedHprofException;

    invoke-direct {v6, v0}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    sget-object v7, Ldalvik/system/profiler/BinaryHprofReader$1;->$SwitchMap$dalvik$system$profiler$BinaryHprof$Tag:[I

    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    int-to-long v7, v2

    invoke-direct {p0, v1, v7, v8}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseControlSettings()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStringInUtf8(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStartThread()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseEndThread()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseLoadClass()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackFrame()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackTrace(I)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseCpuSamples(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private parseRecords()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecord()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private parseStackFrame()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v7

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readClass()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-instance v6, Ljava/lang/StackTraceElement;

    invoke-direct {v6, v0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_0

    new-instance v8, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate stack frame id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    return-void
.end method

.method private parseStackTrace(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v1, v11, 0xc

    if-eq p1, v1, :cond_0

    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected stack trace record of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " based on number of frames but header "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "specified a length of  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    new-array v7, v2, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v6

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    if-nez v5, :cond_1

    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown stack frame id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    aput-object v5, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {v8, v9, v10, v7}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    iget-boolean v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    new-array v12, v13, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    :cond_3
    :goto_1
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldalvik/system/profiler/HprofData$StackTrace;

    if-eqz v4, :cond_5

    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate stack trace id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_3

    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    new-array v12, v13, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private parseStartThread()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v2

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v6, v1, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v7, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void
.end method

.method private parseStringInUtf8(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v4, p1, -0x4

    new-array v0, v4, [B

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-static {v4, v0}, Ldalvik/system/profiler/BinaryHprofReader;->readFully(Ljava/io/InputStream;[B)V

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v4, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate string id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    return-void
.end method

.method private parseTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0, v1}, Ldalvik/system/profiler/HprofData;->setStartMillis(J)V

    return-void
.end method

.method private parseVersion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    const-string v2, "Could not find HPROF version"

    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    return-void
.end method

.method private readClass()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v0

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown class id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method private static readFully(Ljava/io/InputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p1

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_0
    add-int/2addr v2, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown string id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes but only skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/profiler/HprofData;
    .locals 1

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    return-object v0
.end method

.method public getStrict()Z
    .locals 1

    iget-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseHeader()V

    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecords()V

    return-void
.end method

.method public setStrict(Z)V
    .locals 2

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set strict after read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    return-void
.end method
