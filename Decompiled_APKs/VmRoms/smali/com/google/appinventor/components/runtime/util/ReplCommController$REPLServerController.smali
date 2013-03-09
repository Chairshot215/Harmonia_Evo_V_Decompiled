.class Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/ReplCommController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "REPLServerController"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private openClientSockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private serverThread:Ljava/lang/Thread;

.field private socket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ReplCommController;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    return-void
.end method

.method private closeSockets()V
    .locals 7

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    const-string v0, "REPL Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to close server sockets for port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "REPL Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException closing client socket on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    move-exception v0

    :try_start_7
    const-string v2, "REPL Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException closing server socket on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_b
    const-string v3, "REPL Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException closing client socket on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v0

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_f
    const-string v4, "REPL Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException closing client socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    goto :goto_2

    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;

    throw v0

    :cond_0
    throw v2

    :cond_1
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    return-void
.end method

.method private createServerThread()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;-><init>(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public ServerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartServer()V
    .locals 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->createServerThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public StopServer()V
    .locals 3

    const-string v0, "REPL Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping server on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V

    return-void
.end method
