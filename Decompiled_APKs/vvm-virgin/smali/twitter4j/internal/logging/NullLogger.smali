.class final Ltwitter4j/internal/logging/NullLogger;
.super Ltwitter4j/internal/logging/Logger;
.source "NullLogger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ltwitter4j/internal/logging/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 53
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 60
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 95
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "th"

    .prologue
    .line 102
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 67
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 74
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 81
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 88
    return-void
.end method
