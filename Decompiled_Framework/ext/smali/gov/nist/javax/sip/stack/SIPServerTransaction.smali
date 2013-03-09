.class public Lgov/nist/javax/sip/stack/SIPServerTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPServerTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Ljavax/sip/ServerTransaction;
.implements Lgov/nist/javax/sip/ServerTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
    }
.end annotation


# instance fields
.field private dialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field protected isAckSeen:Z

.field private pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field private provisionalResponseSem:Ljava/util/concurrent/Semaphore;

.field private provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

.field private transient requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

.field private retransmissionAlertEnabled:Z

.field private retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

.field private rseqNumber:I


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    iget v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget v2, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Server Transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V

    return-void
.end method

.method static synthetic access$100(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private fireReliableResponseRetransmissionTimer()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_0
.end method

.method private getRealState()Ljavax/sip/TransactionState;
    .locals 1

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v6, Ljava/io/IOException;

    const-string v7, "missing transport!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v6

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v3

    :cond_2
    if-ne v3, v7, :cond_3

    const-string v6, "TLS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v3, 0x13c5

    :cond_3
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    new-instance v7, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v7, v1, v3, v4}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v7

    invoke-interface {v0}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPort()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x13c4

    goto :goto_1

    :cond_6
    const-string v6, "received"

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create a message channel for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public ackSeen()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    return v0
.end method

.method public disableRetransmissionAlerts()V
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    :cond_1
    return-void
.end method

