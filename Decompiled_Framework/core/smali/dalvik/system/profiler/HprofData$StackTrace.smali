.class public final Ldalvik/system/profiler/HprofData$StackTrace;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackTrace"
.end annotation


# instance fields
.field stackFrames:[Ljava/lang/StackTraceElement;

.field public final stackTraceId:I

.field threadId:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/StackTraceElement;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackFrames == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    iput p2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    iput-object p3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ldalvik/system/profiler/HprofData$StackTrace;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ldalvik/system/profiler/HprofData$StackTrace;

    iget v2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getStackFrames()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    iget v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    const-string v5, "\t at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "<empty>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StackTrace[stackTraceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", frames="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
