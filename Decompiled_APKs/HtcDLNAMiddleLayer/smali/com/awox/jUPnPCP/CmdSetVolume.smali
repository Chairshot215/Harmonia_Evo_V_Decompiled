.class public Lcom/awox/jUPnPCP/CmdSetVolume;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdSetVolume.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdSetVolumeUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdSetVolume;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdSetVolume(JLcom/awox/jUPnPCP/UPnPRenderer;II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    .line 36
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdSetVolume;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdSetVolume;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdSetVolume;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCommand;->swigCMemOwn:Z

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdSetVolume;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method
