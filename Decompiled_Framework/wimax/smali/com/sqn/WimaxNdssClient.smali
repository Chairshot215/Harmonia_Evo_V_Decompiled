.class Lcom/sqn/WimaxNdssClient;
.super Lcom/sqn/dcc/NdssClient;
.source "WimaxNdssClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/NdssClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public AutodetectEntryCriteriaMetExtBand(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsAutodetectEnterCriteriaExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AutodetectExitCriteriaMet()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsAutodetectExitCriteriaNotification()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BackoffStarted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsBackoffStarted(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public NdsStateChange(J)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NdssClient: NdsStateChange, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsStateNotification(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ScanBsFoundExtBand(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 3

    iget-object v1, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "NdssClient: Scan Bs Found (Ext Band)"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sqn/Wimax4GSequansApi;->createBaseStationInfo(Lcom/sqn/dcc/ScanResultExtBand;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v1, v0}, Lcom/htc/net/wimax/WimaxEventObserver;->BsFoundNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    iget-object v1, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsBsFoundExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "NdssClient: ScanBsFoundExtBand: _observer is null"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ScanRoundCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: ScanRoundCompleted"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->NdsRoundCompleteNotification()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxNdssClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "NdssClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_0
.end method
