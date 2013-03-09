.class public Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;
.super Ljava/lang/Object;
.source "HtcWrapThrowableData.java"


# instance fields
.field final cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

.field final message:Ljava/lang/String;

.field final stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 50
    .local v1, dataVersion:I
    if-eqz v1, :cond_0

    .line 51
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 0. Got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->message:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->type:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 58
    .local v0, count:I
    new-array v3, v0, [Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    iput-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    .line 59
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 60
    iget-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    new-instance v4, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    invoke-direct {v4, p1}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;-><init>(Ljava/io/DataInput;)V

    aput-object v4, v3, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-direct {v3, p1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;-><init>(Ljava/io/DataInput;)V

    :goto_1
    iput-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    .line 64
    return-void

    .line 63
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 7
    .parameter "throwable"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->type:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, message:Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    .end local v3           #message:Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->message:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 39
    .local v1, elements:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    new-array v4, v4, [Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    iput-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    .line 40
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 41
    iget-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    new-instance v5, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    aget-object v6, v1, v2

    invoke-direct {v5, v6}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;-><init>(Ljava/lang/StackTraceElement;)V

    aput-object v5, v4, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 45
    .local v0, cause:Ljava/lang/Throwable;
    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    iput-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    .line 46
    return-void

    .line 45
    :cond_2
    new-instance v4, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-direct {v4, v0}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static append(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;)V
    .locals 7
    .parameter "prefix"
    .parameter "builder"
    .parameter "throwableData"

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->getStackTrace()[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 118
    .local v2, element:Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    const-string v5, "  at "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v2           #element:Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    :cond_2
    invoke-virtual {p2}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->getCause()Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    move-result-object v1

    .line 132
    .local v1, cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;
    if-eqz v1, :cond_4

    .line 133
    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_3
    const-string v5, "Caused by: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p0, p1, v1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->append(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;)V

    .line 137
    :cond_4
    return-void
.end method


# virtual methods
.method public getCause()Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p1, v0, p0}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->append(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 69
    iget-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->message:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->type:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->stackTrace:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;

    .local v0, arr$:[Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 74
    .local v1, elementData:Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;->write(Ljava/io/DataOutput;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1           #elementData:Lcom/htc/wrap/android/server/data/HtcWrapStackTraceElementData;
    :cond_0
    iget-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 78
    iget-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->cause:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-virtual {v4, p1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->write(Ljava/io/DataOutput;)V

    .line 81
    :cond_2
    return-void
.end method
