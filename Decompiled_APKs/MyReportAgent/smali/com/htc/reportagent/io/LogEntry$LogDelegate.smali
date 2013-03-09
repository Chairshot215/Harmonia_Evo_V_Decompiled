.class interface abstract Lcom/htc/reportagent/io/LogEntry$LogDelegate;
.super Ljava/lang/Object;
.source "LogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/io/LogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LogDelegate"
.end annotation


# virtual methods
.method public abstract closeEntry()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getType()Lcom/htc/reportagent/io/LogEntry$Type;
.end method
