.class Lcom/redbend/vdm/VdmProxy;
.super Ljava/lang/Object;
.source "VdmProxy.java"


# instance fields
.field private _comm:Lcom/redbend/vdm/comm/VdmComm;

.field private _cpObserver:Lcom/redbend/vdm/CpObserver;

.field private _cryptHandler:Lcom/redbend/vdm/CryptHandler;

.field private _dlResumeCmpUrlHandler:Lcom/redbend/vdm/DLResumeCmpUrlHandler;

.field private _dlRetryHandler:Lcom/redbend/vdm/DownloadRetryHandler;

.field private _mmiProxy:Lcom/redbend/vdm/MmiProxy;

.field private _plProxy:Lcom/redbend/vdm/PLProxy;

.field private _treeProxy:Lcom/redbend/vdm/VdmTreeProxy;

.field private multiGenericAlertVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/redbend/vdm/MultiGenericAlerts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    :try_start_0
    const-string v1, "JNI"

    const-string v2, "Trying to load libvdmengine.so"

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "vdmengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-static {}, Lcom/redbend/vdm/VdmProxy;->initIDs()V

    .line 28
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "ERROR: Could not load libvdmengine.so"

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;Lcom/redbend/vdm/comm/CommFactory;Lcom/redbend/vdm/VdmThread;)V
    .locals 4
    .parameter "context"
    .parameter "mmiFactory"
    .parameter "plFactory"
    .parameter "logger"
    .parameter "commFactory"
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/redbend/vdm/VdmProxy;->multiGenericAlertVector:Ljava/util/Vector;

    .line 34
    new-instance v2, Lcom/redbend/vdm/MmiProxy;

    invoke-direct {v2, p2}, Lcom/redbend/vdm/MmiProxy;-><init>(Lcom/redbend/vdm/MmiFactory;)V

    iput-object v2, p0, Lcom/redbend/vdm/VdmProxy;->_mmiProxy:Lcom/redbend/vdm/MmiProxy;

    .line 35
    new-instance v2, Lcom/redbend/vdm/PLProxy;

    invoke-direct {v2, p1, p3, p4}, Lcom/redbend/vdm/PLProxy;-><init>(Landroid/content/Context;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;)V

    iput-object v2, p0, Lcom/redbend/vdm/VdmProxy;->_plProxy:Lcom/redbend/vdm/PLProxy;

    .line 36
    invoke-static {}, Lcom/redbend/vdm/VdmTreeProxy;->getInstance()Lcom/redbend/vdm/VdmTreeProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdm/VdmProxy;->_treeProxy:Lcom/redbend/vdm/VdmTreeProxy;

    .line 39
    :try_start_0
    new-instance v2, Lcom/redbend/vdm/comm/VdmComm;

    invoke-direct {v2, p5}, Lcom/redbend/vdm/comm/VdmComm;-><init>(Lcom/redbend/vdm/comm/CommFactory;)V

    iput-object v2, p0, Lcom/redbend/vdm/VdmProxy;->_comm:Lcom/redbend/vdm/comm/VdmComm;
    :try_end_0
    .catch Lcom/redbend/vdm/comm/VdmCommException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {p0, p6}, Lcom/redbend/vdm/VdmProxy;->_create(Ljava/lang/Thread;)I

    move-result v1

    .line 45
    .local v1, result:I
    if-eqz v1, :cond_0

    .line 46
    new-instance v2, Lcom/redbend/vdm/VdmException;

    invoke-static {v1}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v2

    .line 40
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Lcom/redbend/vdm/comm/VdmCommException;
    new-instance v2, Lcom/redbend/vdm/VdmException;

    iget-object v3, v0, Lcom/redbend/vdm/comm/VdmCommException;->vdmCommError:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    iget v3, v3, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    invoke-static {v3}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v2

    .line 48
    .end local v0           #e:Lcom/redbend/vdm/comm/VdmCommException;
    .restart local v1       #result:I
    :cond_0
    return-void
.end method

