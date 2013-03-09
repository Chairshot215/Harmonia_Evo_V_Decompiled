.class Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->createServerThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v3

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #setter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$302(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "REPL Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting a REPL Server thread on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :try_start_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$400(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, v0, :cond_0

    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->openClientSockets:Ljava/util/List;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$500(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v3, "scheme"

    invoke-static {v3}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    :try_start_b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$200(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->socket:Ljava/net/ServerSocket;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$300(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/net/ServerSocket;

    move-result-object v4

    if-ne v4, v2, :cond_1

    const-string v2, "REPL Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException with server socket on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->port:I
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$100(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", closing sockets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "REPL Controller"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #calls: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->closeSockets()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$600(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$400(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;)Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    const/4 v1, 0x0

    #setter for: Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->serverThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->access$402(Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_1
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController$1;->this$1:Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ReplCommController$REPLServerController;->this$0:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    #getter for: Lcom/google/appinventor/components/runtime/util/ReplCommController;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->access$000(Lcom/google/appinventor/components/runtime/util/ReplCommController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_1
.end method
