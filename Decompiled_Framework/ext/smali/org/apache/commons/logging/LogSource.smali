.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    :try_start_0
    const-string v2, "org.apache.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v2, "java.util.logging.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    :cond_3
    :try_start_7
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v2, :cond_4

    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_8
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_3

    :cond_4
    :try_start_9
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v2, :cond_5

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/Log;

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    sget-object v4, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/logging/Log;

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/commons/logging/impl/NoOpLog;

    invoke-direct {v2, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method
