.class public abstract Lgov/nist/javax/sip/stack/SIPTransactionStack;
.super Ljava/lang/Object;
.source "SIPTransactionStack.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;,
        Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;
    }
.end annotation


# static fields
.field public static final BASE_TIMER_INTERVAL:I = 0x1f4

.field public static final CONNECTION_LINGER_TIME:I = 0x8

.field protected static final dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected addressResolver:Lgov/nist/core/net/AddressResolver;

.field protected cacheClientConnections:Z

.field protected cacheServerConnections:Z

.field protected cancelClientTransactionChecked:Z

.field protected checkBranchId:Z

.field private clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected clientTransactionTableHiwaterMark:I

.field protected clientTransactionTableLowaterMark:I

.field protected defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

.field protected dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected generateTimeStampHeader:Z

.field protected ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

.field protected isAutomaticDialogErrorHandlingEnabled:Z

.field protected isAutomaticDialogSupportEnabled:Z

.field protected isBackToBackUserAgent:Z

.field protected isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

.field protected logStackTraceOnMessageSend:Z

.field protected maxConnections:I

.field protected maxContentLength:I

.field protected maxForkTime:I

.field protected maxListenerResponseTime:I

.field protected maxMessageSize:I

.field private mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lgov/nist/javax/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected needsLogging:Z

.field protected networkLayer:Lgov/nist/core/net/NetworkLayer;

.field private non2XXAckPassedToListener:Z

.field protected outboundProxy:Ljava/lang/String;

.field private pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field protected receiveUdpBufferSize:I

.field protected remoteTagReassignmentAllowed:Z

.field protected retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected rfc2543Supported:Z

.field protected router:Ljavax/sip/address/Router;

.field protected routerPath:Ljava/lang/String;

.field protected sendUdpBufferSize:I

.field protected serverLogger:Lgov/nist/core/ServerLogger;

.field private serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected serverTransactionTableHighwaterMark:I

.field protected serverTransactionTableLowaterMark:I

.field protected sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

.field protected stackAddress:Ljava/lang/String;

.field protected stackDoesCongestionControl:Z

.field protected stackInetAddress:Ljava/net/InetAddress;

.field private stackLogger:Lgov/nist/core/StackLogger;

.field protected stackName:Ljava/lang/String;

.field private terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected threadAuditor:Lgov/nist/core/ThreadAuditor;

.field protected threadPoolSize:I

.field private timer:Ljava/util/Timer;

.field protected toExit:Z

.field udpFlag:Z

.field protected unlimitedClientTransactionTableSize:Z

.field protected unlimitedServerTransactionTableSize:Z

.field protected useRouterForAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    const/16 v0, 0x1388

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    const/16 v0, 0xfa0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    const/16 v0, 0x3e8

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    const/16 v0, 0x320

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    new-instance v0, Lgov/nist/core/ThreadAuditor;

    invoke-direct {v0}, Lgov/nist/core/ThreadAuditor;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    new-instance v0, Lgov/nist/javax/sip/DefaultAddressResolver;

    invoke-direct {v0}, Lgov/nist/javax/sip/DefaultAddressResolver;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 6

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    if-le v3, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, "Exception occured while waiting for room"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " putTransactionHash :  key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private auditDialogs(Ljava/util/Set;J)Ljava/lang/String;
    .locals 16

    const-string v1, "  Leaked dialogs:\n"

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v13

    :try_start_0
    new-instance v8, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v10, :cond_0

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-wide v12, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    iput-wide v4, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    goto :goto_0

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-wide v12, v10, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    sub-long v12, v4, v12

    cmp-long v12, v12, p2

    if-ltz v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dialog id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dialog state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljavax/sip/DialogState;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v12, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v10, v12}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v12}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "auditDialogs: leaked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v12, "null"

    goto :goto_3

    :cond_5
    if-lez v11, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    Total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " leaked dialogs detected and removed.\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    return-object v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;
    .locals 15

    const-string v0, "  Leaked transactions:\n"

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v10, Ljava/util/LinkedList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v7, :cond_0

    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    iput-wide v1, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    goto :goto_0

    :cond_1
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    sub-long v11, v1, v11

    cmp-long v11, v11, p2

    if-ltz v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v9

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljavax/sip/TransactionState;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", OR: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "auditTransactions: leaked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const-string v11, "null"

    goto :goto_2

    :cond_4
    const-string v6, "null"

    goto :goto_3

    :cond_5
    if-lez v4, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    Total: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " leaked transactions detected and removed.\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isDialogCreated(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addExtensionMethod(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NOTIFY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "NOTIFY Supported Natively"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    return-void
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->map()V

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    return-void
.end method

