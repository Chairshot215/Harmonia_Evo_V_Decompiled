.class public Lgov/nist/javax/sip/SipProviderImpl;
.super Ljava/lang/Object;
.source "SipProviderImpl.java"

# interfaces
.implements Ljavax/sip/SipProvider;
.implements Lgov/nist/javax/sip/SipProviderExt;
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# instance fields
.field private IN6_ADDR_ANY:Ljava/lang/String;

.field private IN_ADDR_ANY:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private automaticDialogSupportEnabled:Z

.field private dialogErrorsAutomaticallyHandled:Z

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

.field private port:I

.field private sipListener:Ljavax/sip/SipListener;

.field protected sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/SipStackImpl;->getEventScanner()Lgov/nist/javax/sip/EventScanner;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->incrementRefcount()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogErrorHandlingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eq v3, p0, :cond_0

    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Listening point assigned to another provider"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_4

    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Listening point already assigned for transport!"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_3
    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Provider already has different IP Address associated"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public addSipListener(Ljavax/sip/SipListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object p1, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add SipListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    return-void

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/util/TooManyListenersException;

    const-string v1, "Stack already has a listener. Only one listener per stack allowed"

    invoke-direct {v0, v1}, Ljava/util/TooManyListenersException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialog;

    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    :cond_0
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog TimeoutError occured on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent;

    invoke-direct {v0, p0, v2, v1}, Lgov/nist/javax/sip/DialogTimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transport param"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    return-object v0
.end method

.method public declared-synchronized getListeningPoints()[Ljavax/sip/ListeningPoint;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-array v0, v1, [Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNewCallId()Ljavax/sip/header/CallIdHeader;
    .locals 4

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/Utils;->generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "null request"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v17

    if-nez v17, :cond_1

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Stack is stopped"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    move-object/from16 v13, p1

    check-cast v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_2

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Transaction already assigned to request"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ACK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot create client transaction for  ACK"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    if-nez v17, :cond_4

    const-string v17, "udp"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->setHeader(Ljavax/sip/header/Header;)V

    :cond_4
    :try_start_0
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    const-string v18, "z9hG4bK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v17

    if-eqz v17, :cond_5

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Transaction already exists!"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17

    :catch_0
    move-exception v7

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "CANCEL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v17, v11

    check-cast v17, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v11

    check-cast v17, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v18

    check-cast v18, Lgov/nist/javax/sip/stack/SIPDialog;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object v11

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v18

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not find existing transaction for "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v17, p1

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " creating a new one "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_8
    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v8

    if-nez v8, :cond_9

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot resolve next hop -- transaction unavailable"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v7

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cannot resolve next hop -- transaction unavailable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_9
    invoke-interface {v8}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v17

    sget-object v18, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    :cond_a
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v17

    const-string v18, "z9hG4bK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_d

    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    :cond_e
    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1, v8}, Lgov/nist/javax/sip/SipStackImpl;->createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-nez v4, :cond_f

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Cound not create tx"

    invoke-direct/range {v17 .. v18}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_2
    move-exception v7

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Could not resolve next hop or listening point unavailable! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_f
    :try_start_3
    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setNextHop(Ljavax/sip/address/Hop;)V

    invoke-virtual {v4, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    if-eqz v5, :cond_11

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :cond_10
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    move-object v11, v4

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v12

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v12, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_3
    move-exception v7

    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Unexpected Exception FIXME! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_12
    if-eqz v5, :cond_10

    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    new-instance v17, Ljavax/sip/TransactionUnavailableException;

    const-string v18, "Unexpected Exception FIXME! "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Null transaction!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Stack is stopped."

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, " Error - AUTOMATIC_DIALOG_SUPPORT is on"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljavax/sip/SipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dialog cannot be created for this method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const/4 v0, 0x0

    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/stack/SIPTransaction;

    instance-of v8, p1, Ljavax/sip/ServerTransaction;

    if-eqz v8, :cond_7

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_4

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Cannot set dialog after response has been sent"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {v6, v0, v11}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7, v5}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    :cond_5
    :goto_1
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    return-object v0

    :cond_6
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Dialog already exists!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v6}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    invoke-virtual {v4, v0, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Cannot call this method after response is received!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Stack is stopped"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v7, 0x0

    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    :try_start_0
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Creating server transaction for ACK -- makes no sense!"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Cannot create Server transaction for ACK "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v4

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_2
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NOTIFY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v10, v6, v9}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v9, v9, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    if-nez v9, :cond_3

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Cannot find matching Subscription (and gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY not set)"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->acquireSem()Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available -- could not acquire stack lock"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "server transaction already exists!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    throw v9

    :cond_5
    :try_start_2
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    if-nez v7, :cond_6

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    :cond_8
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "INVITE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7, v6}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    :cond_9
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    :goto_1
    return-object v8

    :catch_1
    move-exception v4

    :try_start_5
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Error sending provisional response"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    if-eqz v7, :cond_c

    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_c
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    if-nez v7, :cond_d

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction not available!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_d
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    :try_start_6
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v9, 0x1

    :try_start_7
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Could not send back provisional response!"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    if-eqz v7, :cond_10

    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_10
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v7, v0

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-nez v9, :cond_11

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    :cond_11
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_12
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    goto/16 :goto_1

    :cond_13
    :try_start_8
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMessageChannel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/MessageChannel;

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v5}, Lgov/nist/javax/sip/SipStackImpl;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v7

    if-nez v7, :cond_14

    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    const-string v10, "Transaction unavailable -- too many servrer transactions"

    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_14
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_15
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    move-object v8, v7

    goto/16 :goto_1
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public getSipStack()Ljavax/sip/SipStack;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    return-object v0
.end method

