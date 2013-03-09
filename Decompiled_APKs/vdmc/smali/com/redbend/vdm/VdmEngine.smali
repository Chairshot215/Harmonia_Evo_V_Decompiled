.class public Lcom/redbend/vdm/VdmEngine;
.super Ljava/lang/Object;
.source "VdmEngine.java"


# static fields
.field private static _httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

.field private static _proxy:Lcom/redbend/vdm/VdmProxy;

.field private static _sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;


# instance fields
.field private volatile _thread:Lcom/redbend/vdm/VdmThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;)V
    .locals 1
    .parameter "context"
    .parameter "mmiFactory"
    .parameter "plFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/redbend/vdm/VdmEngine;-><init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;)V
    .locals 7
    .parameter "context"
    .parameter "mmiFactory"
    .parameter "plFactory"
    .parameter "logger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/redbend/vdm/VdmThread;

    invoke-direct {v0, p0}, Lcom/redbend/vdm/VdmThread;-><init>(Lcom/redbend/vdm/VdmEngine;)V

    iput-object v0, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    .line 55
    iget-object v0, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmThread;->start()V

    .line 57
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/redbend/vdm/VdmProxy;

    new-instance v5, Lcom/redbend/vdm/comm/VdmCommFactory;

    invoke-direct {v5}, Lcom/redbend/vdm/comm/VdmCommFactory;-><init>()V

    iget-object v6, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/redbend/vdm/VdmProxy;-><init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;Lcom/redbend/vdm/comm/CommFactory;Lcom/redbend/vdm/VdmThread;)V

    sput-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    .line 61
    :cond_1
    return-void
.end method

.method protected static getProxy()Lcom/redbend/vdm/VdmProxy;
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    return-object v0
.end method

