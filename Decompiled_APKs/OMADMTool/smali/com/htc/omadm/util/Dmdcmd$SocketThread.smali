.class public Lcom/htc/omadm/util/Dmdcmd$SocketThread;
.super Ljava/lang/Thread;
.source "Dmdcmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/util/Dmdcmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketThread"
.end annotation


# instance fields
.field private DMSendCommand:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/omadm/util/Dmdcmd;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/util/Dmdcmd;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    const/4 v3, 0x0

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->bConn:Z
    invoke-static {v2, v3}, Lcom/htc/omadm/util/Dmdcmd;->access$002(Lcom/htc/omadm/util/Dmdcmd;Z)Z

    .line 140
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->Hostname:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/util/Dmdcmd;->access$200(Lcom/htc/omadm/util/Dmdcmd;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->Port:I
    invoke-static {v5}, Lcom/htc/omadm/util/Dmdcmd;->access$300(Lcom/htc/omadm/util/Dmdcmd;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/htc/omadm/util/Dmdcmd;->access$102(Lcom/htc/omadm/util/Dmdcmd;Ljava/net/Socket;)Ljava/net/Socket;

    .line 141
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/htc/omadm/util/Dmdcmd;->access$100(Lcom/htc/omadm/util/Dmdcmd;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn fail."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    iget-object v3, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/htc/omadm/util/Dmdcmd;->access$100(Lcom/htc/omadm/util/Dmdcmd;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->out:Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/htc/omadm/util/Dmdcmd;->access$402(Lcom/htc/omadm/util/Dmdcmd;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 148
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->out:Ljava/io/OutputStream;
    invoke-static {v2}, Lcom/htc/omadm/util/Dmdcmd;->access$400(Lcom/htc/omadm/util/Dmdcmd;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 150
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    iget-object v3, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->requestSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/htc/omadm/util/Dmdcmd;->access$100(Lcom/htc/omadm/util/Dmdcmd;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->in:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/htc/omadm/util/Dmdcmd;->access$502(Lcom/htc/omadm/util/Dmdcmd;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 151
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn success."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    const/4 v3, 0x1

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->bConn:Z
    invoke-static {v2, v3}, Lcom/htc/omadm/util/Dmdcmd;->access$002(Lcom/htc/omadm/util/Dmdcmd;Z)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :goto_1
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    iget-object v3, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    iget-object v4, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->DMSendCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/Dmdcmd;->Command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/omadm/util/Dmdcmd;->result:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/omadm/util/Dmdcmd;->access$600(Lcom/htc/omadm/util/Dmdcmd;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 164
    :try_start_1
    const-string v2, "dmdcmd"

    const-string v4, "GetResponse"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #getter for: Lcom/htc/omadm/util/Dmdcmd;->mSuspendLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/omadm/util/Dmdcmd;->access$600(Lcom/htc/omadm/util/Dmdcmd;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    const-string v2, "dmdcmd"

    const-string v3, "Socket conn fail."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/htc/omadm/util/Dmdcmd$SocketThread;->this$0:Lcom/htc/omadm/util/Dmdcmd;

    #setter for: Lcom/htc/omadm/util/Dmdcmd;->bConn:Z
    invoke-static {v2, v6}, Lcom/htc/omadm/util/Dmdcmd;->access$002(Lcom/htc/omadm/util/Dmdcmd;Z)Z

    goto :goto_1

    .line 157
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "dmdcmd"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
