.class final Ltwitter4j/internal/logging/Log4JLogger;
.super Ltwitter4j/internal/logging/Logger;
.source "Log4JLogger.java"


# instance fields
.field private final LOGGER:Lorg/apache/log4j/Logger;


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 0
    .parameter "logger"

    .prologue
    .line 26
    invoke-direct {p0}, Ltwitter4j/internal/logging/Logger;-><init>()V

    .line 27
    iput-object p1, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    .line 28
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 59
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->debug(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 106
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "th"

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/logging/Log4JLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->info(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/internal/logging/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/internal/logging/Log4JLogger;->warn(Ljava/lang/String;)V

    .line 99
    return-void
.end method
