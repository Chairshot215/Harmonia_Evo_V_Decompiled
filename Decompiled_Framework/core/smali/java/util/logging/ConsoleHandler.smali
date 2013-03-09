.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    return-void
.end method
