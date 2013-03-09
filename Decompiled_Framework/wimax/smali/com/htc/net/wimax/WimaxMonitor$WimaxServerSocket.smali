.class Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;
.super Ljava/lang/Object;
.source "WimaxMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WimaxServerSocket"
.end annotation


# static fields
.field private static final MAX_CLIENT:I = 0x32

.field private static final WIMAX_PORT:I = 0x1e5f


# instance fields
.field private server:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/htc/net/wimax/WimaxMonitor;

.field private wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxMonitor;Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 5

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->server:Ljava/net/ServerSocket;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x1e5f

    const/16 v3, 0x32

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->server:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v2, "WimaxMonitor"

    const-string v3, "WimaxServerSocket run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->server:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "WimaxMonitor"

    const-string v3, "WimaxServerSocket wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v2, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-direct {v2, v3, v4, v1}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;-><init>(Lcom/htc/net/wimax/WimaxMonitor;Lcom/htc/net/wimax/WimaxStateTracker;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;->server:Ljava/net/ServerSocket;

    if-nez v2, :cond_1

    const-string v2, "WimaxMonitor"

    const-string v3, "server socket is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