.method public addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public auditStack(Ljava/util/Set;JJ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditDialogs(Ljava/util/Set;J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Stack Audit:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v2, ""

    goto :goto_0

    :cond_3
    const-string v3, ""

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_2
.end method

.method public checkBranchId()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    return v0
.end method

.method public createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v0, p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V

    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    goto :goto_0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method public createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    new-instance v3, Lgov/nist/core/HostPort;

    invoke-direct {v3}, Lgov/nist/core/HostPort;-><init>()V

    invoke-virtual {v3, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov/nist/core/HostPort;->setPort(I)V

    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaPort(I)V

    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method protected createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v7, "udp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-direct {v6, p1, p0, p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    :goto_0
    return-object v6

    :cond_0
    const-string v7, "tcp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v4, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-direct {v4, p1, p0, p2}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    move-object v6, v4

    goto :goto_0

    :cond_1
    const-string v7, "tls"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-direct {v5, p1, p0, p2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    move-object v6, v5

    goto :goto_0

    :cond_2
    const-string v7, "sctp"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "gov.nist.javax.sip.stack.sctp.SCTPMessageProcessor"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2, p1, p2, p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Error initializing SCTP"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_2
    move-exception v1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Error initializing SCTP"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad transport"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v5, Lgov/nist/core/Host;

    invoke-direct {v5}, Lgov/nist/core/Host;-><init>()V

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    new-instance v6, Lgov/nist/core/HostPort;

    invoke-direct {v6}, Lgov/nist/core/HostPort;-><init>()V

    invoke-virtual {v6, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Lgov/nist/core/HostPort;->setPort(I)V

    const/4 v2, 0x0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v7

    if-ne p2, v7, :cond_0

    :try_start_0
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_1
    throw v1

    :catch_1
    move-exception v0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 8

    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    if-eqz v2, :cond_0

    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    float-to-double v6, v1

    sub-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_0
.end method

.method protected decrementActiveClientTransactionCount()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v2

    if-eqz v1, :cond_0

    instance-of v3, v2, Lgov/nist/javax/sip/SipListenerExt;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public disableLogging()V
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->disableLogging()V

    return-void
.end method

.method public enableLogging()V
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->enableLogging()V

    return-void
.end method

.method public findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 8

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCancelTransaction request= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nfindCancelRequest isServer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v4

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return-object v3

    :cond_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v4

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "Could not find transaction for cancel request"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v9, "INVITE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v3, v8

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-nez v2, :cond_2

    move-object v3, v8

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    move-object v5, v0

    check-cast v5, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    instance-of v7, v7, Ljavax/sip/ServerTransaction;

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v3, v7

    goto :goto_0

    :cond_5
    move-object v3, v8

    goto :goto_0
.end method

.method public findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for pending tx for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 12

    const/4 v5, 0x0

    :try_start_0
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct table size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    move-object v6, v5

    :goto_0
    return-object v6

    :cond_2
    :try_start_1
    const-string v8, "Event"

    invoke-virtual {p1, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Event;

    if-nez v1, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v9, "event Header is null -- returning null"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    move-object v6, v5

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUBSCRIBE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->event:Lgov/nist/javax/sip/header/Event;

    if-eqz v3, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct.fromTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thisToTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hisEvent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventHdr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Event;->match(Lgov/nist/javax/sip/header/Event;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_7

    move-object v5, v0

    :cond_7
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_8
    move-object v6, v5

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findSubscribeTransaction : returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    move-object v6, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findSubscribeTransaction : returning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_b
    throw v8
.end method

.method public findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 13

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v5, v0

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serverTx: looking for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " existing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    const-string v9, "z9hg4bk"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    move-object v6, v5

    :goto_0
    return-object v6

    :cond_2
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    move-object v5, v7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    move-object v6, v5

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clientTx: looking for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v5, v0

    const-string v9, "z9hg4bk"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    move-object v6, v5

    goto/16 :goto_0

    :cond_8
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_9

    move-object v5, v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    move-object v6, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTransaction: returning  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_b
    throw v9

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findTransaction: returning  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_d
    move-object v6, v5

    goto/16 :goto_0
.end method

.method public findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getActiveClientTransactionCount()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAddressResolver()Lgov/nist/core/net/AddressResolver;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    return-object v0
.end method

.method public getClientTransactionTableSize()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getDialogs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getDialogs(Ljavax/sip/DialogState;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sip/DialogState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
    .locals 6

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getToTag()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    return-object v4
.end method

.method public getMaxMessageSize()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    return v0
.end method

.method protected getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, [Lgov/nist/javax/sip/stack/MessageProcessor;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkLayer()Lgov/nist/core/net/NetworkLayer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    if-nez v0, :cond_0

    sget-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    goto :goto_0
.end method

.method public getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    goto :goto_0
.end method

.method public getReceiveUdpBufferSize()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return v0
.end method

.method public getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
    .locals 11

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v4, :cond_1

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking for dialog "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/sip/Dialog;

    if-nez v6, :cond_4

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v6

    :cond_4
    return-object v6
.end method

.method public getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public getRouter()Ljavax/sip/address/Router;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0
.end method

.method public getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    goto :goto_0
.end method

.method public getSendUdpBufferSize()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return v0
.end method

.method public getServerLogger()Lgov/nist/core/ServerLogger;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    return-object v0
.end method

.method public getServerTransactionTableSize()I
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStackLogger()Lgov/nist/core/StackLogger;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    return-object v0
.end method

.method public getThreadAuditor()Lgov/nist/core/ThreadAuditor;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    return-object v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelClientTransactionChecked()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    return v0
.end method

.method public isEventForked(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEventForked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLogStackTraceOnMessageSend()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isNon2XXAckPassedToListener()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return v0
.end method

.method public isRemoteTagReassignmentAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    return v0
.end method

.method public isRfc2543Supported()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    return v0
.end method

.method public isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1

    iget-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    goto :goto_0
.end method

.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "z9hg4bk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v0

    :cond_3
    :goto_1
    return-object v6

    :cond_4
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    :cond_5
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newSIPServerRequest( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v7, p1, v0}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v6, v0

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x64

    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v7

    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "Exception occured sending TRYING"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .locals 10

    const/4 v6, 0x0

    const/16 v8, 0x10

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "z9hg4bk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_5

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "before processing"

    invoke-virtual {p2, p1, v6, v7, v8}, Lgov/nist/javax/sip/stack/MessageChannel;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v6, p1, p2}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v6

    :cond_4
    :goto_1
    return-object v6

    :cond_5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "before processing"

    invoke-virtual {v1, p1, v7, v8, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_a

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v7, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V

    :cond_7
    :goto_2
    if-eqz v0, :cond_4

    move-object v6, v1

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "returning null - serverResponseInterface is null!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v8, "Could not aquire semaphore !!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgov/nist/javax/sip/stack/IOHandler;->obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public printDialogTable()V
    .locals 3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog: dialog already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPendingTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected reInit()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Re-initializing !"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method public removeDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Silently removing dialog from table"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v2, "Removing tx from merge table "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePendingTx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 10

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing Transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    instance-of v7, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    const-string v7, "INVITE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REMOVED client tx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KEY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    move-object v0, v4

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v7, :cond_5

    new-instance v6, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    invoke-direct {v6, p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_5
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    move-object v7, p1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method protected removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 5

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing client Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing server Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    return-void
.end method

.method public setDeliverDialogTerminatedEventForNullDialog()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    return-void
.end method

.method protected setHostAddress(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/16 v2, 0x5b

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackInetAddress:Ljava/net/InetAddress;

    return-void

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLogRecordFactory(Lgov/nist/javax/sip/LogRecordFactory;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    return-void
.end method

.method public setLogStackTraceOnMessageSend(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    return-void
.end method

.method protected setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    return-void
.end method

.method public setNon2XXAckPassedToListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return-void
.end method

.method public setReceiveUdpBufferSize(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return-void
.end method

.method protected setRouter(Ljavax/sip/address/Router;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-void
.end method

.method public setSendUdpBufferSize(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return-void
.end method

.method public setSingleThreaded()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    return-void
.end method

.method public setStackLogger(Lgov/nist/core/StackLogger;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    return-void
.end method

.method public setStackName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-void
.end method

.method public stopStack()V
    .locals 4

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v3

    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_1
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/IOHandler;->closeAll()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v2, 0x3e8

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v2}, Lgov/nist/core/ServerLogger;->closeLogFile()V

    return-void

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
