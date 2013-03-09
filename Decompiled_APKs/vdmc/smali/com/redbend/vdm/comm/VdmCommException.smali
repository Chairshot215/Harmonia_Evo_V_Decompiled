.class public Lcom/redbend/vdm/comm/VdmCommException;
.super Ljava/lang/Exception;
.source "VdmCommException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public vdmCommError:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->fromInt(I)Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmCommException;->vdmCommError:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 21
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/redbend/vdm/comm/VdmCommException;->vdmCommError:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v1, v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method