.method public enableRetransmissionAlerts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog associated with tx"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Request Method must be INVITE"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected fireRetransmissionTimer()V
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "fireRetransmissionTimer() -- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    if-le v3, v5, :cond_2

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    new-instance v2, Ljavax/sip/TimeoutEvent;

    sget-object v3, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v2, v1, p0, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    invoke-virtual {v1, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    goto :goto_0
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIPServerTransaction.fireTimeoutTimer this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Found tx pending ACK - returning"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_3

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    :cond_3
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    :cond_4
    :goto_1
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_1

    :cond_6
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0

    :cond_7
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_9

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_a

    :cond_9
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    if-eqz v0, :cond_1

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0
.end method

.method public getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public bridge synthetic getCanceledInviteTransaction()Ljavax/sip/ServerTransaction;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getResponseChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    return-object p0
.end method

.method public getState()Ljavax/sip/TransactionState;
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    goto :goto_0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    move-result v0

    return v0
.end method

.method public isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 17

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v13, "INVITE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "z9hg4bk"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string v13, "CANCEL"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v13

    invoke-virtual {v14, v13}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    :cond_2
    :goto_0
    return v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v13

    invoke-virtual {v14, v13}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_7

    if-nez v8, :cond_9

    :cond_7
    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_8

    if-nez v9, :cond_a

    :cond_8
    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, p1

    instance-of v1, v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v11, 0x0

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    :cond_b
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object/from16 v13, p1

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_c
    if-nez v6, :cond_d

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_d
    if-nez v7, :cond_e

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CANCEL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v13

    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v13

    invoke-virtual {v10, v13}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public isRetransmissionAlertEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return v0
.end method

.method public isTransactionMapped()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    return v0
.end method

.method protected map()V
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    return-void

    :cond_2
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    goto :goto_0
.end method

.method public prackRecieved()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tx state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/4 v2, 0x1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    const-string v4, "Trying"

    invoke-virtual {p1, v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_1
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_10

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_10

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v2, :cond_d

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isNon2XXAckPassedToListener()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "IOException "

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto :goto_0

    :cond_5
    :try_start_1
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACK received for server Tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not delivering to application!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eq v3, v4, :cond_9

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_b

    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_a
    :goto_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completed processing retransmitted request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " txState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastResponse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne v3, v4, :cond_15

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v3, :cond_15

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v1, :cond_11

    iget-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    if-nez v3, :cond_14

    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    :cond_12
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v3, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    :cond_13
    :goto_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_3

    :cond_15
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Too late to cancel Transaction"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0xc8

    :try_start_2
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public releaseSem()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    return-void

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_0
.end method

.method public scheduleAckRemoval()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is null["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] or method is not ACK["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    return-void
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xc8

    const/4 v8, 0x2

    const/16 v7, 0x2bb

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->removePort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    const-string v6, "branch"

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    throw v5

    :cond_2
    :try_start_5
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v5, v6, :cond_a

    div-int/lit8 v5, v3, 0x64

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    sget-object v5, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_3
    :try_start_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage : tx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/4 v5, 0x0

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    throw v1

    :cond_5
    if-gt v9, v3, :cond_3

    if-gt v3, v7, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_3

    :cond_6
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_3

    :cond_7
    div-int/lit8 v5, v3, 0x64

    if-ne v5, v8, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    const/16 v5, 0x40

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto :goto_3

    :cond_8
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    :cond_9
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    :cond_a
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v5

    sget-object v6, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v5, v6, :cond_f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v5

    if-eqz v5, :cond_d

    div-int/lit8 v5, v3, 0x64

    if-ne v5, v8, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    const/16 v5, 0x40

    iput v5, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto/16 :goto_3

    :cond_b
    const/16 v5, 0x12c

    if-gt v5, v3, :cond_3

    if-gt v3, v7, :cond_3

    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    :cond_c
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    :cond_d
    if-gt v9, v3, :cond_3

    if-gt v3, v7, :cond_3

    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_3

    :cond_e
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_3

    :cond_f
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    if-ne v5, v6, :cond_3

    goto/16 :goto_2
.end method

.method protected sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Unacknowledged response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    const-string v1, "RSeq"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/header/RSeq;

    const-string v1, "RSeq"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v9, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v9}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    invoke-interface {p1, v9}, Ljavax/sip/message/Response;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    :try_start_0
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v1, v0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Unacknowledged response"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    move-object/from16 v18, p1

    check-cast v18, Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v0, p0

    iget-object v9, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null response"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "CSeq method does not match Request method of request that created the tx."

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v12

    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v12}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUBSCRIBE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "Expires"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Expires header is mandatory in 2xx response of SUBSCRIBE"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v16

    check-cast v16, Lgov/nist/javax/sip/header/Expires;

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/header/Expires;

    if-eqz v16, :cond_3

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v3

    if-le v2, v3, :cond_3

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Response Expires time exceeds request Expires time : See RFC 3265 3.1.1"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Contact"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Contact Header is mandatory for the OK to the INVITE"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Response does not belong to this transaction."

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-eqz v2, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "cannot send response -- unacked povisional"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    move-exception v12

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Could not acquire PRACK sem "

    invoke-interface {v2, v3, v12}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    :goto_0
    if-eqz v9, :cond_d

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/Utils;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Dialog mismatch!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_2
    move-exception v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v12}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_8
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v13}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_a
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v13}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :try_start_5
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag mismatch dialogTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseTag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "From tag of request does not match response from tag"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    if-eqz v14, :cond_12

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2, v14}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    :cond_f
    :goto_2
    if-eqz v9, :cond_13

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_13

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v15

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    if-nez v15, :cond_10

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v2, v3, :cond_10

    new-instance v11, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v2

    invoke-direct {v11, v2, v9}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v11, v0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    :cond_10
    :goto_3
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    if-eqz v9, :cond_11

    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    :cond_11
    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "WARNING -- Null From tag in request!!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    if-nez v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v2, :cond_10

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3
.end method

.method public setAckSeen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    return-void
.end method

.method public setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    :cond_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return-void
.end method

.method public setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-void
.end method

.method public setMapped(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    return-void
.end method

.method public setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    return-void
.end method

.method public setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return-void
.end method

.method public setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 1

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v0, :cond_0

    const/16 v0, 0x40

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    :cond_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    return-void
.end method

.method protected startTransactionTimer()V
    .locals 6

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    :cond_1
    return-void
.end method
