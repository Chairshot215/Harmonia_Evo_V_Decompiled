.class public final Ldalvik/system/profiler/AsciiHprofWriter;
.super Ljava/lang/Object;
.source "AsciiHprofWriter.java"


# static fields
.field private static final SAMPLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ldalvik/system/profiler/HprofData;

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldalvik/system/profiler/AsciiHprofWriter$1;

    invoke-direct {v0}, Ldalvik/system/profiler/AsciiHprofWriter$1;-><init>()V

    sput-object v0, Ldalvik/system/profiler/AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    return-void
.end method

.method private write()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v18, Ldalvik/system/profiler/AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v17, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldalvik/system/profiler/HprofData$Sample;

    iget-object v0, v12, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    move-object/from16 v16, v0

    iget v5, v12, Ldalvik/system/profiler/HprofData$Sample;->count:I

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "TRACE %d: (thread=%d)\n"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v0, v16

    iget-object v4, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v6, v4, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "\t%s\n"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "CPU SAMPLES BEGIN (total = %d) %ta %tb %td %tT %tY\n"

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    const/16 v21, 0x2

    aput-object v10, v20, v21

    const/16 v21, 0x3

    aput-object v10, v20, v21

    const/16 v21, 0x4

    aput-object v10, v20, v21

    const/16 v21, 0x5

    aput-object v10, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "rank   self  accum   count trace method\n"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v11, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldalvik/system/profiler/HprofData$Sample;

    add-int/lit8 v11, v11, 0x1

    iget-object v0, v12, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    move-object/from16 v16, v0

    iget v5, v12, Ldalvik/system/profiler/HprofData$Sample;->count:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    add-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "% 4d% 6.2f%%% 6.2f%% % 7d % 5d %s.%s\n"

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-wide/high16 v22, 0x4059

    mul-double v22, v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-wide/high16 v22, 0x4059

    mul-double v22, v22, v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    move-object/from16 v0, v16

    iget-object v0, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    move-object/from16 v0, v16

    iget-object v0, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    const-string v19, "CPU SAMPLES END\n"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/profiler/AsciiHprofWriter;

    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/AsciiHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    invoke-direct {v0}, Ldalvik/system/profiler/AsciiHprofWriter;->write()V

    return-void
.end method
