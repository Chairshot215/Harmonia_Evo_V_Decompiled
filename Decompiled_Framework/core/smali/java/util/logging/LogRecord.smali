.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAJOR:I = 0x1

.field private static final MINOR:I = 0x4

.field private static currentSequenceNumber:J = 0x0L

.field private static currentThreadId:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initThreadId:I = 0x0

.field private static final serialVersionUID:J = 0x4a8d593df3695196L


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private transient sourceInitialized:Z

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    sput v0, Ljava/util/logging/LogRecord;->initThreadId:I

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "level == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/logging/LogRecord;->millis:J

    const-class v2, Ljava/util/logging/LogRecord;

    monitor-enter v2

    :try_start_0
    sget-wide v3, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    sput-wide v5, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    iput-wide v3, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    sget-object v1, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    sget v1, Ljava/util/logging/LogRecord;->initThreadId:I

    iput v1, p0, Ljava/util/logging/LogRecord;->threadID:I

    sget-object v1, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    sget v3, Ljava/util/logging/LogRecord;->initThreadId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Ljava/util/logging/LogRecord;->initThreadId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    iput-object v7, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Ljava/util/logging/LogRecord;->threadID:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initSource()V
    .locals 7

    iget-boolean v6, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v6, Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Different version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    new-array v5, v2, [Ljava/lang/Object;

    iput-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()I
    .locals 1

    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-void
.end method

.method public setMillis(J)V
    .locals 0

    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 0

    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-void
.end method

.method public setThreadID(I)V
    .locals 0

    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-void
.end method
