.class public abstract Ltwitter4j/internal/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory; = null

.field private static final LOGGER_FACTORY_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.loggerFactory"

.field static class$twitter4j$internal$logging$Logger:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 31
    .local v2, loggerFactory:Ltwitter4j/internal/logging/LoggerFactory;
    :try_start_0
    const-string v4, "twitter4j.loggerFactory"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, loggerFactoryImpl:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 33
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltwitter4j/internal/logging/LoggerFactory;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    .end local v3           #loggerFactoryImpl:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 48
    :try_start_1
    const-string v4, "org.slf4j.impl.StaticLoggerBinder"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    const-string v4, "org.slf4j.Logger"

    const-string v5, "twitter4j.internal.logging.SLF4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactory(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 54
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 55
    const-string v4, "org.apache.commons.logging.Log"

    const-string v5, "twitter4j.internal.logging.CommonsLoggingLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactory(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v2

    .line 58
    :cond_2
    if-nez v2, :cond_3

    .line 59
    const-string v4, "org.apache.log4j.Logger"

    const-string v5, "twitter4j.internal.logging.Log4JLoggerFactory"

    invoke-static {v4, v5}, Ltwitter4j/internal/logging/Logger;->getLoggerFactory(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;

    move-result-object v2

    .line 62
    :cond_3
    if-nez v2, :cond_4

    .line 63
    new-instance v2, Ltwitter4j/internal/logging/StdOutLoggerFactory;

    .end local v2           #loggerFactory:Ltwitter4j/internal/logging/LoggerFactory;
    invoke-direct {v2}, Ltwitter4j/internal/logging/StdOutLoggerFactory;-><init>()V

    .line 65
    .restart local v2       #loggerFactory:Ltwitter4j/internal/logging/LoggerFactory;
    :cond_4
    sput-object v2, Ltwitter4j/internal/logging/Logger;->LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory;

    .line 66
    sget-object v4, Ltwitter4j/internal/logging/Logger;->class$twitter4j$internal$logging$Logger:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "twitter4j.internal.logging.Logger"

    invoke-static {v4}, Ltwitter4j/internal/logging/Logger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/internal/logging/Logger;->class$twitter4j$internal$logging$Logger:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v2, v4}, Ltwitter4j/internal/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Will use "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " as logging factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 67
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 66
    .end local v1           #e:Ljava/lang/InstantiationException;
    :cond_5
    sget-object v4, Ltwitter4j/internal/logging/Logger;->class$twitter4j$internal$logging$Logger:Ljava/lang/Class;

    goto :goto_2

    .line 50
    :catch_1
    move-exception v4

    goto :goto_1

    .line 40
    :catch_2
    move-exception v4

    goto :goto_0

    .line 39
    :catch_3
    move-exception v4

    goto :goto_0

    .line 36
    :catch_4
    move-exception v4

    goto :goto_0

    .line 35
    :catch_5
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;
    .locals 1
    .parameter "clazz"

    .prologue
    .line 90
    sget-object v0, Ltwitter4j/internal/logging/Logger;->LOGGER_FACTORY:Ltwitter4j/internal/logging/LoggerFactory;

    invoke-virtual {v0, p0}, Ltwitter4j/internal/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static getLoggerFactory(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/internal/logging/LoggerFactory;
    .locals 4
    .parameter "checkClassName"
    .parameter "implementationClass"

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, logger:Ltwitter4j/internal/logging/LoggerFactory;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 73
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ltwitter4j/internal/logging/LoggerFactory;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 77
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 74
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)V
.end method
