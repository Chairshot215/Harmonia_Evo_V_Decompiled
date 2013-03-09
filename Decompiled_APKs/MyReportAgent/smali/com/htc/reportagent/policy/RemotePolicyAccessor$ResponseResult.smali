.class public Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;
.super Ljava/lang/Object;
.source "RemotePolicyAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/policy/RemotePolicyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;
    }
.end annotation


# instance fields
.field public DLSize:J

.field public ULSize:J

.field public status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v0, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    .line 32
    iput-wide v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->ULSize:J

    .line 33
    iput-wide v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->DLSize:J

    return-void
.end method
