.class public Lcom/redbend/vdm/comm/VdmComm;
.super Ljava/lang/Object;
.source "VdmComm.java"


# instance fields
.field private _connProxy:Lcom/redbend/vdm/comm/CommConnProxy;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/comm/CommFactory;)V
    .locals 2
    .parameter "commFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/redbend/vdm/comm/CommConnProxy;

    invoke-direct {v0, p1}, Lcom/redbend/vdm/comm/CommConnProxy;-><init>(Lcom/redbend/vdm/comm/CommFactory;)V

    iput-object v0, p0, Lcom/redbend/vdm/comm/VdmComm;->_connProxy:Lcom/redbend/vdm/comm/CommConnProxy;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/comm/VdmComm;->_connProxy:Lcom/redbend/vdm/comm/CommConnProxy;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException;

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v1, v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-direct {v0, v1}, Lcom/redbend/vdm/comm/VdmCommException;-><init>(I)V

    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public static setCertificatePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/redbend/vdm/comm/VdmRawConnection;->setCertificatePath(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/redbend/vdm/comm/VdmComm;->_connProxy:Lcom/redbend/vdm/comm/CommConnProxy;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/redbend/vdm/comm/VdmComm;->_connProxy:Lcom/redbend/vdm/comm/CommConnProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/comm/CommConnProxy;->destroyInstance()V

    .line 45
    :cond_0
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/redbend/vdm/comm/VdmComm;->_connProxy:Lcom/redbend/vdm/comm/CommConnProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/comm/CommConnProxy;->setConnectionTimeout(I)V

    .line 54
    return-void
.end method
