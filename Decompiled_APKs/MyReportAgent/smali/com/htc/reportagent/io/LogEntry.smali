.class public Lcom/htc/reportagent/io/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;,
        Lcom/htc/reportagent/io/LogEntry$FileDelegate;,
        Lcom/htc/reportagent/io/LogEntry$LogDelegate;,
        Lcom/htc/reportagent/io/LogEntry$Type;
    }
.end annotation


# instance fields
.field private mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;

    invoke-direct {v0, p1}, Lcom/htc/reportagent/io/LogEntry$FileDelegate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 1
    .parameter "tag"
    .parameter "time"
    .parameter "ctx"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;-><init>(Ljava/lang/String;JLandroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    .line 137
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    invoke-interface {v0}, Lcom/htc/reportagent/io/LogEntry$LogDelegate;->closeEntry()V

    .line 153
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry;->mLogDelegate:Lcom/htc/reportagent/io/LogEntry$LogDelegate;

    invoke-interface {v0}, Lcom/htc/reportagent/io/LogEntry$LogDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
