.class Lcom/redbend/vdm/fumo/VdmFumoProxy;
.super Ljava/lang/Object;
.source "VdmFumoProxy.java"


# instance fields
.field private _fumo:Lcom/redbend/vdm/fumo/VdmFumo;

.field private handler:Lcom/redbend/vdm/fumo/FumoHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    :try_start_0
    const-string v1, "JNI"

    const-string v2, "Trying to load libvdmfumo.so"

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "vdmfumo"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-static {}, Lcom/redbend/vdm/fumo/VdmFumoProxy;->initIDs()V

    .line 24
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "ERROR: Could not load libvdmfumo.so"

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public constructor <init>(Lcom/redbend/vdm/fumo/VdmFumo;Lcom/redbend/vdm/fumo/FumoHandler;)V
    .locals 0
    .parameter "f"
    .parameter "h"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    .line 29
    iput-object p2, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->handler:Lcom/redbend/vdm/fumo/FumoHandler;

    .line 30
    return-void
.end method

.method private confirmDownload(Lcom/redbend/vdm/DownloadDescriptor;)Z
    .locals 2
    .parameter "dd"

    .prologue
    .line 76
    const-string v0, "vDM"

    const-string v1, "confirmDownload"

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->handler:Lcom/redbend/vdm/fumo/FumoHandler;

    iget-object v1, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-interface {v0, p1, v1}, Lcom/redbend/vdm/fumo/FumoHandler;->confirmDownload(Lcom/redbend/vdm/DownloadDescriptor;Lcom/redbend/vdm/fumo/VdmFumo;)Z

    move-result v0

    return v0
.end method

.method private confirmUpdate()Z
    .locals 2

    .prologue
    .line 82
    const-string v0, "vDM"

    const-string v1, "confirmUpdate"

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->handler:Lcom/redbend/vdm/fumo/FumoHandler;

    iget-object v1, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-interface {v0, v1}, Lcom/redbend/vdm/fumo/FumoHandler;->confirmUpdate(Lcom/redbend/vdm/fumo/VdmFumo;)Z

    move-result v0

    return v0
.end method

.method private executeUpdate(Ljava/lang/String;)Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;
    .locals 3
    .parameter "updatePkgPath"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->handler:Lcom/redbend/vdm/fumo/FumoHandler;

    iget-object v2, p0, Lcom/redbend/vdm/fumo/VdmFumoProxy;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-interface {v1, p1, v2}, Lcom/redbend/vdm/fumo/FumoHandler;->executeUpdate(Ljava/lang/String;Lcom/redbend/vdm/fumo/VdmFumo;)Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;

    move-result-object v0

    .line 90
    .local v0, result:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;
    return-object v0
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public native createInstance(Ljava/lang/String;)I
.end method

.method public native destroyInstance(I)V
.end method

.method public native executeFwUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getIsConfirmDownloadCalledInResume(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getIsReportLocUriRoot(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getPkgName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getPkgVersion(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getUpdatePkgPath(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getUpdateStatus(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native querySessionActions(I)I
.end method

.method public native resumeDLSession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native setIsConfirmDownloadCalledInResume(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native setIsReportLocUriRoot(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native setUpdateResult(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native triggerReportSession(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native triggerSession(I[BJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native triggerSessionForAccount(I[BJILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
