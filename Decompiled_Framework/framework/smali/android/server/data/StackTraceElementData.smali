.class public Landroid/server/data/StackTraceElementData;
.super Ljava/lang/Object;
.source "StackTraceElementData.java"


# instance fields
.field final className:Ljava/lang/String;

.field final fileName:Ljava/lang/String;

.field final lineNumber:I

.field final methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 0. Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[unknown source]"

    :cond_0
    iput-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->fileName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/data/StackTraceElementData;->methodName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Landroid/server/data/StackTraceElementData;->lineNumber:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
