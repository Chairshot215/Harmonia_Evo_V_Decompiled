.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private volatile stackState:Ljava/lang/Object;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5

    const/4 v0, 0x0

    array-length v3, p1

    array-length v1, p0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    aget-object v2, p1, v3

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getInternalStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_0

    invoke-static {v4, p3}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    sub-int/2addr v6, v1

    if-ge v2, v6, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "\tat "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "\t... "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, " more\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "\tSuppressed: "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v6, "Caused by: "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-direct {v0, p1, p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    :cond_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public final addSuppressed(Ljava/lang/Throwable;)V
    .locals 2

    if-ne p1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "suppressed == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "suppressed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final getSuppressed()[Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cause already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "throwable == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 3

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 3

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 6

    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
