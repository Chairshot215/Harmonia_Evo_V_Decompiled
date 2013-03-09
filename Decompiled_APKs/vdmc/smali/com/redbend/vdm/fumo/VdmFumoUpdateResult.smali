.class public Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;
.super Ljava/lang/Object;
.source "VdmFumoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    }
.end annotation


# instance fields
.field private fumoResult:I

.field private isSynchronousUpdate:Z


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;Z)V
    .locals 1
    .parameter "result"
    .parameter "isSyncUpdate"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->val()I

    move-result v0

    iput v0, p0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;->fumoResult:I

    .line 24
    iput-boolean p2, p0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;->isSynchronousUpdate:Z

    .line 25
    return-void
.end method
