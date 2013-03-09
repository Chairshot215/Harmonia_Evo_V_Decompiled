.class public final Lcom/google/common/base/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCausalChain(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v0, causes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p0, :cond_0

    .line 188
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "throwable"

    .prologue
    .line 161
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 162
    move-object p0, v0

    goto :goto_0

    .line 164
    :cond_0
    return-object p0
.end method

.method public static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter "throwable"

    .prologue
    .line 202
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 203
    .local v0, stringWriter:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "throwable"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .parameter "throwable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, declaredType:Ljava/lang/Class;,"Ljava/lang/Class<TX;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "throwable"

    .prologue
    .line 72
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 73
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .parameter "throwable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, declaredType:Ljava/lang/Class;,"Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 98
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "throwable"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X1:",
            "Ljava/lang/Throwable;",
            "X2:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX1;>;",
            "Ljava/lang/Class",
            "<TX2;>;)V^TX1;^TX2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, aDeclaredType:Ljava/lang/Class;,"Ljava/lang/Class<TX1;>;"
    .local p2, anotherDeclaredType:Ljava/lang/Class;,"Ljava/lang/Class<TX2;>;"
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 119
    invoke-static {p0, p2}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 120
    return-void
.end method

.method public static throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 7
    .parameter "exception"
    .parameter "combineStackTraces"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 222
    .local v0, cause:Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 223
    throw p0

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 227
    .local v1, causeTrace:[Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 228
    .local v3, outerTrace:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v2, v4, [Ljava/lang/StackTraceElement;

    .line 229
    .local v2, combined:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    invoke-static {v1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    array-length v4, v1

    array-length v5, v3

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 233
    .end local v1           #causeTrace:[Ljava/lang/StackTraceElement;
    .end local v2           #combined:[Ljava/lang/StackTraceElement;
    .end local v3           #outerTrace:[Ljava/lang/StackTraceElement;
    :cond_1
    instance-of v4, v0, Ljava/lang/Exception;

    if-eqz v4, :cond_2

    .line 234
    check-cast v0, Ljava/lang/Exception;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 236
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_3

    .line 237
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 240
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    throw p0
.end method
