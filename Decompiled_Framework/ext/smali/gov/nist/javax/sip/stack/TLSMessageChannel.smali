.class public final Lgov/nist/javax/sip/stack/TLSMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TLSMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field private handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

.field protected isCached:Z

.field protected isRunning:Z

.field private key:Ljava/lang/String;

.field private myAddress:Ljava/lang/String;

.field private myClientInputStream:Ljava/io/InputStream;

.field private myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field private myPort:I

.field private mySock:Ljava/net/Socket;

.field private mythread:Ljava/lang/Thread;

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TLSMessageChannel (outgoing)"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iput p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    const-string v0, "TLS"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object p4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    const-string v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "creating new TLSMessageChannel (incoming)"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    new-instance v1, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    const-string v2, "TLSMessageChannelThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendMessage([BZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v8

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v8, v0, :cond_1

    if-eqz v8, :cond_1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v0, "TLSMessageChannelThread"

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing message Channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    check-cast v0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    const-string v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    const-string v0, "tls"

    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    return v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_0
    if-eqz p3, :cond_6

    const-class v3, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered bad message \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIP/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ACK "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Sending automatic 400 Bad Request:"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerPort()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    throw p1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    return-void
.end method

.method public isReliable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSecure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, ">>> Dropped Bad Msg"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v23

    move-object/from16 v0, p1

    instance-of v3, v0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v3, :cond_5

    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v22

    check-cast v22, Lgov/nist/javax/sip/header/Via;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v12

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    const-string v3, "rport"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v12}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "received"

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "rport"

    move-object/from16 v0, p0

    iget v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-static {v3, v4}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v3, v13, v4}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    instance-of v3, v0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----Processing Message---"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_2
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_9

    const/16 v3, 0x201

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Message size exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    throw v3

    :catch_0
    move-exception v11

    :try_start_3
    invoke-static {v11}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v19

    if-eqz v19, :cond_b

    :try_start_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, v19

    instance-of v3, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_1

    move-object/from16 v0, v19

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    move-object/from16 v0, v19

    instance-of v4, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v4, :cond_a

    move-object/from16 v0, v19

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_a

    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    :cond_a
    throw v3

    :cond_b
    const/16 v3, 0x1f7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v15

    new-instance v16, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct/range {v16 .. v16}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/high16 v3, 0x4024

    :try_start_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Dropping message -- could not acquire semaphore"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v18, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    :goto_4
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Message size exceeded"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping Badly formatted response message >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v20

    if-eqz v20, :cond_12

    :try_start_a
    move-object/from16 v0, v20

    instance-of v3, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_10

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping response message with invalid tag >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_f
    :try_start_b
    move-object/from16 v0, v20

    instance-of v3, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_1

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_10
    :try_start_c
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    move-object/from16 v0, v20

    instance-of v3, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_1

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    move-object v4, v3

    move-object/from16 v0, v20

    instance-of v3, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_11

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_11

    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    :cond_11
    throw v4

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Could not get semaphore... dropping response"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto/16 :goto_3
.end method

.method public run()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v2, Lgov/nist/javax/sip/parser/Pipeline;

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    new-instance v5, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v6

    invoke-direct {v5, p0, v2, v6}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    iput-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    const/16 v0, 0x1000

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    :goto_0
    :try_start_0
    new-array v3, v0, [B

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v9, :cond_1

    const-string v5, "\r\n\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v5, v9, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    :goto_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    return-void

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v5, v4}, Lgov/nist/javax/sip/parser/Pipeline;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    const-string v5, "\r\n\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_3
    :try_start_8
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException  closing sock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :try_start_9
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v5, v9, :cond_3

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_3
    :try_start_b
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_4
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_2
    move-exception v5

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_e
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v6, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v6}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    throw v5

    :catch_4
    move-exception v5

    goto :goto_4

    :catch_5
    move-exception v5

    goto :goto_3
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {p0, v6, v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    :cond_0
    return-void
.end method

.method public sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string v4, "TLS"

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v9

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v9, v0, :cond_3

    if-eqz v9, :cond_3

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v0, "TLSMessageChannelThread"

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    return-void
.end method

.method protected uncache()V
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    :cond_0
    return-void
.end method
