.class Lcom/sqn/WimaxDccUsing;
.super Lcom/sqn/dcc/DccUsing;
.source "WimaxDccUsing.java"


# instance fields
.field private _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field private _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/DccUsing;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxDccUsing;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxDccUsing;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxDccUsing;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxDccUsing;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDccUsing;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DccUsing: Dcc is connected !"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxDccUsing;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDccUsing;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->WimaxRegisterNotification()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxDccUsing;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "Dcc: _observer is null!"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnected()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDccUsing;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "DccUsing: Dcc is disconnected !"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method
