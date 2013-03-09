.class Lcom/sqn/WimaxDbgClient;
.super Lcom/sqn/dcc/DbgClient;
.source "WimaxDbgClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sqn/WimaxDbgClient$LogHandler;
    }
.end annotation


# static fields
.field private static final EVENT_PRINT_LOG:I = 0x1771


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;

.field private mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/DbgClient;-><init>()V

    iput-object v1, p0, Lcom/sqn/WimaxDbgClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v1, p0, Lcom/sqn/WimaxDbgClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object v1, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    iput-object p1, p0, Lcom/sqn/WimaxDbgClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxDbgClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iget-object v1, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Wimax Log Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sqn/WimaxDbgClient$LogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sqn/WimaxDbgClient$LogHandler;-><init>(Lcom/sqn/WimaxDbgClient;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    const/16 v1, 0x1771

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    invoke-virtual {v0}, Lcom/sqn/WimaxDbgClient$LogHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sqn/WimaxDbgClient;->mLogTarget:Lcom/sqn/WimaxDbgClient$LogHandler;

    :cond_0
    return-void
.end method