.method private crypt(Z[B[B[IZ)I
    .locals 5
    .parameter "isEncrypt"
    .parameter "input"
    .parameter "output"
    .parameter "outputLength"
    .parameter "isLast"

    .prologue
    const/4 v4, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, result:I
    aput v4, p4, v4

    .line 118
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/redbend/vdm/VdmProxy;->_cryptHandler:Lcom/redbend/vdm/CryptHandler;

    invoke-interface {v3, p2, p5}, Lcom/redbend/vdm/CryptHandler;->encrypt([BZ)[B

    move-result-object v2

    .line 123
    .local v2, tmpOutput:[B
    :goto_0
    if-eqz v2, :cond_1

    .line 124
    array-length v3, v2

    aput v3, p4, v4

    .line 130
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :goto_1
    return v1

    .line 121
    .end local v2           #tmpOutput:[B
    :cond_0
    iget-object v3, p0, Lcom/redbend/vdm/VdmProxy;->_cryptHandler:Lcom/redbend/vdm/CryptHandler;

    invoke-interface {v3, p2, p5}, Lcom/redbend/vdm/CryptHandler;->decrypt([BZ)[B

    move-result-object v2

    .restart local v2       #tmpOutput:[B
    goto :goto_0

    .line 134
    :cond_1
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_MISSING_DATA:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_1
.end method

.method private static native initIDs()V
.end method

.method private logInitiator(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V
    .locals 3
    .parameter "prefix"
    .parameter "initiator"

    .prologue
    .line 69
    const-string v0, "vDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - initiator is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p2, :cond_0

    .line 71
    const-string v0, "vDM"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "vDM"

    invoke-interface {p2}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native registerCrypt(Lcom/redbend/vdm/CryptHandler;)V
.end method

.method private native registerDLResumeCmpUrl(Lcom/redbend/vdm/DLResumeCmpUrlHandler;)V
.end method

.method private native registerDownloadRetry(Lcom/redbend/vdm/DownloadRetryHandler;)V
.end method


# virtual methods
.method protected native __triggerMultiGenericAlertSession(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method protected native _create(Ljava/lang/Thread;)I
.end method

.method protected native _destroy()V
.end method

.method protected native _setSessionEnableMode(I)I
.end method

.method protected native cancelSession()I
.end method

.method public cmpDLResumeUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ddUrl"
    .parameter "dlResumeUrl"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_dlResumeCmpUrlHandler:Lcom/redbend/vdm/DLResumeCmpUrlHandler;

    invoke-interface {v0, p1, p2}, Lcom/redbend/vdm/DLResumeCmpUrlHandler;->isSameUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cpNotify(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "field"
    .parameter "value"
    .parameter "alreadyHandled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_cpObserver:Lcom/redbend/vdm/CpObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/redbend/vdm/CpObserver;->notify(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method protected decrypt([B[B[IZ)I
    .locals 6
    .parameter "input"
    .parameter "output"
    .parameter "outputLength"
    .parameter "isLast"

    .prologue
    .line 146
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/redbend/vdm/VdmProxy;->crypt(Z[B[B[IZ)I

    move-result v0

    return v0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_treeProxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmTreeProxy;->destroy()V

    .line 58
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmProxy;->_destroy()V

    .line 59
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_plProxy:Lcom/redbend/vdm/PLProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/PLProxy;->destroy()V

    .line 60
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_mmiProxy:Lcom/redbend/vdm/MmiProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/MmiProxy;->destroy()V

    .line 62
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_comm:Lcom/redbend/vdm/comm/VdmComm;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_comm:Lcom/redbend/vdm/comm/VdmComm;

    invoke-virtual {v0}, Lcom/redbend/vdm/comm/VdmComm;->destroy()V

    .line 65
    :cond_0
    return-void
.end method

.method protected dlRetryNotify(Ljava/lang/String;II)I
    .locals 1
    .parameter "url"
    .parameter "offset"
    .parameter "total"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_dlRetryHandler:Lcom/redbend/vdm/DownloadRetryHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/redbend/vdm/DownloadRetryHandler;->onDownloadRetry(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected encrypt([B[B[IZ)I
    .locals 6
    .parameter "input"
    .parameter "output"
    .parameter "outputLength"
    .parameter "isLast"

    .prologue
    .line 142
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/redbend/vdm/VdmProxy;->crypt(Z[B[B[IZ)I

    move-result v0

    return v0
.end method

.method protected getAddrType(Lcom/redbend/vdm/BootMsgHandler;Ljava/lang/String;)I
    .locals 1
    .parameter "handler"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1, p2}, Lcom/redbend/vdm/BootMsgHandler;->getAddrType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected native getCurrentAccount()Ljava/lang/String;
.end method

.method protected getMultiGenericAlerts([I[B)[[Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;
    .locals 5
    .parameter "index"
    .parameter "correlator"

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v2, p0, Lcom/redbend/vdm/VdmProxy;->multiGenericAlertVector:Ljava/util/Vector;

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbend/vdm/MultiGenericAlerts;

    iget-object v1, v2, Lcom/redbend/vdm/MultiGenericAlerts;->correlator:Ljava/lang/String;

    .line 152
    .local v1, tmpCorrelator:Ljava/lang/String;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v2, p0, Lcom/redbend/vdm/VdmProxy;->multiGenericAlertVector:Ljava/util/Vector;

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbend/vdm/MultiGenericAlerts;

    iget-object v2, v2, Lcom/redbend/vdm/MultiGenericAlerts;->genericAlerts:[[Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;

    return-object v2
.end method

.method protected getNss(Lcom/redbend/vdm/BootMsgHandler;[B)I
    .locals 1
    .parameter "handler"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1, p2}, Lcom/redbend/vdm/BootMsgHandler;->getNss([B)I

    move-result v0

    return v0
.end method

.method protected getPin(Lcom/redbend/vdm/BootMsgHandler;)V
    .locals 0
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/redbend/vdm/BootMsgHandler;->getPin()V

    .line 103
    return-void
.end method

.method public native getSessionEnableMode()I
.end method

.method protected getTreeProxy()Lcom/redbend/vdm/VdmTreeProxy;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_treeProxy:Lcom/redbend/vdm/VdmTreeProxy;

    return-object v0
.end method

.method protected native getVersion()Ljava/lang/String;
.end method

.method protected native isIdle()Z
.end method

.method public native notifyDLSessionProceed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method protected notifyNIAMsgHandler(Lcom/redbend/vdm/NIAMsgHandler;IS[BLcom/redbend/vdm/SessionInitiator;)V
    .locals 1
    .parameter "handler"
    .parameter "uiMode"
    .parameter "DMVersion"
    .parameter "vendorSpecificData"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "NIA Msg: notify"

    invoke-direct {p0, v0, p5}, Lcom/redbend/vdm/VdmProxy;->logInitiator(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V

    .line 88
    invoke-static {p2}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->fromInt(I)Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    move-result-object v0

    invoke-interface {p1, v0, p3, p4, p5}, Lcom/redbend/vdm/NIAMsgHandler;->notify(Lcom/redbend/vdm/NIAMsgHandler$UIMode;S[BLcom/redbend/vdm/SessionInitiator;)V

    .line 91
    return-void
.end method

.method public native notifyNIASessionProceed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native notifyUserPinSet(Ljava/lang/String;Z)V
.end method

.method public native pauseSession()V
.end method

.method public native registerCP()V
.end method

.method public registerCPObserver(Lcom/redbend/vdm/CpObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/redbend/vdm/VdmProxy;->_cpObserver:Lcom/redbend/vdm/CpObserver;

    .line 245
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmProxy;->registerCP()V

    .line 246
    return-void
.end method

.method public registerCryptHandler(Lcom/redbend/vdm/CryptHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/redbend/vdm/VdmProxy;->_cryptHandler:Lcom/redbend/vdm/CryptHandler;

    .line 255
    invoke-direct {p0, p1}, Lcom/redbend/vdm/VdmProxy;->registerCrypt(Lcom/redbend/vdm/CryptHandler;)V

    .line 256
    return-void
.end method

.method public registerDLResumeCmpUrlHandler(Lcom/redbend/vdm/DLResumeCmpUrlHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/redbend/vdm/VdmProxy;->_dlResumeCmpUrlHandler:Lcom/redbend/vdm/DLResumeCmpUrlHandler;

    .line 260
    invoke-direct {p0, p1}, Lcom/redbend/vdm/VdmProxy;->registerDLResumeCmpUrl(Lcom/redbend/vdm/DLResumeCmpUrlHandler;)V

    .line 261
    return-void
.end method

.method public registerDownloadRetryHandler(Lcom/redbend/vdm/DownloadRetryHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/redbend/vdm/VdmProxy;->_dlRetryHandler:Lcom/redbend/vdm/DownloadRetryHandler;

    .line 250
    invoke-direct {p0, p1}, Lcom/redbend/vdm/VdmProxy;->registerDownloadRetry(Lcom/redbend/vdm/DownloadRetryHandler;)V

    .line 251
    return-void
.end method

.method public native removeAllNIAsFromPs()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native removeAllTriggers()V
.end method

.method public native resumeSession()V
.end method

.method protected native run()I
.end method

.method public native setComponentLogLevel(II)V
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/redbend/vdm/VdmProxy;->_comm:Lcom/redbend/vdm/comm/VdmComm;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/comm/VdmComm;->setConnectionTimeout(I)V

    .line 80
    return-void
.end method

.method public native setDefaultLogLevel(I)V
.end method

.method public setSessionEnableMode(I)V
    .locals 3
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmProxy;->_setSessionEnableMode(I)I

    move-result v0

    .line 233
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 236
    :cond_0
    return-void
.end method

.method protected native start()I
.end method

.method public native stop()V
.end method

.method protected native triggerBootstrapSession(Ljava/lang/String;IILjava/lang/String;[BILcom/redbend/vdm/BootMsgHandler;Lcom/redbend/vdm/SessionInitiator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method protected native triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BILcom/redbend/vdm/SessionInitiator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public triggerMultiGenericAlertSession(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/MultiGenericAlerts;)V
    .locals 3
    .parameter "account"
    .parameter "initiator"
    .parameter "multiGenericAlerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 202
    .local v0, index:[I
    iget-object v1, p0, Lcom/redbend/vdm/VdmProxy;->multiGenericAlertVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    aput v1, v0, v2

    .line 203
    iget-object v1, p0, Lcom/redbend/vdm/VdmProxy;->multiGenericAlertVector:Ljava/util/Vector;

    aget v2, v0, v2

    invoke-virtual {v1, v2, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lcom/redbend/vdm/VdmProxy;->__triggerMultiGenericAlertSession(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;[I)V

    .line 206
    return-void
.end method

.method protected native triggerNIADmSession([BILcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method protected native triggerPsNIADmSession(Lcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method protected native triggerReportSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