.method private declared-synchronized stopThread()V
    .locals 6

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 91
    .local v2, state:Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmThread;->quit()V

    .line 94
    iget-object v1, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    .line 95
    .local v1, moribund:Ljava/lang/Thread;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/redbend/vdm/VdmEngine;->_thread:Lcom/redbend/vdm/VdmThread;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_0
    :try_start_2
    const-string v3, "vDM"

    const-string v4, "vDM Thread exited"

    invoke-static {v3, v4}, Lcom/redbend/vdm/VdmLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v1           #moribund:Ljava/lang/Thread;
    .end local v2           #state:Ljava/lang/Thread$State;
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    .restart local v1       #moribund:Ljava/lang/Thread;
    .restart local v2       #state:Ljava/lang/Thread$State;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "vDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vDM Thread - caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #moribund:Ljava/lang/Thread;
    .end local v2           #state:Ljava/lang/Thread$State;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public cancelSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmProxy;->cancelSession()I

    move-result v0

    .line 148
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 151
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, "vDM"

    const-string v1, "VdmEngine#destroy"

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->destroy()V

    .line 76
    sput-object v2, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    .line 77
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    invoke-virtual {v0}, Lcom/redbend/vdm/SessionStateNotifier;->terminate()V

    .line 79
    sput-object v2, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    .line 81
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    invoke-virtual {v0}, Lcom/redbend/vdm/HttpHeadersNotifier;->terminate()V

    .line 83
    sput-object v2, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/redbend/vdm/VdmEngine;->stopThread()V

    .line 86
    return-void
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionEnableMode()Lcom/redbend/vdm/VdmSessionEnableMode;
    .locals 2

    .prologue
    .line 631
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmProxy;->getSessionEnableMode()I

    move-result v0

    .line 632
    .local v0, mode:I
    invoke-static {}, Lcom/redbend/vdm/VdmSessionEnableMode;->values()[Lcom/redbend/vdm/VdmSessionEnableMode;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmProxy;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->isIdle()Z

    move-result v0

    return v0
.end method

.method public notifyDLSessionProceed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 457
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->notifyDLSessionProceed()V

    .line 458
    return-void
.end method

.method public notifyNIASessionProceed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->notifyNIASessionProceed()V

    .line 449
    return-void
.end method

.method public notifyUserPinSet(Ljava/lang/String;Z)V
    .locals 1
    .parameter "userPin"
    .parameter "accepted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 534
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmProxy;->notifyUserPinSet(Ljava/lang/String;Z)V

    .line 535
    return-void
.end method

.method public pauseSession()V
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->pauseSession()V

    .line 659
    return-void
.end method

.method public registerCpObserver(Lcom/redbend/vdm/CpObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 543
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmProxy;->registerCPObserver(Lcom/redbend/vdm/CpObserver;)V

    .line 544
    return-void
.end method

.method public registerCryptHandler(Lcom/redbend/vdm/CryptHandler;)V
    .locals 1
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 676
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmProxy;->registerCryptHandler(Lcom/redbend/vdm/CryptHandler;)V

    .line 677
    return-void
.end method

.method public registerDlResumeCmpUrlHandler(Lcom/redbend/vdm/DLResumeCmpUrlHandler;)V
    .locals 1
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmProxy;->registerDLResumeCmpUrlHandler(Lcom/redbend/vdm/DLResumeCmpUrlHandler;)V

    .line 697
    return-void
.end method

.method public registerDownloadRetryHandler(Lcom/redbend/vdm/DownloadRetryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 560
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmProxy;->registerDownloadRetryHandler(Lcom/redbend/vdm/DownloadRetryHandler;)V

    .line 561
    return-void
.end method

.method public registerHttpHeadersObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 504
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/HttpHeadersNotifier;->registerObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z

    move-result v0

    return v0
.end method

.method public registerSessionStateObserver(Lcom/redbend/vdm/SessionStateObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 474
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/SessionStateNotifier;->registerObserver(Lcom/redbend/vdm/SessionStateObserver;)Z

    move-result v0

    return v0
.end method

.method public removeAllNIAsFromPs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->removeAllNIAsFromPs()V

    .line 340
    return-void
.end method

.method public removeAllTriggers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 705
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->removeAllTriggers()V

    .line 706
    return-void
.end method

.method public resumeSession()V
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->resumeSession()V

    .line 666
    return-void
.end method

.method protected run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmProxy;->run()I

    move-result v0

    .line 128
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 131
    :cond_0
    return-void
.end method

.method public setComponentLogLevel(Lcom/redbend/vdm/VdmComponent;Lcom/redbend/vdm/VdmLogLevel;)V
    .locals 3
    .parameter "component"
    .parameter "level"

    .prologue
    .line 593
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmComponent;->ordinal()I

    move-result v1

    invoke-virtual {p2}, Lcom/redbend/vdm/VdmLogLevel;->val()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/redbend/vdm/VdmProxy;->setComponentLogLevel(II)V

    .line 594
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 642
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmProxy;->setConnectionTimeout(I)V

    .line 643
    return-void
.end method

.method public setDefaultLogLevel(Lcom/redbend/vdm/VdmLogLevel;)V
    .locals 2
    .parameter "level"

    .prologue
    .line 576
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmLogLevel;->val()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/VdmProxy;->setDefaultLogLevel(I)V

    .line 577
    return-void
.end method

.method public setSessionEnableMode(Lcom/redbend/vdm/VdmSessionEnableMode;)V
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {p1}, Lcom/redbend/vdm/VdmSessionEnableMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/VdmProxy;->setSessionEnableMode(I)V

    .line 620
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmProxy;->start()I

    move-result v0

    .line 119
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 122
    :cond_0
    new-instance v1, Lcom/redbend/vdm/SessionStateNotifier;

    invoke-direct {v1}, Lcom/redbend/vdm/SessionStateNotifier;-><init>()V

    sput-object v1, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    .line 123
    new-instance v1, Lcom/redbend/vdm/HttpHeadersNotifier;

    invoke-direct {v1}, Lcom/redbend/vdm/HttpHeadersNotifier;-><init>()V

    sput-object v1, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    .line 124
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmProxy;->stop()V

    .line 652
    return-void
.end method

.method public triggerBootstrapSession(Ljava/lang/String;Lcom/redbend/vdm/BootProfile;Lcom/redbend/vdm/CpSecurity;Ljava/lang/String;[BLcom/redbend/vdm/BootMsgHandler;Lcom/redbend/vdm/SessionInitiator;)V
    .locals 10
    .parameter "account"
    .parameter "profile"
    .parameter "security"
    .parameter "mac"
    .parameter "message"
    .parameter "handler"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v9, Ljava/lang/String;

    const-string v0, "VdmEngine.triggerBootstrapSession (initiator = "

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 242
    .local v9, s:Ljava/lang/String;
    if-nez p7, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    :goto_0
    const-string v0, "vDM"

    invoke-static {v0, v9}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {p2}, Lcom/redbend/vdm/BootProfile;->ordinal()I

    move-result v2

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->NONE:Lcom/redbend/vdm/CpSecurity;

    if-ne p3, v1, :cond_1

    const/4 v3, -0x1

    :goto_1
    if-nez p5, :cond_2

    const/4 v6, 0x0

    :goto_2
    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/redbend/vdm/VdmProxy;->triggerBootstrapSession(Ljava/lang/String;IILjava/lang/String;[BILcom/redbend/vdm/BootMsgHandler;Lcom/redbend/vdm/SessionInitiator;)V

    .line 258
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p7 .. p7}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p3}, Lcom/redbend/vdm/CpSecurity;->ordinal()I

    move-result v3

    goto :goto_1

    :cond_2
    array-length v6, p5

    goto :goto_2
.end method

.method public triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BLcom/redbend/vdm/SessionInitiator;)V
    .locals 7
    .parameter "account"
    .parameter "genericAlertType"
    .parameter "message"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v6, Ljava/lang/String;

    const-string v0, "VdmEngine.triggerDMSession (initiator = "

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 194
    .local v6, s:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :goto_0
    const-string v0, "vDM"

    invoke-static {v0, v6}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    if-nez p3, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/redbend/vdm/VdmProxy;->triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BILcom/redbend/vdm/SessionInitiator;)V

    .line 207
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 201
    :cond_1
    array-length v4, p3

    goto :goto_1
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
    .line 371
    new-instance v0, Ljava/lang/String;

    const-string v1, "VdmEngine.triggerMultiGenericAlertSession (initiator = "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, s:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    const-string v1, "vDM"

    invoke-static {v1, v0}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/redbend/vdm/VdmProxy;->triggerMultiGenericAlertSession(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/MultiGenericAlerts;)V

    .line 383
    return-void

    .line 375
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public triggerNIADmSession([BLcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V
    .locals 3
    .parameter "message"
    .parameter "initiator"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/String;

    const-string v1, "VdmEngine.triggerNIADmSession (initiator = "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, s:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    const-string v1, "vDM"

    invoke-static {v1, v0}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v2, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, p1, v1, p2, p3}, Lcom/redbend/vdm/VdmProxy;->triggerNIADmSession([BILcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V

    .line 300
    return-void

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    array-length v1, p1

    goto :goto_1
.end method

.method public triggerPsNIADmSession(Lcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V
    .locals 3
    .parameter "initiator"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/lang/String;

    const-string v1, "VdmEngine.triggerPsNIADmSession (initiator = "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, s:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    const-string v1, "vDM"

    invoke-static {v1, v0}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v1, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmProxy;->triggerPsNIADmSession(Lcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V

    .line 331
    return-void

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public triggerReportSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V
    .locals 8
    .parameter "uriPath"
    .parameter "reasonCode"
    .parameter "account"
    .parameter "genericAlertType"
    .parameter "correlator"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v7, Ljava/lang/String;

    const-string v0, "VdmEngine.triggerReportSession (initiator = "

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 424
    .local v7, s:Ljava/lang/String;
    if-nez p6, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 429
    :goto_0
    const-string v0, "vDM"

    invoke-static {v0, v7}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_proxy:Lcom/redbend/vdm/VdmProxy;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/redbend/vdm/VdmProxy;->triggerReportSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V

    .line 438
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p6}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public unregisterHttpHeadersObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 519
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_httpHeadersNotifier:Lcom/redbend/vdm/HttpHeadersNotifier;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/HttpHeadersNotifier;->unregisterObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z

    move-result v0

    return v0
.end method

.method public unregisterSessionStateObserver(Lcom/redbend/vdm/SessionStateObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 489
    sget-object v0, Lcom/redbend/vdm/VdmEngine;->_sscNotifier:Lcom/redbend/vdm/SessionStateNotifier;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/SessionStateNotifier;->unregisterObserver(Lcom/redbend/vdm/SessionStateObserver;)Z

    move-result v0

    return v0
.end method
