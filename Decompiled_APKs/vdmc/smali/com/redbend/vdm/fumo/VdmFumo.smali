.class public Lcom/redbend/vdm/fumo/VdmFumo;
.super Ljava/lang/Object;
.source "VdmFumo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;,
        Lcom/redbend/vdm/fumo/VdmFumo$ClientType;
    }
.end annotation


# instance fields
.field private _instance:I

.field private _proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/redbend/vdm/fumo/FumoHandler;)V
    .locals 1
    .parameter "fumoRootURI"
    .parameter "h"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoProxy;

    invoke-direct {v0, p0, p2}, Lcom/redbend/vdm/fumo/VdmFumoProxy;-><init>(Lcom/redbend/vdm/fumo/VdmFumo;Lcom/redbend/vdm/fumo/FumoHandler;)V

    iput-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    .line 50
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->createInstance(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    .line 52
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "vDM"

    const-string v1, "VdmFumo#destroy"

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->destroyInstance(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public executeFwUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->executeFwUpdate(I)V

    .line 195
    return-void
.end method

.method public getIsConfirmDownloadCalledInResume()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getIsConfirmDownloadCalledInResume(I)Z

    move-result v0

    return v0
.end method

.method public getIsReportLocUriRoot()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getIsReportLocUriRoot(I)Z

    move-result v0

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getPkgName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getPkgVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/redbend/vdm/fumo/FumoState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v2, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getState(I)I

    move-result v0

    .line 170
    .local v0, state:I
    invoke-static {v0}, Lcom/redbend/vdm/fumo/FumoState;->fromInt(I)Lcom/redbend/vdm/fumo/FumoState;

    move-result-object v1

    return-object v1
.end method

.method public getUpdatePkgPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getUpdatePkgPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateStatus()Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v2, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->getUpdateStatus(I)I

    move-result v0

    .line 251
    .local v0, status:I
    invoke-static {}, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->values()[Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public querySessionActions()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->querySessionActions(I)I

    move-result v0

    return v0
.end method

.method public resumeDLSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->resumeDLSession(I)V

    .line 131
    return-void
.end method

.method public setIsConfirmDownloadCalledInResume(Z)V
    .locals 2
    .parameter "isConfirmDownloadCalledInResume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->setIsConfirmDownloadCalledInResume(IZ)V

    .line 303
    return-void
.end method

.method public setIsReportLocUriRoot(Z)V
    .locals 2
    .parameter "isReportLocUriRoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {v0, v1, p1}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->setIsReportLocUriRoot(IZ)V

    .line 276
    return-void
.end method

.method public setUpdateResult(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    .locals 3
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {p1}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->val()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->setUpdateResult(II)V

    .line 216
    return-void
.end method

.method public triggerReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    .locals 3
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    invoke-virtual {p1}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->val()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->triggerReportSession(II)V

    .line 237
    return-void
.end method

.method public triggerSession([BLcom/redbend/vdm/fumo/VdmFumo$ClientType;)V
    .locals 6
    .parameter "message"
    .parameter "clientType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    invoke-virtual {p2}, Lcom/redbend/vdm/fumo/VdmFumo$ClientType;->ordinal()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->triggerSession(I[BJI)V

    .line 92
    return-void

    .line 87
    :cond_0
    array-length v2, p1

    goto :goto_0
.end method

.method public triggerSession([BLcom/redbend/vdm/fumo/VdmFumo$ClientType;Ljava/lang/String;)V
    .locals 7
    .parameter "message"
    .parameter "clientType"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_proxy:Lcom/redbend/vdm/fumo/VdmFumoProxy;

    iget v1, p0, Lcom/redbend/vdm/fumo/VdmFumo;->_instance:I

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    invoke-virtual {p2}, Lcom/redbend/vdm/fumo/VdmFumo$ClientType;->ordinal()I

    move-result v5

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->triggerSessionForAccount(I[BJILjava/lang/String;)V

    .line 117
    return-void

    .line 111
    :cond_0
    array-length v2, p1

    goto :goto_0
.end method
