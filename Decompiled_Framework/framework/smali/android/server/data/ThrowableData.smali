.class public Landroid/server/data/ThrowableData;
.super Ljava/lang/Object;
.source "ThrowableData.java"


# instance fields
.field final cause:Landroid/server/data/ThrowableData;

.field final message:Ljava/lang/String;

.field final stackTrace:[Landroid/server/data/StackTraceElementData;

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/server/data/ThrowableData;->message:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/server/data/ThrowableData;->type:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v3, v0, [Landroid/server/data/StackTraceElementData;

    iput-object v3, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    new-instance v4, Landroid/server/data/StackTraceElementData;

    invoke-direct {v4, p1}, Landroid/server/data/StackTraceElementData;-><init>(Ljava/io/DataInput;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/server/data/ThrowableData;

    invoke-direct {v3, p1}, Landroid/server/data/ThrowableData;-><init>(Ljava/io/DataInput;)V

    :goto_1
    iput-object v3, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/data/ThrowableData;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    iput-object v3, p0, Landroid/server/data/ThrowableData;->message:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v4, v1

    new-array v4, v4, [Landroid/server/data/StackTraceElementData;

    iput-object v4, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    new-instance v5, Landroid/server/data/StackTraceElementData;

    aget-object v6, v1, v2

    invoke-direct {v5, v6}, Landroid/server/data/StackTraceElementData;-><init>(Ljava/lang/StackTraceElement;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    iput-object v4, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    return-void

    :cond_2
    new-instance v4, Landroid/server/data/ThrowableData;

    invoke-direct {v4, v0}, Landroid/server/data/ThrowableData;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static append(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/server/data/ThrowableData;)V
    .locals 7

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Landroid/server/data/ThrowableData;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/server/data/ThrowableData;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/server/data/ThrowableData;->getStackTrace()[Landroid/server/data/StackTraceElementData;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, "  at "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/server/data/StackTraceElementData;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/server/data/StackTraceElementData;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/server/data/StackTraceElementData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/server/data/StackTraceElementData;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/server/data/ThrowableData;->getCause()Landroid/server/data/ThrowableData;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, "Caused by: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v1}, Landroid/server/data/ThrowableData;->append(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/server/data/ThrowableData;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCause()Landroid/server/data/ThrowableData;
    .locals 1

    iget-object v0, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/server/data/ThrowableData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Landroid/server/data/StackTraceElementData;
    .locals 1

    iget-object v0, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/server/data/ThrowableData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/server/data/ThrowableData;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0, p0}, Landroid/server/data/ThrowableData;->append(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/server/data/ThrowableData;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v5, p0, Landroid/server/data/ThrowableData;->message:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/data/ThrowableData;->type:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Landroid/server/data/ThrowableData;->stackTrace:[Landroid/server/data/StackTraceElementData;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Landroid/server/data/StackTraceElementData;->write(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget-object v4, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/server/data/ThrowableData;->cause:Landroid/server/data/ThrowableData;

    invoke-virtual {v4, p1}, Landroid/server/data/ThrowableData;->write(Ljava/io/DataOutput;)V

    :cond_2
    return-void
.end method
