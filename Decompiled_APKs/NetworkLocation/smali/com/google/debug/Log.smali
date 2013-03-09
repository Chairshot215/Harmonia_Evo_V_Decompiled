.class public Lcom/google/debug/Log;
.super Ljava/lang/Object;


# static fields
.field private static final LEVEL_NAMES:[Ljava/lang/String;

.field private static final logger:Lcom/google/debug/Logger;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/debug/Log;->timers:Ljava/util/Hashtable;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FINEST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FINER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FINE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CONFIG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SEVERE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    invoke-static {}, Lcom/google/debug/Log;->logger()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/debug/DebugUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/debug/Logger;

    sput-object v0, Lcom/google/debug/Log;->logger:Lcom/google/debug/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevelName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static logLevel()Ljava/lang/String;
    .locals 3

    const-string v0, "INFO"

    const-string v1, "LOG_LEVEL"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/debug/DebugUtil;->getAntProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Missing log level - using logger specific default"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For Ant: Specify the log level using the LOG_LEVEL property"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For Bolide: Specify the log level using constant injection"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For J2SE:  Define LOG_LEVEL system property"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         See JavaDoc or source of com.google.debug.Log."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static logThreads()Z
    .locals 2

    const-string v0, "false"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/debug/DebugUtil;->getAntPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static logTime()Z
    .locals 2

    const-string v0, "true"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/debug/DebugUtil;->getAntPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static logger()Ljava/lang/Class;
    .locals 2

    :try_start_0
    const-string v0, "com.google.debug.StdoutLogger"

    invoke-static {v0}, Lcom/google/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.debug.StdoutLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LOGGER"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: Missing logger class - using default logger com.google.debug.StdoutLogger"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For Ant: Specify the logger class using the LOGGER property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For Bolide: Specify the logger class using constant injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For J2SE:  Specify the logger class via the LOGGER system property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         See JavaDoc or source of com.google.debug.Log."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "com.google.debug.StdoutLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Missing logger class com.google.debug.StdoutLogger"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLogLevel(I)I
    .locals 1

    invoke-static {}, Lcom/google/debug/Log;->logLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/debug/Log;->parseLogLevel(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static parseLogLevel(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid log level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    sget-object v0, Lcom/google/debug/Log;->logger:Lcom/google/debug/Logger;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/debug/Logger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/google/debug/Log;->logger:Lcom/google/debug/Logger;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
