.class final Ltwitter4j/internal/logging/SLF4JLogger;
.super Ltwitter4j/internal/logging/Logger;
.source "SLF4JLogger.java"


# instance fields
.field private final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0
    .parameter "logger"

    .prologue
    .line 26
    invoke-direct {p0}, Ltwitter4j/internal/logging/Logger;-><init>()V

    .line 27
    iput-object p1, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    .line 28
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 59
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "th"

    .prologue
    .line 115
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 91
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/internal/logging/SLF4JLogger;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 100
    return-void
.end method
