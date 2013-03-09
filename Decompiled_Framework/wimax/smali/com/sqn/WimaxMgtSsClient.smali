.class Lcom/sqn/WimaxMgtSsClient;
.super Lcom/sqn/dcc/MgtSsClient;
.source "WimaxMgtSsClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/MgtSsClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxMgtSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "WimaxMgtSsClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public PowerCtlModeChanged(Lcom/sqn/dcc/swmSsPowerCtrlMode;)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MgtSsClient: power mode changed, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/swmSsPowerCtrlMode;->value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method

.method public SsState(Lcom/sqn/dcc/swmSsState;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->SsStateNotification(Lcom/sqn/dcc/swmSsState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxMgtSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "WimaxMgtSsClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
