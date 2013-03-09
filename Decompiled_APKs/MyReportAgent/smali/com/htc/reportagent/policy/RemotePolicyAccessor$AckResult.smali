.class public Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;
.super Ljava/lang/Object;
.source "RemotePolicyAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/policy/RemotePolicyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AckResult"
.end annotation


# instance fields
.field public DLSize:J

.field public ULSize:J

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    .line 39
    iput-wide v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->ULSize:J

    .line 40
    iput-wide v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->DLSize:J

    return-void
.end method
