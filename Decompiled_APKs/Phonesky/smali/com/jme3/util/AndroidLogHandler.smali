.class public Lcom/jme3/util/AndroidLogHandler;
.super Ljava/util/logging/Handler;
.source "AndroidLogHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 5
    .parameter "record"

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 26
    .local v1, level:Ljava/util/logging/Level;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, clsName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v3

    .line 29
    .local v3, t:Ljava/lang/Throwable;
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_1

    .line 30
    invoke-static {v0, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_2

    .line 32
    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    :cond_2
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_3

    .line 34
    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    :cond_3
    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_4

    .line 36
    invoke-static {v0, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    :cond_4
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    if-eq v1, v4, :cond_5

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    if-eq v1, v4, :cond_5

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    if-ne v1, v4, :cond_0

    .line 38
    :cond_5
    invoke-static {v0, v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
