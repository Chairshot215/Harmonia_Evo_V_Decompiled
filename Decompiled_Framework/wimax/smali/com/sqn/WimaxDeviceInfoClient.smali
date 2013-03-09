.class Lcom/sqn/WimaxDeviceInfoClient;
.super Lcom/sqn/dcc/DeviceInfoClient;
.source "WimaxDeviceInfoClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/DeviceInfoClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public AuthenticationNaiRejected()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: Authentication Nai is Rejected! "

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->AuthNaiRejected()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: _observer is null!"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AuthenticationState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceClient: Authentication State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->AuthenticationState(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: _observer is null!"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public MsDetached(J)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceClient: MS is detached, errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->WimaxReboot()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: _observer is null!"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public MsFatalError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: MS is occurred Fatal Error: "

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printError(Ljava/lang/String;)V

    return-void
.end method

.method public MsLoading(J)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceClient: MS is loading, progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method

.method public MsReady()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: MS is Ready !"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->WimaxReadyNotification()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxDeviceInfoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DeviceClient: _observer is null!"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printError(Ljava/lang/String;)V

    goto :goto_0
.end method