.method public handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 5

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTransaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "this.sipListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sipEvent.source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    instance-of v2, p1, Ljavax/sip/RequestEvent;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Ljavax/sip/RequestEvent;

    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_1
    new-instance v1, Lgov/nist/javax/sip/EventWrapper;

    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/EventWrapper;-><init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v2, v2, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->addEvent(Lgov/nist/javax/sip/EventWrapper;)V

    :goto_1
    return-void

    :cond_2
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljavax/sip/ResponseEvent;

    invoke-virtual {v2}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V

    goto :goto_1
.end method

.method public isAutomaticDialogSupportEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    return v0
.end method

.method public isDialogErrorsAutomaticallyHandled()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return v0
.end method

.method public declared-synchronized removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->inUse()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "Object is in use"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListeningPoints()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public removeSipListener(Ljavax/sip/SipListener;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iput-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object v4, v3, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    :cond_3
    return-void
.end method

.method public sendRequest(Ljavax/sip/message/Request;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Stack is stopped."

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ACK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dialog exists -- you may want to use Dialog.sendAck() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v8

    invoke-interface {v8, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "could not determine next hop!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Invalid SipRequest -- no via header!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    :cond_5
    const/4 v5, 0x0

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10, v4}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_8

    invoke-virtual {v5, v6, v4}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done sending "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to hop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    :try_start_1
    new-instance v8, Ljavax/sip/SipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create a message channel for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    invoke-interface {v8, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_9
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "IO Exception occured while Sending Request"

    invoke-direct {v8, v9, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done sending "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to hop "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    throw v8

    :catch_1
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done sending "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to hop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    const/4 v12, -0x1

    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Stack is stopped"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "No via header in response!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v10

    sget-object v11, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v10, v11, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Transaction exists -- cannot send response statelessly"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getReceived()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v5

    if-ne v5, v12, :cond_4

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v5

    if-ne v5, v12, :cond_4

    const-string v10, "TLS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v5, 0x13c5

    :cond_4
    :goto_0
    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, "["

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v10

    new-instance v11, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v11, v2, v5, v8}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v11}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v3, :cond_7

    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "whoopsa daisy! no listening point found for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v10, Ljavax/sip/SipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    const/16 v5, 0x13c4

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-interface {v1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, v3, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    invoke-virtual {v10, v11, v12, v1}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public setAutomaticDialogSupportEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    :cond_0
    return-void
.end method

.method public setDialogErrorsAutomaticallyHandled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return-void
.end method

.method public declared-synchronized setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null listening point"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected stop()V
    .locals 4

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Exiting provider"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->removeSipProvider()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v2}, Lgov/nist/javax/sip/EventScanner;->stop()V

    return-void
.end method

.method public transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 10

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TransportError occured on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    const/4 v2, 0x0

    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_2

    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    :goto_0
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v3

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    :cond_3
    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    const/4 v2, 0x0

    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_5

    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    :goto_2
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v3

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    :cond_6
    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljavax/sip/Transaction;

    invoke-interface {v6}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v7, "Unexpected event !"

    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    invoke-static {v7, v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    :cond_8
    sget-object v4, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    const/4 v2, 0x0

    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v7, :cond_9

    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    :goto_3
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    goto :goto_3
.end method
